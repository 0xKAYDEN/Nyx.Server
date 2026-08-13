using System;
using System.Data;
using System.Text;
using Npgsql;

namespace Nyx.Server.Database
{
    /// <summary>
    /// Database reader for PostgreSQL with backward compatibility.
    /// Replaces the old MySQL reader implementation.
    /// </summary>
    public class MySqlReader : IDisposable
    {
        private DataTable _dataTable;
        private DataRow _datarow;
        private int _row;

        public MySqlReader(NyxSqlCommand command)
        {
            if (command.Type == MySqlCommandType.SELECT)
            {
                _dataTable = new DataTable();
                _row = 0;
                
                // Use the backward-compatible MySqlConnection property which returns NpgsqlConnection
                using (var conn = DataHolder.MySqlConnection)
                {
                    conn.Open();
                    using (var cmd = new NpgsqlCommand(command.Command, conn))
                    using (var adapter = new NpgsqlDataAdapter(cmd))
                    {
                        adapter.Fill(_dataTable);
                    }
                }
                
                ((IDisposable)command).Dispose();
            }
        }

        void IDisposable.Dispose()
        {
            if (_dataTable != null)
                _dataTable.Dispose();
        }

        public bool Read()
        {
            if (_dataTable == null) return false;
            if (_dataTable.Rows.Count > _row)
            {
                _datarow = _dataTable.Rows[_row];
                _row++;
                return true;
            }
            _row++;
            return false;
        }

        public void Dispose()
        {
        }

        public void Close()
        {
        }

        public int NumberOfRows
        {
            get
            {
                if (_dataTable == null) return 0;
                return _dataTable.Rows.Count;
            }
        }

        public sbyte ReadSByte(string columnName)
        {
            if (_datarow == null || _datarow.IsNull(columnName)) return default(sbyte);
            sbyte result = 0;
            sbyte.TryParse(_datarow[columnName].ToString(), out result);
            return result;
        }

        public byte ReadByte(string columnName)
        {
            if (_datarow == null || _datarow.IsNull(columnName)) return default(byte);
            byte result = 0;
            byte.TryParse(_datarow[columnName].ToString(), out result);
            return result;
        }

        public short ReadInt16(string columnName)
        {
            if (_datarow == null || _datarow.IsNull(columnName)) return default(short);
            short result = 0;
            short.TryParse(_datarow[columnName].ToString(), out result);
            return result;
        }

        public ushort ReadUInt16(string columnName)
        {
            if (_datarow == null || _datarow.IsNull(columnName)) return default(ushort);
            ushort result = 0;
            ushort.TryParse(_datarow[columnName].ToString(), out result);
            return result;
        }

        public int ReadInt32(string columnName)
        {
            if (_datarow == null || _datarow.IsNull(columnName)) return default(int);
            int result = 0;
            int.TryParse(_datarow[columnName].ToString(), out result);
            return result;
        }

        public uint ReadUInt32(string columnName)
        {
            if (_datarow == null || _datarow.IsNull(columnName)) return default(uint);
            uint result = 0;
            uint.TryParse(_datarow[columnName].ToString(), out result);
            return result;
        }

        public long ReadInt64(string columnName)
        {
            if (_datarow == null || _datarow.IsNull(columnName)) return default(long);
            long result = 0;
            long.TryParse(_datarow[columnName].ToString(), out result);
            return result;
        }

        public ulong ReadUInt64(string columnName)
        {
            if (_datarow == null || _datarow.IsNull(columnName)) return default(ulong);
            ulong result = 0;
            ulong.TryParse(_datarow[columnName].ToString(), out result);
            return result;
        }

        public ulong ReadUInt128(string columnName)
        {
            if (_datarow == null || _datarow.IsNull(columnName)) return default(ulong);
            ulong result = 0;
            ulong.TryParse(_datarow[columnName].ToString(), out result);
            return result;
        }

        public string ReadString(string columnName)
        {
            if (_datarow == null || _datarow.IsNull(columnName)) return "";
            string data = _datarow[columnName].ToString();
            return data;
        }

        public bool ReadBoolean(string columnName)
        {
            if (_datarow == null || _datarow.IsNull(columnName)) return false;
            bool result = false;
            string str = _datarow[columnName].ToString();
            if (str == "") return false;
            if (str[0] == '1') return true;
            if (str[0] == '0') return false;
            bool.TryParse(str, out result);
            return result;
        }

        public byte[] ReadBlob(string columnName)
        {
            if (_datarow == null || _datarow.IsNull(columnName)) return new byte[0];
            return (byte[])_datarow[columnName];
        }
    }
}
