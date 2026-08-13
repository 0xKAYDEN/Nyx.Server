using Nyx.Server.Database.PostgreSQL;
using Nyx.Server.Scripts;
using Serilog;
using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using Dapper;

namespace Nyx.Server.Database
{
    /// <summary>
    /// Account table operations - now uses PostgreSQL via Dapper.
    /// </summary>
    public sealed class AccountTable
    {
        private static ILogger logger = Log.ForContext<AccountTable>();
        private static AccountRepository? _repository;
        
        private static AccountRepository Repository => _repository ??= new AccountRepository(DataHolder.Factory);
        
        public enum AccountState : byte
        {
            Player = 0,
            Banned = 1,
            Cheated = 3,
            GameMaster = 4
        }

        public string Username { get; set; }
        public string Password { get; set; }
        public string IP { get; set; }
        public string MacAddress { get; set; }
        public AccountState State { get; set; }
        public uint EntityID { get; set; }
        public int RandomKey { get; private set; }
        public bool Exists { get; private set; }

        public AccountTable(string username)
        {
            if (string.IsNullOrWhiteSpace(username))
                throw new ArgumentNullException(nameof(username));

            Username = username;
            Load();
        }

        private void Load()
        {
            try
            {
                var account = Repository.GetByUsernameAsync(Username).GetAwaiter().GetResult();
                if (account != null)
                {
                    Exists = true;
                    Password = account.Password;
                    IP = account.Ip ?? string.Empty;
                    MacAddress = account.MacAddress ?? string.Empty;
                    EntityID = account.EntityId ?? 0;
                    State = (AccountState)account.State;
                }
                else
                {
                    Exists = false;
                }
                logger.Information("Account Information : Username : '{user}' , Password : '{pass}', State : '{state}' " ,Username, Password, State);
            }
            catch (Exception ex)
            {
                Log.Error(ex, "Failed to load account for {Username}", Username);
                Exists = false;
            }
        }

        public uint GenerateKey(int? randomKey = null)
        {
            RandomKey = randomKey ?? Kernel.Random.Next(11, 253) % 100 + 1;

            using var sha = SHA256.Create();
            var input = $"{Username}:{Password}:{RandomKey}";
            var hash = sha.ComputeHash(Encoding.UTF8.GetBytes(input));
            return BitConverter.ToUInt32(hash, 0);
        }

        public bool MatchKey(uint key) => key == GenerateKey(RandomKey);

        public void Save(Client.GameClient client)
        {
            if (client == null) return;

            try
            {
                var account = new AccountRecord
                {
                    Username = Username,
                    Ip = client.IP,
                    EntityId = EntityID,
                    MacAddress = client.Account.MacAddress,
                    UpdatedAt = DateTime.UtcNow
                };
                
                _ = Repository.UpdateAsync(account);
            }
            catch (Exception ex)
            {
                Log.Error(ex, "Failed to save account for {Username}", Username);
            }
        }

        public void Insert()
        {
            try
            {
                var account = new AccountRecord
                {
                    Username = Username,
                    Password = Password,
                    Ip = IP,
                    MacAddress = MacAddress,
                    State = (int)State,
                    CreatedAt = DateTime.UtcNow,
                    UpdatedAt = DateTime.UtcNow
                };
                
                _ = Repository.CreateAsync(account);
                Exists = true;
            }
            catch (Exception ex)
            {
                Log.Error(ex, "Failed to insert account for {Username}", Username);
            }
        }

        public void Cheat()
        {
            if (Exists)
            {
                State = AccountState.Cheated;
                SaveState();
            }
            else
            {
                Insert();
                State = AccountState.Cheated;
                SaveState();
            }
        }

        public void SaveState()
        {
            try
            {
                using var conn = DataHolder.GetConnection();
                conn.Open();
                conn.Execute("UPDATE accounts SET State= @State WHERE LOWER(Username)=LOWER(@Username)", 
                    new { State = (int)State, Username });
            }
            catch (Exception ex)
            {
                Log.Error(ex, "Failed to save state for {Username}", Username);
            }
        }
    }
}
