using Nyx.Server.Database.PostgreSQL;
using Nyx.Server.Scripts;
using Nyx.Shared.Auth;
using Serilog;
using System;
using System.IO;
using System.Threading.Tasks;
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

        /// <summary>
        /// Use <see cref="CreateAsync"/>. The constructor no longer performs I/O.
        /// </summary>
        /// <remarks>
        /// This used to call a blocking <c>Load()</c>, so simply constructing an AccountTable made
        /// a synchronous database round-trip. The single call site is the authentication packet
        /// handler, which runs on the auth session's packet-processing loop -- so every login
        /// blocked that loop, and any thread-pool thread it happened to be running on, for the
        /// duration of a database query. A constructor cannot be awaited, hence the async factory.
        /// </remarks>
        private AccountTable(string username)
        {
            Username = username;
        }

        /// <summary>
        /// Loads an account by username without blocking the calling thread.
        /// </summary>
        /// <returns>
        /// An instance whose <see cref="Exists"/> reports whether the account was found. Lookup
        /// failures are reported the same way as a missing account, matching the previous
        /// behaviour: authentication must not distinguish "no such user" from "database error".
        /// </returns>
        public static async Task<AccountTable> CreateAsync(string username)
        {
            if (string.IsNullOrWhiteSpace(username))
                throw new ArgumentNullException(nameof(username));

            var table = new AccountTable(username);
            await table.LoadAsync().ConfigureAwait(false);
            return table;
        }

        /// <summary>
        /// Creates an account object that is not backed by a database row and performs no I/O.
        /// </summary>
        /// <remarks>
        /// Used by synthetic, non-authenticated clients (booth/bot placeholders) that need an
        /// <see cref="AccountTable"/> only as a carrier for <see cref="EntityID"/>. Previously
        /// those call sites passed <c>null</c> to the public constructor, which threw
        /// <see cref="ArgumentNullException"/> before it ever reached the database -- making the
        /// booth loader dead code that could only fail. Making the intent explicit means the
        /// authenticated path can keep its non-empty username guard.
        /// </remarks>
        public static AccountTable CreateDetached(string? username = null)
            => new AccountTable(username ?? string.Empty) { Exists = false };

        /// <summary>
        /// Reconstructs an account carrier from a one-shot auth ticket published by Nyx.Auth.
        /// No database I/O — the ticket already carries every field the login path needs.
        /// </summary>
        public static AccountTable FromTicket(AuthTicket ticket)
        {
            ArgumentNullException.ThrowIfNull(ticket);

            return new AccountTable(ticket.Username)
            {
                Exists = true,
                Password = ticket.Password ?? string.Empty,
                EntityID = ticket.EntityId,
                State = (AccountState)ticket.State,
                MacAddress = ticket.MacAddress ?? string.Empty,
                IP = ticket.Ip ?? string.Empty,
                RandomKey = ticket.RandomKey
            };
        }

        private async Task LoadAsync()
        {
            try
            {
                var account = await Repository.GetByUsernameAsync(Username).ConfigureAwait(false);
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
            RandomKey = randomKey ?? AuthTokenGenerator.NextRandomKey();
            return AuthTokenGenerator.Generate(Username, Password, RandomKey);
        }

        public bool MatchKey(uint key) => AuthTokenGenerator.Matches(key, Username, Password, RandomKey);

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
