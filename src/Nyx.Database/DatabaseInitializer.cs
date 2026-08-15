using MySqlConnector;
using Nyx.Database.Configuration;
using Nyx.Database.Database;
using Nyx.Database.Mapping;
using Nyx.Database.Queries;

public class DatabaseInitializer
{
    public static async Task InitializeAsync()
    {
        var ini = new CIni("appsettings.ini");

        var options = new DatabaseOptions
        {
            Server = ini.GetString("Database", "Server", "127.0.0.1"),
            Port = ini.GetUInt32("Database", "Port", 3306),
            Database = ini.GetString("Database", "Database"),
            Username = ini.GetString("Database", "Username"),
            Password = ini.GetString("Database", "Password"),
            Charset = ini.GetString("Database", "Charset", "latin1"),
            ConnectTimeout = ini.GetUInt32("Database", "ConnectTimeout", 5),
            CommandTimeout = ini.GetUInt32("Database", "CommandTimeout", 30),
            Keepalive = ini.GetUInt32("Database", "Keepalive", 60),
            Pooling = ini.GetBoolean("Database", "Pooling", true),
            MinimumPoolSize = ini.GetUInt32("Database", "MinimumPoolSize", 1),
            MaximumPoolSize = ini.GetUInt32("Database", "MaximumPoolSize", 300),
            ConnectionIdleTimeout = ini.GetUInt32("Database", "ConnectionIdleTimeout", 60)
        };

        var db = CoreDatabase.Instance;
        db.Initialize(options);

        Console.WriteLine($"Ping: {await db.Connection.PingAsync()}");
        Console.WriteLine($"MySQL: {await db.Connection.GetServerVersionAsync()}");

        //// Manual query + manual ordinal mapping.
        //await using (var result = await db.Query.ReaderAsync(
        //    AccountQueries.SelectByUsername,
        //    default,
        //    new MySqlParameter("@username", "test")))
        //{
        //    if (await result.NextAsync())
        //    {
        //        var account = AccountMapper.Read(result);
        //        Console.WriteLine(
        //            $"Account {account.AccountId}: {account.Username}, State={account.State}");
        //    }
        //    else
        //    {
        //        Console.WriteLine("Account not found.");
        //    }
        //}

        //var affected = await db.Query.ExecuteAsync(
        //    AccountQueries.UpdateState,
        //    default,
        //    new MySqlParameter("@state", 2),
        //    new MySqlParameter("@accountId", 1UL));

        //Console.WriteLine($"Updated rows: {affected}");

        //await using (var transaction = await db.Context.BeginTransactionAsync())
        //{
        //    await transaction.ExecuteAsync(
        //        AccountQueries.UpdateState,
        //        default,
        //        new MySqlParameter("@state", 2),
        //        new MySqlParameter("@accountId", 1UL));

        //    await transaction.CommitAsync();
        //}

        //Console.WriteLine("Done.");

    }
}


