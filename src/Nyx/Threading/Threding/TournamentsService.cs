using Nyx.Server.Client;
using Nyx.Server.Game;
using Nyx.Threading.Enums;
using Serilog;

namespace Nyx.Server.Threading
{
    public class TournamentsService : ThreadingTimerHostedService
    {
        private readonly IServiceProvider _serviceProvider;
        private readonly List<GameClient> _onlineClients = new();
        private DateTime _lastPlunderWarStartCheck = DateTime.MinValue;
        private DateTime _lastPlunderWarEndCheck = DateTime.MinValue;
        private DateTime _lastCTFStartCheck = DateTime.MinValue;
        private DateTime _lastTeamPKCheck = DateTime.MinValue;
        private DateTime _lastSkillTeamPkCheck = DateTime.MinValue;

        public TournamentsService(IServiceProvider serviceProvider)
        {
            _serviceProvider = serviceProvider;
        }

        protected override RepositoryCategory Category => RepositoryCategory.Tournament;
        protected override int IntervalMilliseconds => 1_000;

        protected override void OnStarting() => Log.Information("Tournament Service started");
        protected override void OnStopping() => Log.Information("Tournament Service stopped");

        protected override void OnTimerTick(int elapsedMilliseconds) => _ = CheckTournamentTimesAsync();
        private async Task CheckTournamentTimesAsync()
        {
            var now = DateTime.Now;

            // Check PlunderWar start (6:00 PM)
            await CheckPlunderWarStart(now);

            // Check PlunderWar end (8:00 PM)
            await CheckPlunderWarEnd(now);

            // Check CaptureTheFlag start (Saturday 8:00 PM)
            await CheckCaptureTheFlagStart(now);

            // Check CaptureTheFlag ongoing events
            await CheckCaptureTheFlagOngoing(now);

            // Spawn CTF flags if CTF is active
            await SpawnCTFFlags();

            // Check TeamPK start (Saturday 6:55 PM)
            await CheckTeamPKStart(now);

            // Check SkillTeamPk start (Wednesday 7:40 PM)
            await CheckSkillTeamPkStart(now);

        }

        #region PlunderWar Methods
        private async Task CheckPlunderWarStart(DateTime now)
        {
            if (now.Hour == 18 && now.Minute == 0 && now.Second == 0)
            {
                if ((now - _lastPlunderWarStartCheck).TotalSeconds >= 1)
                {
                    _lastPlunderWarStartCheck = now;
                    await StartPlunderWarAsync();
                }
            }
        }
        private async Task CheckPlunderWarEnd(DateTime now)
        {
            if (now.Hour == 20 && now.Minute == 0 && now.Second == 0)
            {
                if ((now - _lastPlunderWarEndCheck).TotalSeconds >= 1)
                {
                    _lastPlunderWarEndCheck = now;
                    await EndPlunderWarAsync();
                }
            }
        }
        private async Task StartPlunderWarAsync()
        {
            try
            {
                Log.Information("Starting PlunderWar tournament at {Time}", DateTime.Now);
                Kernel.PlunderWar = true;
                Log.Information("PlunderWar started successfully");
            }
            catch (Exception ex)
            {
                Log.Error(ex, "Error starting PlunderWar tournament");
            }
        }

        private async Task EndPlunderWarAsync()
        {
            try
            {
                Log.Information("Ending PlunderWar tournament at {Time}", DateTime.Now);
                Kernel.PlunderWar = false;
                Network.GamePackets.Union.UnionClass.UpGradeUnion();
                Log.Information("PlunderWar ended successfully, union upgraded");
            }
            catch (Exception ex)
            {
                Log.Error(ex, "Error ending PlunderWar tournament");
            }
        }
        #endregion

        #region CaptureTheFlag Methods
        private async Task CheckCaptureTheFlagStart(DateTime now)
        {
            if (now.DayOfWeek == DayOfWeek.Saturday &&
                now.Hour == 20 && now.Minute == 0 && now.Second == 0)
            {
                if ((now - _lastCTFStartCheck).TotalSeconds >= 1)
                {
                    _lastCTFStartCheck = now;
                    await StartCaptureTheFlagAsync();
                }
            }
        }

        private async Task CheckCaptureTheFlagOngoing(DateTime now)
        {
            if (CaptureTheFlag.IsWar)
            {
                try
                {
                    // Send CTF updates
                    Program.World.CTF.SendUpdates();

                    // Check if CTF should end (1 hour duration)
                    if (now >= CaptureTheFlag.StartTime.AddHours(1))
                    {
                        await EndCaptureTheFlagAsync();
                    }
                }
                catch (Exception ex)
                {
                    Log.Error(ex, "Error during CTF ongoing checks");
                }
            }
        }

        private async Task SpawnCTFFlags()
        {
            try
            {
                if (Program.World.CTF != null)
                {
                    Program.World.CTF.SpawnFlags();
                }
            }
            catch (Exception ex)
            {
                Log.Error(ex, "Error spawning CTF flags");
            }
        }

        private async Task StartCaptureTheFlagAsync()
        {
            try
            {
                if (!CaptureTheFlag.IsWar)
                {
                    Log.Information("Starting CaptureTheFlag tournament at {Time}", DateTime.Now);

                    CaptureTheFlag.IsWar = true;
                    CaptureTheFlag.StartTime = DateTime.Now;
                    CaptureTheFlag.ClearHistory();

                    // Reset all guilds and members
                    await ResetAllGuildsForCTF();

                    Log.Information("CaptureTheFlag started successfully");
                }
            }
            catch (Exception ex)
            {
                Log.Error(ex, "Error starting CaptureTheFlag tournament");
            }
        }

        private async Task ResetAllGuildsForCTF()
        {
            foreach (var guild in Kernel.Guilds.Values)
            {
                try
                {
                    // Reset guild CTF properties
                    guild.CTFFlagScore = 0;
                    guild.Points = 0;
                    guild.CTFdonationCPs = 0;
                    guild.CTFdonationSilver = 0;

                    // Calculate initial rank
                    guild.CalculateCTFRank(true);

                    // Reset all members in the guild
                    foreach (var member in guild.Members.Values)
                    {
                        member.Exploits = 0;
                        member.ExploitsRank = 0;
                        member.CTFCpsReward = 0;
                        member.CTFSilverReward = 0;
                    }

                    // Recalculate ranks after member reset
                    guild.CalculateCTFRank(false);
                }
                catch (Exception ex)
                {
                    Log.Error(ex, "Error resetting guild {GuildName} for CTF", guild.Name);
                }
            }
        }

        private async Task EndCaptureTheFlagAsync()
        {
            try
            {
                Log.Information("Ending CaptureTheFlag tournament at {Time}", DateTime.Now);
                CaptureTheFlag.IsWar = false;
                CaptureTheFlag.Close();
                Log.Information("CaptureTheFlag ended successfully");
            }
            catch (Exception ex)
            {
                Log.Error(ex, "Error ending CaptureTheFlag tournament");
            }
        }
        #endregion

        #region Team PK Methods
        private async Task CheckTeamPKStart(DateTime now)
        {
            // Saturday at 6:55:00 PM
            if (now.DayOfWeek == DayOfWeek.Saturday &&
                now.Hour == 18 && now.Minute == 55 && now.Second == 0)
            {
                if ((now - _lastTeamPKCheck).TotalSeconds >= 1)
                {
                    _lastTeamPKCheck = now;
                    await StartTeamPKInvitesAsync();
                }
            }
        }

        private async Task StartTeamPKInvitesAsync()
        {
            try
            {
                Log.Information("Sending Team PK invitations at {Time}", DateTime.Now);
                Program.CopyOnlineClients(_onlineClients);

                // Send invitations to all online players who are not in jail
                foreach (var client in _onlineClients)
                {
                    try
                    {
                        if (!client.Entity.InJail())
                        {
                            var alert = new Network.GamePackets.AutoInvite
                            {
                                StrResID = 10543,
                                Countdown = 60,
                                Action = 1
                            };

                            client.Entity.StrResID = 10543;
                            client.Send(alert.Encode());

                            Log.Debug("Team PK invitation sent to player: {PlayerName}", client.Entity.Name);
                        }
                    }
                    catch (Exception ex)
                    {
                        Log.Error(ex, "Error sending Team PK invite to player: {PlayerName}",client.Entity?.Name ?? "Unknown");
                    }
                }

                Log.Information("Team PK invitations sent successfully to all eligible players");
            }
            catch (Exception ex)
            {
                Log.Error(ex, "Error sending Team PK invitations");
            }
        }

        #endregion

        #region SkillTeamPk Methods
        private async Task CheckSkillTeamPkStart(DateTime now)
        {
            // Saturday at 6:55:00 PM
            if (now.DayOfWeek == DayOfWeek.Wednesday &&
                now.Hour == 19 && now.Minute == 40 && now.Second == 0)
            {
                if ((now - _lastSkillTeamPkCheck).TotalSeconds >= 1)
                {
                    _lastSkillTeamPkCheck = now;
                    await StartSkillTeamPkInvitesAsync();
                }
            }
        }

        private async Task StartSkillTeamPkInvitesAsync()
        {
            try
            {
                Log.Information("Sending Team PK invitations at {Time}", DateTime.Now);
                Program.CopyOnlineClients(_onlineClients);

                // Send invitations to all online players who are not in jail
                foreach (var client in _onlineClients)
                {
                    try
                    {
                        if (!client.Entity.InJail())
                        {
                            var alert = new Network.GamePackets.AutoInvite
                            {
                                StrResID = 10541,
                                Countdown = 60,
                                Action = 1
                            };

                            client.Entity.StrResID = 10541;
                            client.Send(alert.Encode());

                            Log.Debug("Team PK invitation sent to player: {PlayerName}", client.Entity.Name);
                        }
                    }
                    catch (Exception ex)
                    {
                        Log.Error(ex, "Error sending Team PK invite to player: {PlayerName}", client.Entity?.Name ?? "Unknown");
                    }
                }

                Log.Information("Team PK invitations sent successfully to all eligible players");
            }
            catch (Exception ex)
            {
                Log.Error(ex, "Error sending Team PK invitations");
            }
        }
        #endregion

    }
}
