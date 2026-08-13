using Nyx.Server.Database;
using Nyx.Server.Network.GamePackets;
using Nyx.Server.Network.GamePackets.Union;
using Nyx.Threading.Enums;
using Serilog;

namespace Nyx.Server.Threading
{
    public class WorldStateService : ThreadingTimerHostedService
    {
        protected override RepositoryCategory Category => RepositoryCategory.Database;
        protected override int IntervalMilliseconds => 120_000;

        protected override void OnStarting() =>
            Log.Information("World Save Service started. Auto-saving every {Interval}ms", IntervalMilliseconds);

        protected override void OnStopping() => Log.Information("World Save Service stopped");

        protected override void OnTimerTick(int elapsedMilliseconds) => _ = SaveWorldStateAsync();
        private async Task SaveWorldStateAsync()
        {
            Log.Information("Starting server save process...");
            try
            {
                using (var conn = Database.DataHolder.MySqlConnection)
                {
                    await conn.OpenAsync();
                    var onlineClients = Program.GetOnlineClientSnapshot(forceRefresh: true);
                    foreach (Client.GameClient client in onlineClients)
                    {
                        if (client.Entity.EntityFlag == Game.EntityFlag.Bot)
                            continue;
                        client.Account.Save(client);
                        Database.EntityTable.SaveEntity(client, conn);
                        Database.DailyQuestTable.Save(client);
                        Database.SkillTable.SaveProficiencies(client, conn);
                        Database.ActivenessTable.Save(client);
                        Database.ChiTable.Save(client);
                        Database.SkillTable.SaveSpells(client, conn);
                        Database.MailboxTable.Save(client);
                        Database.ArenaTable.SaveArenaStatistics(client.ArenaStatistic, client.CP, conn);
                        Database.TeamArenaTable.SaveArenaStatistics(client.TeamArenaStatistic, conn);
                    }
                }
                Nyx.Server.Database.JiangHu.SaveJiangHu();
                AuctionBase.Save();
                Database.Flowers.SaveFlowers();
                Database.InnerPowerTable.Save();
                Database.EntityVariableTable.Save(0, Program.Vars);
                using (NyxSqlCommand cmd = new NyxSqlCommand(MySqlCommandType.SELECT))
                {
                    cmd.Select("configuration");
                    using (MySqlReader r = new MySqlReader(cmd))
                    {
                        if (r.Read())
                        {
                            new NyxSqlCommand(MySqlCommandType.UPDATE).Update("configuration").Set("ServerKingdom", Kernel.ServerKingdom).Set("ItemUID", Network.GamePackets.ConquerItem.ItemUID.Now).Set("GuildID", Game.ConquerStructures.Society.Guild.GuildCounter.Now).Set("UnionID", Union.UnionCounter.Now).Execute();
                            if (r.ReadByte("LastDailySignReset") != DateTime.Now.Month) MsgSignIn.Reset();
                        }
                    }
                }
                using (var cmd = new NyxSqlCommand(MySqlCommandType.UPDATE).Update("configuration"))
                    cmd.Set("LastDailySignReset", DateTime.Now.Month).Execute();
            }
            catch (Exception e)
            {
                LoggingService.SystemError("Save", "Error during server save", e);
            }

            // Simulate save operation
            await Task.Delay(1000); // Simulate I/O delay
            //_gameWorld.LastSaveTime = DateTime.UtcNow;

            //Log.Information("World saved successfully at {Time}", _gameWorld.LastSaveTime);
        }

    }
}
