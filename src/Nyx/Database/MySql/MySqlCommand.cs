using Nyx.Server.Utilities;
using System;
using System.Collections.Generic;
using System.Text;
using Npgsql;

namespace Nyx.Server.Database
{
    /// <summary>
    /// SQL command builder for PostgreSQL with backward compatibility.
    /// Replaces the old MySQL command implementation.
    /// </summary>
    public class NyxSqlCommand : IDisposable
    {
        private MySqlCommandType _type;

        public MySqlCommandType Type
        {
            get { return _type; }
            set { _type = value; }
        }
        protected StringBuilder _command;

        public string Command
        {
            get { return _command.ToString(); }
            set { _command = new StringBuilder(value); }
        }

        private bool firstPart = true;

        private SafeDictionary<byte, string> insertFields;
        private SafeDictionary<byte, string> insertValues;
        private byte lastpair;

        public NyxSqlCommand(MySqlCommandType Type)
        {
            this.Type = Type;
            switch (Type)
            {
                case MySqlCommandType.SELECT:
                    {
                        _command = new StringBuilder("SELECT * FROM <R>");
                        break;
                    }
                case MySqlCommandType.C:
                    {
                        _command = new StringBuilder("DELETE FROM <R>");
                        break;
                    }
                case MySqlCommandType.UPDATE:
                    {
                        _command = new StringBuilder("UPDATE <R> SET ");
                        break;
                    }
                case MySqlCommandType.INSERT:
                    {
                        insertFields = new SafeDictionary<byte, string>();
                        insertValues = new SafeDictionary<byte, string>();
                        lastpair = 0;
                        _command = new StringBuilder("INSERT INTO <R> (<F>) VALUES (<V>)");
                        break;
                    }
                case MySqlCommandType.DELETE:
                    {
                        _command = new StringBuilder("DELETE FROM <R> WHERE <C> = <V>");
                        break;
                    }
                case MySqlCommandType.COUNT:
                    {
                        _command = new StringBuilder("SELECT count(<V>) FROM <R>");
                        break;
                    }
            }
        }

        private bool Comma()
        {
            if (firstPart)
            {
                firstPart = false;
                return false;
            }
            string command = _command.ToString();
            if (command[command.Length - 1] == ',' || command[command.Length - 2] == ',' || command[command.Length - 3] == ',')
                return false;
            return true;
        }

        #region Select
        public NyxSqlCommand Select(string table)
        {
            // PostgreSQL uses double quotes for identifiers instead of backticks
            _command = _command.Replace("<R>", "\"" + table + "\"");
            return this;
        }
        #endregion

        #region Count
        public NyxSqlCommand Count(string table)
        {
            _command = _command.Replace("<R>", "\"" + table + "\"");
            return this;
        }
        #endregion

        #region Delete
        public NyxSqlCommand Delete(string table, string column, string value)
        {
            _command = _command.Replace("<R>", "\"" + table + "\"");
            _command = _command.Replace("<C>", "\"" + column + "\"");
            _command = _command.Replace("<V>", "'" + value.PgEscape() + "'");
            return this;
        }
        public NyxSqlCommand C(string table)
        {
            _command = _command.Replace("<R>", "\"" + table + "\"");
            return this;
        }
        public NyxSqlCommand Delete(string table, string column, long value)
        {
            _command = _command.Replace("<R>", "\"" + table + "\"");
            _command = _command.Replace("<C>", "\"" + column + "\"");
            _command = _command.Replace("<V>", value.ToString());
            return this;
        }
        public NyxSqlCommand Delete(string table, string column, ulong value)
        {
            _command = _command.Replace("<R>", "\"" + table + "\"");
            _command = _command.Replace("<C>", "\"" + column + "\"");
            _command = _command.Replace("<V>", value.ToString());
            return this;
        }
        public NyxSqlCommand Delete(string table, string column, bool value)
        {
            _command = _command.Replace("<R>", "\"" + table + "\"");
            _command = _command.Replace("<C>", "\"" + column + "\"");
            _command = _command.Replace("<V>", (value ? "TRUE" : "FALSE"));
            return this;
        }

        #endregion

        #region Update
        public NyxSqlCommand Update(string table)
        {
            _command = _command.Replace("<R>", "\"" + table + "\"");
            return this;
        }
        public NyxSqlCommand Set(string column, long value)
        {
            if (Type == MySqlCommandType.UPDATE)
            {
                if (Comma())
                    _command = _command.Append(",\"" + column + "\" = " + value.ToString() + " ");
                else
                    _command = _command.Append("\"" + column + "\" = " + value.ToString() + " ");
            }
            return this;
        }
        public NyxSqlCommand Set(string column, ulong value)
        {
            if (Type == MySqlCommandType.UPDATE)
            {
                if (Comma())
                    _command = _command.Append(",\"" + column + "\" = " + value.ToString() + " ");
                else
                    _command = _command.Append("\"" + column + "\" = " + value.ToString() + " ");
            }
            return this;
        }
        public NyxSqlCommand Set(string column, string value)
        {
            if (Type == MySqlCommandType.UPDATE)
            {
                if (Comma())
                    _command = _command.Append(",\"" + column + "\" = '" + value.PgEscape() + "' ");
                else
                    _command = _command.Append("\"" + column + "\" = '" + value.PgEscape() + "' ");
            }
            return this;
        }
        public NyxSqlCommand Set(string column, bool value)
        {
            if (Type == MySqlCommandType.UPDATE)
            {
                if (Comma())
                    _command = _command.Append(",\"" + column + "\" = " + (value ? "TRUE" : "FALSE") + " ");
                else
                    _command = _command.Append("\"" + column + "\" = " + (value ? "TRUE" : "FALSE") + " ");
            }
            return this;
        }
        public NyxSqlCommand Set(string column, object value)
        {
            if (value is bool) Set(column, (bool)value);
            else Set(column, value.ToString());
            return this;
        }
        #endregion

        #region Insert
        public NyxSqlCommand Insert(string table)
        {
            _command = _command.Replace("<R>", "\"" + table + "\"");
            return this;
        }
        public NyxSqlCommand Insert(string field, long value)
        {
            insertFields.Add(lastpair, field);
            insertValues.Add(lastpair, value.ToString());
            lastpair++;
            return this;
        }
        public NyxSqlCommand Insert(string field, ulong value)
        {
            insertFields.Add(lastpair, field);
            insertValues.Add(lastpair, value.ToString());
            lastpair++;
            return this;
        }
        public NyxSqlCommand Insert(string field, bool value)
        {
            insertFields.Add(lastpair, field);
            insertValues.Add(lastpair, (value ? "TRUE" : "FALSE"));
            lastpair++;
            return this;
        }
        public NyxSqlCommand Insert(string field, string value)
        {
            var array = value.ToCharArray();
            string str = Encoding.Default.GetString(Encoding.Unicode.GetBytes(array, 0, array.Length));
            insertFields.Add(lastpair, field);
            insertValues.Add(lastpair, value.PgEscape());
            lastpair++;
            return this;
        }
        #endregion

        #region Where
        public NyxSqlCommand Where(string column, long value)
        {
            _command = _command.Append("WHERE \"" + column + "\" = " + value);
            return this;
        }
        public NyxSqlCommand Where(string column, long value, bool greater)
        {
            if (greater)
                _command = _command.Append("WHERE \"" + column + "\" > " + value);
            else
                _command = _command.Append("WHERE \"" + column + "\" < " + value);
            return this;
        }
        public NyxSqlCommand Where(string column, ulong value)
        {
            _command = _command.Append("WHERE \"" + column + "\" = " + value);
            return this;
        }
        public NyxSqlCommand Where(string column, string value)
        {
            _command = _command.Append("WHERE \"" + column + "\" = '" + value.PgEscape() + "'");
            return this;
        }
        public NyxSqlCommand Where(string column, bool value)
        {
            _command = _command.Append("WHERE \"" + column + "\" = " + (value ? "TRUE" : "FALSE"));
            return this;
        }
        #endregion

        #region And
        public NyxSqlCommand And(string column, long value)
        {
            _command = _command.Append(" AND \"" + column + "\" = " + value);
            return this;
        }
        public NyxSqlCommand And(string column, long value, bool greater)
        {
            if (greater)
                _command = _command.Append(" AND \"" + column + "\" > " + value);
            else
                _command = _command.Append(" AND \"" + column + "\" < " + value);
            return this;
        }
        public NyxSqlCommand And(string column, ulong value)
        {
            _command = _command.Append(" AND \"" + column + "\" = " + value);
            return this;
        }
        public NyxSqlCommand And(string column, string value)
        {
            _command = _command.Append(" AND \"" + column + "\" = '" + value.PgEscape() + "'");
            return this;
        }
        public NyxSqlCommand And(string column, bool value)
        {
            _command = _command.Append(" AND \"" + column + "\" = " + (value ? "TRUE" : "FALSE"));
            return this;
        }
        #endregion

        #region Or
        public NyxSqlCommand Or(string column, long value)
        {
            _command = _command.Append(" OR \"" + column + "\" = " + value);
            return this;
        }
        public NyxSqlCommand Or(string column, ulong value)
        {
            _command = _command.Append(" OR \"" + column + "\" = " + value);
            return this;
        }
        public NyxSqlCommand Or(string column, string value)
        {
            _command = _command.Append(" OR \"" + column + "\" = '" + value.PgEscape() + "'");
            return this;
        }
        public NyxSqlCommand Or(string column, bool value)
        {
            _command = _command.Append(" OR \"" + column + "\" = " + (value ? "TRUE" : "FALSE"));
            return this;
        }
        #endregion

        #region Order
        public NyxSqlCommand Order(string column)
        {
            _command = _command.Append("ORDER BY " + column + "");
            return this;
        }
        #endregion

        public int Execute()
        {
            // Use the backward-compatible MySqlConnection property which returns NpgsqlConnection
            using (var conn = DataHolder.MySqlConnection)
            {
                conn.Open();
                return Execute(conn);
            }
        }
        
        public int Execute(NpgsqlConnection conn)
        {
            if (Type == MySqlCommandType.INSERT)
            {
                string fields = "";
                string values = "";
                byte x;
                for (x = 0; x < lastpair; x++)
                {
                    bool comma = (x + 1) == lastpair ? false : true;
                    #region Fields
                    if (comma)
                        fields += "\"" + insertFields[x] + "\",";
                    else
                        fields += "\"" + insertFields[x] + "\"";
                    #endregion
                    #region Values
                    if (comma)
                        values += "'" + insertValues[x] + "'" + ",";
                    else
                        values += "'" + insertValues[x] + "'";
                    #endregion
                }
                _command = _command.Replace("<F>", fields);
                _command = _command.Replace("<V>", values);
            }

            using (var cmd = new NpgsqlCommand(Command, conn))
            {
                return cmd.ExecuteNonQuery();
            }
        }

        public MySqlReader CreateReader()
        {
            return new MySqlReader(this);
        }

        void IDisposable.Dispose()
        {
            if (insertValues != null)
            {
                insertValues.Clear();
                insertFields.Clear();
            }
            _command = null;
        }
    }
    
    public enum MySqlCommandType
    {
        DELETE, INSERT, SELECT, UPDATE, C, COUNT
    }
}
