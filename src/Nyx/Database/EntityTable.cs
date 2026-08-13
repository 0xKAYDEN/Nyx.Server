using Nyx.Server.Game;
using Nyx.Server.Network;
using Nyx.Server.Network.GamePackets;
using Nyx.Server.Utilities;
using Nyx.Server.Database.PostgreSQL;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Dapper;

namespace Nyx.Server.Database
{
    /// <summary>
    /// Entity table operations - now uses PostgreSQL via Dapper.
    /// Column names match original MySQL schema (quoted identifiers).
    /// </summary>
    public static class EntityTable
    {
        private static EntityRepository? _repository;
        
        /// <summary>
        /// Gets the entity repository.
        /// </summary>
        private static EntityRepository Repository => _repository ??= new EntityRepository(DataHolder.Factory);
        
        /// <summary>
        /// Loads an entity from the database.
        /// </summary>
        public static bool LoadEntity(Client.GameClient client)
        {
            try
            {
                var entity = Repository.GetByUidAsync(client.Account.EntityID).GetAwaiter().GetResult();
                if (entity == null)
                    return false;
                
                Game.IJiangHu hu;
                client.Entity = new Game.Entity(Game.EntityFlag.Player, false);
                client.Entity.Name = entity.Name;
                client.Entity.SwordSoul = entity.SwordSoul != 0;
                client.Entity.BansheeSpirit = entity.BansheeSpirit != 0;
                client.Entity.FirstCredit = (byte)entity.FirstCredit;
                client.Entity.QuizPoints = (uint)entity.QuizPoints;
                client.Entity.Nullifications = (ushort)entity.Nullifications;
                client.Entity.DidBrightFortune = entity.DidBrightFortune != 0;
                client.Entity.StarterPackLevel = (byte)entity.StarterPackLevel;
                client.WarehousePW = (uint)entity.WarehousePW;
                client.Entity.AnsweredKingdomQuiz = entity.AnsweredKingdomQuiz != 0;
                client.Entity.Spouse = entity.Spouse;
                client.Entity.DailySignVIPChances = (byte)entity.DailySignVIPChances;
                client.Entity.Owner = client;
                client.Entity.GLCTF = (byte)entity.GLCTF;
                client.Entity.NormalGems = (uint)entity.NormalGems;
                client.MoneySave = (uint)entity.MoneySave;
                
                #region Merchant
                if (entity.Merchant == 0)
                    client.Entity.Merchant = 0;
                if (entity.Merchant == 1)
                {
                    client.Entity.Merchant = 1;
                    client.Entity.Update(Update.Merchant, 255, false);
                }
                if (entity.Merchant > 1)
                {
                    client.Entity.Merchant = (ulong)entity.Merchant;
                    if ((ulong)DateTime.Now.DayOfYear >= client.Entity.Merchant + 5)
                    {
                        client.Send(new Data(true)
                        {
                            UID = client.Entity.UID,
                            ID = Data.OpenCustom,
                            dwParam = Data.CustomCommands.MerchantDone
                        });
                        client.Entity.Merchant = 1;
                        client.Entity.Update(Update.Merchant, 255, false);
                    }
                    else
                    {
                        client.Send(new Data(true)
                        {
                            UID = client.Entity.UID,
                            ID = Data.OpenCustom,
                            dwParam = Data.CustomCommands.MerchantApply
                        });
                    }
                }
                #endregion
                
                client.Entity.Experience = (ulong)entity.Experience;
                client.Entity.Money = (uint)entity.Money;
                client.Entity.ConquerPoints = (uint)entity.ConquerPoints;
                client.Entity.BoundCps = (uint)entity.BoundCPs;
                client.Entity.EditNameTimes = (byte)entity.EditNameTimes;
                client.Entity.DailySignRewards = (byte)entity.DailySignRewards;
                
                if (entity.UnionID > 0)
                {
                    if (Kernel.Unions.TryGetValue((uint)entity.UnionID, out var union))
                    {
                        client.Union = union;
                        client.Offical = (uint)entity.Offical;
                        client.Harem = (uint)entity.Harem;
                        client.Guards = (uint)entity.Guards;
                        client.UnionExploits = (uint)entity.UnionExploits;
                    }
                }
                
                client.Entity.UID = (uint)entity.Uid;
                client.Entity.MyAchievement = new Game.Achievement(client.Entity);
                client.Entity.MyAchievement.Load(entity.Achievement);
                client.Entity.Hitpoints = (uint)entity.Hitpoints;
                client.Entity.OnlineTraining = (uint)entity.OnlineTrainning;
                client.Entity.BlessedHunting = (uint)entity.HuntingExp;
                client.Entity.Body = (ushort)entity.Mesh;
                client.Entity.Face = (ushort)entity.Face;
                client.Entity.Strength = (ushort)entity.Strength;
                client.Entity.Titles = new ConcurrentDictionary<TitlePacket.Titles, DateTime>();
                client.Entity.MyTitle = (TitlePacket.Titles)entity.My_Title;
                client.Entity.Agility = (ushort)entity.Agility;
                client.Entity.ExtraInventory = (uint)entity.ExtraInventory;
                client.Entity.Spirit = (ushort)entity.Spirit;
                client.Entity.DailySignDays = new byte[31];
                var dailys = entity.DailySignedDays?.Split('#') ?? new string[0];
                if (dailys.Length >= 30)
                {
                    for (byte x = 0; x < client.Entity.DailySignDays.Length; x++)
                    {
                        if (x < dailys.Length && byte.TryParse(dailys[x], out byte day))
                            client.Entity.DailySignDays[x] = day;
                    }
                }
                client.Entity.Vitality = (ushort)entity.Vitality;
                client.Entity.Atributes = (ushort)entity.AttributePoints;
                client.ElitePKStats = new ElitePK.FighterStats(client.Entity.UID, client.Entity.Name, client.Entity.Mesh);
                client.Entity.SubClass = (byte)entity.SubClass;
                client.Entity.SubClassLevel = (byte)entity.SubClassLevel;
                client.Entity.SubClasses.Active = client.Entity.SubClass;
                client.Entity.SubClassesActive = client.Entity.SubClass;
                client.Entity.SubClasses.StudyPoints = (ushort)entity.StudyPoints;
                client.VirtuePoints = (uint)entity.Virtue;
                client.Entity.Mana = (ushort)entity.Mana;
                client.Entity.HairStyle = (ushort)entity.Hairstyle;
                client.Entity.MapID = (ushort)entity.MapId;
                client.Entity.CountryID = (ushort)entity.CountryID;
                client.Entity.X = (ushort)entity.X;
                client.Entity.Y = (ushort)entity.Y;
                
                // Handle forbidden maps
                if (Constants.ForbeddenMaps.Contains(client.Entity.MapID))
                {
                    client.Entity.MapID = 1002;
                    client.Entity.X = 300;
                    client.Entity.Y = 278;
                }
                
                if ((Constants.PKFreeMaps.Contains(client.Entity.MapID)
                    && client.Entity.MapID != 6000 && client.Entity.MapID != 6001
                    && client.Entity.MapID != 6002 && client.Entity.MapID != 6003
                    && client.Entity.MapID != 6004) 
                    || (client.Entity.MapID >= 4000 && client.Entity.MapID <= 4020) 
                    || client.Entity.MapID >= 11000
                    || client.Entity.MapID == 1738)
                {
                    client.Entity.MapID = 1002;
                    client.Entity.X = 300;
                    client.Entity.Y = 278;
                }
                
                if (client.Entity.MapID == 1040) // SkyPass
                {
                    client.Entity.MapID = 1020;
                    client.Entity.X = 566;
                    client.Entity.Y = 563;
                }
                
                if (client.JustCreated)
                {
                    if (client.Entity.X == 0 && client.Entity.Y == 0)
                    {
                        client.Entity.X = 265;
                        client.Entity.Y = 219;
                        client.Entity.MapID = 1002;
                    }
                }
                
                client.BlessTime = (uint)entity.BlessTime;
                client.InLottery = client.Entity.MapID == 700;
                client.LotteryEntries = (byte)entity.LotteryEntries;
                client.Entity.PreviousMapID = (ushort)entity.PreviousMapID;
                client.Entity.PKPoints = (ushort)entity.PkPoints;
                client.Entity.Class = (byte)entity.Class;
                client.Entity.Level = (byte)entity.Level;
                client.Entity.FirstRebornClass = (byte)entity.FirstRebornClass;
                client.Entity.SecondRebornClass = (byte)entity.SecondRebornClass;
                if (client.Entity.FirstRebornClass != 0)
                    client.Entity.Reborn = 1;
                if (client.Entity.SecondRebornClass != 0)
                    client.Entity.Reborn = 2;
                client.Entity.FirstRebornLevel = (byte)entity.FirstRebornLevel;
                client.Entity.SecondRebornLevel = (byte)entity.SecondRebornLevel;
                client.LastDragonBallUse = DateTime.FromBinary(entity.LastDragonBallUse);
                client.LastResetTime = DateTime.FromBinary(entity.LastResetTime);
                client.Entity.EnlightenPoints = (ulong)entity.EnlightenPoints;
                client.Entity.EnlightmentTime = (ushort)entity.EnlightmentWait;
                if (client.Entity.EnlightmentTime > 0)
                {
                    if (client.Entity.EnlightmentTime % 20 > 0)
                    {
                        client.Entity.EnlightmentTime -= (ushort)(client.Entity.EnlightmentTime % 20);
                        client.Entity.EnlightmentTime += 20;
                    }
                }
                client.Entity.ReceivedEnlightenPoints = (byte)entity.EnlightsReceived;
                client.Entity.DoubleExperienceTime = (ushort)entity.DoubleExpTime;
                client.DoubleExpToday = entity.DoubleExpToday != 0;
                client.Entity.HeavenBlessing = (uint)entity.HeavenBlessingTime;
                client.Entity.VIPLevel = (byte)entity.VipLevel;
                client.Entity.PrevX = (ushort)entity.PreviousX;
                client.Entity.PrevY = (ushort)entity.PreviousY;
                client.ExpBalls = (byte)entity.ExpBalls;
                
                // Handle BlackList
                var blackList = entity.BlackList?.Split(new string[] { "@@" }, StringSplitOptions.RemoveEmptyEntries) ?? new string[0];
                foreach (var person in blackList)
                {
                    if (!string.IsNullOrEmpty(person) && person != "@@")
                        client.Entity.BlackList.Add(person);
                }
                
                client.Entity.ClanId = (uint)entity.ClanId;
                client.Entity.ClanRank = (Clan.Ranks)entity.ClanRank;
                
                if (client.Entity.MapID == 601)
                    client.OfflineTGEnterTime = DateTime.FromBinary(entity.OfflineTGEnterTime);
                
                Game.ConquerStructures.Nobility.Sort(client.Entity.UID);
                
                if (Kernel.Guilds.TryGetValue((uint)entity.GuildID, out var guild))
                {
                    client.Guild = guild;
                    if (client.Guild.Members.TryGetValue(client.Entity.UID, out var member))
                    {
                        client.AsMember = member;
                        if (client.AsMember.GuildID == 0)
                        {
                            client.AsMember = null;
                            client.Guild = null;
                        }
                        else
                        {
                            client.Entity.GuildID = (ushort)client.Guild.ID;
                            client.Entity.GuildRank = (ushort)client.AsMember.Rank;
                        }
                    }
                    else
                        client.Guild = null;
                }
                
                if (!Game.ConquerStructures.Nobility.Board.TryGetValue(client.Entity.UID, out client.NobilityInformation))
                {
                    client.NobilityInformation = new Nyx.Server.Game.ConquerStructures.NobilityInformation();
                    client.NobilityInformation.EntityUID = client.Entity.UID;
                    client.NobilityInformation.Name = client.Entity.Name;
                    client.NobilityInformation.Donation = 0;
                    client.NobilityInformation.Rank = Nyx.Server.Game.ConquerStructures.NobilityRank.Serf;
                    client.NobilityInformation.Position = -1;
                    client.NobilityInformation.Gender = 1;
                    client.NobilityInformation.Mesh = client.Entity.Mesh;
                    if (client.Entity.Body % 10 >= 3)
                        client.NobilityInformation.Gender = 0;
                }
                client.Entity.NobilityRank = client.NobilityInformation.Rank;
                
                #region Team Arena
                Game.TeamArena.ArenaStatistics.TryGetValue(client.Entity.UID, out client.TeamArenaStatistic);
                if (client.TeamArenaStatistic == null)
                {
                    client.TeamArenaStatistic = new Nyx.Server.Network.GamePackets.TeamArenaStatistic(true);
                    client.TeamArenaStatistic.EntityID = client.Entity.UID;
                    client.TeamArenaStatistic.Name = client.Entity.Name;
                    client.TeamArenaStatistic.Level = client.Entity.Level;
                    client.TeamArenaStatistic.Class = client.Entity.Class;
                    client.TeamArenaStatistic.Model = client.Entity.Mesh;
                    TeamArenaTable.InsertArenaStatistic(client);
                    client.TeamArenaStatistic.Status = Network.GamePackets.TeamArenaStatistic.NotSignedUp;
                    if (Game.TeamArena.ArenaStatistics.ContainsKey(client.Entity.UID))
                        Game.TeamArena.ArenaStatistics.Remove(client.Entity.UID);
                    Game.TeamArena.ArenaStatistics.Add(client.Entity.UID, client.TeamArenaStatistic);
                }
                else if (client.TeamArenaStatistic.EntityID == 0)
                {
                    client.TeamArenaStatistic = new Nyx.Server.Network.GamePackets.TeamArenaStatistic(true);
                    client.TeamArenaStatistic.EntityID = client.Entity.UID;
                    client.TeamArenaStatistic.Name = client.Entity.Name;
                    client.TeamArenaStatistic.Level = client.Entity.Level;
                    client.TeamArenaStatistic.Class = client.Entity.Class;
                    client.TeamArenaStatistic.Model = client.Entity.Mesh;
                    TeamArenaTable.InsertArenaStatistic(client);
                    client.TeamArenaStatistic.Status = Network.GamePackets.TeamArenaStatistic.NotSignedUp;
                    if (Game.TeamArena.ArenaStatistics.ContainsKey(client.Entity.UID))
                        Game.TeamArena.ArenaStatistics.Remove(client.Entity.UID);
                    Game.TeamArena.ArenaStatistics.Add(client.Entity.UID, client.TeamArenaStatistic);
                }
                else
                {
                    client.TeamArenaStatistic.Level = client.Entity.Level;
                    client.TeamArenaStatistic.Class = client.Entity.Class;
                    client.TeamArenaStatistic.Model = client.Entity.Mesh;
                    client.TeamArenaStatistic.Name = client.Entity.Name;
                }
                Game.TeamArena.Clear(client);
                #endregion
                
                #region Arena
                Game.Arena.ArenaStatistics.TryGetValue(client.Entity.UID, out client.ArenaStatistic);
                if (client.ArenaStatistic == null)
                {
                    client.ArenaStatistic = new Nyx.Server.Network.GamePackets.ArenaStatistic(true);
                    client.ArenaStatistic.EntityID = client.Entity.UID;
                    client.ArenaStatistic.Name = client.Entity.Name;
                    client.ArenaStatistic.Level = client.Entity.Level;
                    client.ArenaStatistic.Class = client.Entity.Class;
                    client.ArenaStatistic.Model = client.Entity.Mesh;
                    client.ArenaPoints = ArenaTable.ArenaPointFill(client.Entity.Level);
                    client.ArenaStatistic.LastArenaPointFill = DateTime.Now;
                    ArenaTable.InsertArenaStatistic(client);
                    client.ArenaStatistic.Status = Network.GamePackets.ArenaStatistic.NotSignedUp;
                    if (Game.Arena.ArenaStatistics.ContainsKey(client.Entity.UID))
                        Game.Arena.ArenaStatistics.Remove(client.Entity.UID);
                    Game.Arena.ArenaStatistics.Add(client.Entity.UID, client.ArenaStatistic);
                }
                else if (client.ArenaStatistic.EntityID == 0)
                {
                    client.ArenaStatistic = new Nyx.Server.Network.GamePackets.ArenaStatistic(true);
                    client.ArenaStatistic.EntityID = client.Entity.UID;
                    client.ArenaStatistic.Name = client.Entity.Name;
                    client.ArenaStatistic.Level = client.Entity.Level;
                    client.ArenaStatistic.Class = client.Entity.Class;
                    client.ArenaStatistic.Model = client.Entity.Mesh;
                    client.ArenaPoints = ArenaTable.ArenaPointFill(client.Entity.Level);
                    client.ArenaStatistic.LastArenaPointFill = DateTime.Now;
                    ArenaTable.InsertArenaStatistic(client);
                    client.ArenaStatistic.Status = Network.GamePackets.ArenaStatistic.NotSignedUp;
                    if (Game.Arena.ArenaStatistics.ContainsKey(client.Entity.UID))
                        Game.Arena.ArenaStatistics.Remove(client.Entity.UID);
                    Game.Arena.ArenaStatistics.Add(client.Entity.UID, client.ArenaStatistic);
                }
                else
                {
                    client.ArenaStatistic.Level = client.Entity.Level;
                    client.ArenaStatistic.Class = client.Entity.Class;
                    client.ArenaStatistic.Model = client.Entity.Mesh;
                    client.ArenaStatistic.Name = client.Entity.Name;
                }
                client.ArenaPoints = client.ArenaStatistic.ArenaPoints;
                client.CurrentHonor = client.ArenaStatistic.CurrentHonor;
                client.HistoryHonor = client.ArenaStatistic.HistoryHonor;
                Game.Arena.Clear(client);
                #endregion
                
                #region ChampionPoints
                Game.Arena.ChampionArenaStatistics.TryGetValue(client.Entity.UID, out client.CP);
                if (client.CP == null)
                {
                    client.CP = new Nyx.Server.Network.GamePackets.ChampionPoints();
                    client.CP.EntityID = client.Entity.UID;
                    client.CP.Points = 0;
                    client.CP.TodayPoints = 0;
                    client.CP.AllChampionPoints = 0;
                    if (Game.Arena.ChampionArenaStatistics.ContainsKey(client.Entity.UID))
                        Game.Arena.ChampionArenaStatistics.Remove(client.Entity.UID);
                    Game.Arena.ChampionArenaStatistics.Add(client.Entity.UID, client.CP);
                }
                else if (client.CP.EntityID == 0)
                {
                    client.CP = new Nyx.Server.Network.GamePackets.ChampionPoints();
                    client.CP.EntityID = client.Entity.UID;
                    client.CP.Points = 0;
                    client.CP.TodayPoints = 0;
                    client.CP.AllChampionPoints = 0;
                    if (Game.Arena.ChampionArenaStatistics.ContainsKey(client.Entity.UID))
                        Game.Arena.ChampionArenaStatistics.Remove(client.Entity.UID);
                    Game.Arena.ChampionArenaStatistics.Add(client.Entity.UID, client.CP);
                }
                else
                {
                    client.CP.Points = client.ChampionPoints;
                }
                client.ChampionPoints = client.CP.Points;
                #endregion
                
                if (Game.JiangHu.JiangHuClients.TryGetValue(client.Entity.UID, out hu))
                {
                    client.Entity.MyJiang = hu as Nyx.Server.Game.JiangHu;
                    client.Entity.MyJiang.TimerStamp = DateTime.Now;
                }
                
                SetFlowers(client);
                if (client.JustCreated)
                    client.Inventory.Add(3000550, 0, 1);
                
                client.Entity.FullyLoaded = true;
                
                // Set online status
                _ = Repository.UpdateOnlineStatusAsync(client.Entity.UID, true);
                
                return true;
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error loading entity {UID}", client.Account.EntityID);
                return false;
            }
        }
        
        /// <summary>
        /// Saves an entity to the database.
        /// </summary>
        public static bool SaveEntity(Client.GameClient c, Npgsql.NpgsqlConnection conn)
        {
            try
            {
                Game.Entity e = c.Entity;
                if (e.Owner.JustCreated) return true;
                
                #region DailySign
                string DailySign = "";
                foreach (var index in e.DailySignDays)
                {
                    DailySign += index.ToString() + "#";
                }
                #endregion
                
                #region Wardrobe
                string wardrobe = "";
                if (e.NowEquippedWing.Count > 0)
                {
                    wardrobe += e.NowEquippedWing[0].Split('~')[0] + "-" + e.NowEquippedWing[0].Split('~')[1] + "~";
                }
                else
                {
                    wardrobe += "0-0~";
                }
                if (e.NowEquippedTitle.Count > 0)
                {
                    wardrobe += e.NowEquippedTitle[0].Split('~')[0] + "-" + e.NowEquippedTitle[0].Split('~')[1];
                }
                else
                {
                    wardrobe += "0-0";
                }
                #endregion
                
                #region BlackList
                string blackList = "";
                if (e.BlackList.Count > 0 && e.BlackList != null)
                {
                    foreach (var person in e.BlackList)
                    {
                        blackList += person + "@@";
                    }
                }
                #endregion
                
                var entity = new EntityRecord
                {
                    Uid = (int)e.UID,
                    Owner = c.Account.Username,
                    Name = e.Name,
                    Mesh = e.Body,
                    Face = e.Face,
                    Hairstyle = e.HairStyle,
                    Class = e.Class,
                    Level = e.Level,
                    Experience = (long)e.Experience,
                    Strength = e.Strength,
                    Agility = e.Agility,
                    Vitality = e.Vitality,
                    Spirit = e.Spirit,
                    AttributePoints = e.Atributes,
                    Hitpoints = (int)e.Hitpoints,
                    Mana = e.Mana,
                    PkPoints = e.PKPoints,
                    MapId = e.MapID,
                    X = e.X,
                    Y = e.Y,
                    Money = (long)e.Money,
                    ConquerPoints = (long)e.ConquerPoints,
                    Virtue = (long)c.VirtuePoints,
                    VipLevel = e.VIPLevel,
                    IsOnline = 1,
                    Spouse = e.Spouse,
                    WarehousePW = (int)c.WarehousePW,
                    MoneySave = (int)c.MoneySave,
                    FirstRebornClass = e.FirstRebornClass,
                    SecondRebornClass = e.SecondRebornClass,
                    FirstRebornLevel = e.FirstRebornLevel,
                    SecondRebornLevel = e.SecondRebornLevel,
                    EnlightenPoints = (int)e.EnlightenPoints,
                    EnlightmentWait = e.EnlightmentTime,
                    EnlightsReceived = e.ReceivedEnlightenPoints,
                    DoubleExpTime = e.DoubleExperienceTime,
                    DoubleExpToday = c.DoubleExpToday ? 1 : 0,
                    HeavenBlessingTime = (int)e.HeavenBlessing,
                    BlessTime = (int)c.BlessTime,
                    LastDragonBallUse = c.LastDragonBallUse.Ticks,
                    LastResetTime = c.LastResetTime.Ticks,
                    PreviousMapID = e.PreviousMapID,
                    PreviousX = e.PrevX,
                    PreviousY = e.PrevY,
                    QuizPoints = (int)e.QuizPoints,
                    Nullifications = e.Nullifications,
                    DidBrightFortune = e.DidBrightFortune ? 1 : 0,
                    StarterPackLevel = e.StarterPackLevel,
                    FirstCredit = e.FirstCredit,
                    SwordSoul = e.SwordSoul ? 1 : 0,
                    BansheeSpirit = e.BansheeSpirit ? 1 : 0,
                    AnsweredKingdomQuiz = e.AnsweredKingdomQuiz ? 1 : 0,
                    DailySignRewards = e.DailySignRewards,
                    DailySignedDays = DailySign,
                    DailySignVIPChances = e.DailySignVIPChances,
                    LotteryEntries = c.LotteryEntries,
                    ExpBalls = c.ExpBalls,
                    OnlineTrainning = (int)e.OnlineTraining,
                    HuntingExp = (int)e.BlessedHunting,
                    GLCTF = e.GLCTF,
                    My_Title = (int)e.MyTitle,
                    StudyPoints = e.SubClasses.StudyPoints,
                    Merchant = (int)e.Merchant,
                    EditNameTimes = e.EditNameTimes,
                    ExtraInventory = (int)e.ExtraInventory,
                    CountryID = e.CountryID,
                    Achievement = e.MyAchievement.ToString(),
                    ClanId = (int)e.ClanId,
                    ClanRank = (int)e.ClanRank,
                    Wardrobe = wardrobe,
                    BlackList = blackList,
                    UnionID = (int)(c.Union?.ID ?? 0),
                    Harem = (int)c.Harem,
                    Offical = (int)c.Offical,
                    Guards = (int)c.Guards,
                    UnionExploits = (int)c.UnionExploits,
                    NormalGems = (int)e.NormalGems,
                    TotalPerfectionScore = (int)e.TotalPerfectionScore
                };
                
                if (e.MapID == 601)
                    entity.OfflineTGEnterTime = c.OfflineTGEnterTime.Ticks;
                else
                    entity.OfflineTGEnterTime = 0;
                
                if (c.AsMember != null)
                {
                    entity.GuildID = (int)c.AsMember.GuildID;
                    entity.GuildRank = (int)c.AsMember.Rank;
                    entity.GuildSilverDonation = (long)c.AsMember.SilverDonation;
                    entity.GuildConquerPointDonation = (long)c.AsMember.ConquerPointDonation;
                    entity.CTFCpsReward = (int)c.AsMember.CTFCpsReward;
                    entity.CTFSilverReward = (int)c.AsMember.CTFSilverReward;
                }
                else
                {
                    entity.GuildID = 0;
                    entity.GuildRank = 0;
                    entity.GuildSilverDonation = 0;
                    entity.GuildConquerPointDonation = 0;
                }
                
                _ = Repository.UpdateAsync(entity);
                return true;
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error saving entity {UID}", c.Entity.UID);
                return false;
            }
        }
        
        /// <summary>
        /// Saves an entity to the database (convenience method).
        /// </summary>
        public static bool SaveEntity(Client.GameClient c)
        {
            return SaveEntity(c, null!);
        }
        
        /// <summary>
        /// Updates the online status of an entity.
        /// </summary>
        public static void UpdateOnlineStatus(Client.GameClient client, bool isOnline)
        {
            try
            {
                _ = Repository.UpdateOnlineStatusAsync(client.Entity.UID, isOnline);
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error updating online status for {UID}", client.Entity.UID);
            }
        }
        
        /// <summary>
        /// Loads global counters from configuration.
        /// </summary>
        public static void Load()
        {
            try
            {
                // Load configuration from PostgreSQL
                using var conn = DataHolder.GetConnection();
                conn.Open();
                
                var config = conn.QuerySingleOrDefault("SELECT * FROM configuration LIMIT 1");
                if (config != null)
                {
                    EntityUID = new AtomicCounter((uint)(config.EntityID ?? 1000000));
                    Network.GamePackets.ConquerItem.ItemUID = new AtomicCounter((uint)(config.ItemUID ?? 1000000));
                    Game.ConquerStructures.Society.Guild.GuildCounter = new AtomicCounter((uint)(config.GuildID ?? 1));
                    Network.GamePackets.Union.Union.UnionCounter = new AtomicCounter((uint)(config.UnionID ?? 1));
                    Kernel.ServerKingdom = (uint)(config.ServerKingdom ?? 0);
                }
                else
                {
                    EntityUID = new AtomicCounter(1000000);
                    Network.GamePackets.ConquerItem.ItemUID = new AtomicCounter(1000000);
                    Game.ConquerStructures.Society.Guild.GuildCounter = new AtomicCounter(1);
                    Network.GamePackets.Union.Union.UnionCounter = new AtomicCounter(1);
                }
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error loading configuration");
                EntityUID = new AtomicCounter(1000000);
                Network.GamePackets.ConquerItem.ItemUID = new AtomicCounter(1000000);
                Game.ConquerStructures.Society.Guild.GuildCounter = new AtomicCounter(1);
                Network.GamePackets.Union.Union.UnionCounter = new AtomicCounter(1);
            }
        }
        
        /// <summary>
        /// Creates a new entity in the database.
        /// </summary>
        public static bool CreateEntity(Network.GamePackets.EnitityCreate eC, Client.GameClient client, ref string message)
        {
            try
            {
                if (eC.Name.Length > 16)
                    eC.Name = eC.Name.Substring(0, 16);
                if (eC.Name == "")
                    return false;
                    
                if (InvalidCharacters(eC.Name))
                {
                    message = "Invalid characters inside the name.";
                    return false;
                }
                
                // Check if name exists
                if (Repository.NameExistsAsync(eC.Name).GetAwaiter().GetResult())
                {
                    message = "The chosen name is already in use.";
                    return false;
                }
                
                client.Entity = new Game.Entity(Game.EntityFlag.Player, false);
                client.Entity.Name = eC.Name;
                
                // Set class based on selection
                if (eC.Class == 1 || eC.Class == 0)
                {
                    client.Entity.Class = 100;
                    DataHolder.GetStats(100, 1, client);
                }
                if (eC.Class == 5 || eC.Class == 4)
                {
                    client.Entity.Class = 40;
                    DataHolder.GetStats(40, 1, client);
                }
                if (eC.Class == 12 || eC.Class == 13)
                {
                    client.Entity.Class = 70;
                    DataHolder.GetStats(70, 1, client);
                }
                if (eC.Class == 2 || eC.Class == 3)
                {
                    client.Entity.Class = 10;
                    DataHolder.GetStats(10, 1, client);
                }
                if (eC.Class == 14 || eC.Class == 15)
                {
                    client.Entity.Class = 80;
                    DataHolder.GetStats(80, 1, client);
                }
                if (eC.Class == 10 || eC.Class == 11)
                {
                    client.Entity.Class = 60;
                    DataHolder.GetStats(60, 1, client);
                }
                if (eC.Class == 8 || eC.Class == 9)
                {
                    client.Entity.Class = 50;
                    DataHolder.GetStats(50, 1, client);
                }
                if (eC.Class == 6 || eC.Class == 7)
                {
                    client.Entity.Class = 20;
                    DataHolder.GetStats(20, 1, client);
                }
                
                client.CalculateStatBonus();
                client.CalculateHPBonus();
                client.Entity.Hitpoints = client.Entity.MaxHitpoints;
                client.Entity.Mana = (ushort)(client.Entity.Spirit * 5);
                client.Entity.Body = eC.Body;
                if (eC.Body == 1003 || eC.Body == 1004)
                    client.Entity.Face = (ushort)Kernel.Random.Next(1, 50);
                else
                    client.Entity.Face = (ushort)Kernel.Random.Next(201, 250);
                byte Color = (byte)Kernel.Random.Next(4, 8);
                client.Entity.HairStyle = (ushort)(Color * 100 + 10 + (byte)Kernel.Random.Next(4, 9));
                client.Entity.UID = EntityUID.Next;
                client.Entity.Owner = client;
                client.JustCreated = true;

                // Create entity in database
                var entity = new EntityRecord
                {
                    Uid = (int)client.Entity.UID,
                    Owner = client.Account.Username,
                    Name = eC.Name,
                    Mesh = client.Entity.Body,
                    Hairstyle = client.Entity.HairStyle,
                    Class = client.Entity.Class,
                    Face = client.Entity.Face,
                    WarehousePW = 0,
                    Level = 1,
                    Hitpoints = (int)client.Entity.Hitpoints,
                    Mana = client.Entity.Mana,
                    Strength = client.Entity.Strength,
                    Agility = client.Entity.Agility,
                    Vitality = client.Entity.Vitality,
                    Spirit = client.Entity.Spirit,
                    MapId = 1002,
                    X = 265,
                    Y = 219,
                    AttributePoints = 0,
                    ConquerPoints = 500,
                    Experience = 0,
                    Money = 500,
                    VipLevel = 4,
                    Achievement = ""
                };
                
                var uid = Repository.CreateAsync(entity).GetAwaiter().GetResult();
                
                // Update configuration
                using var conn = DataHolder.GetConnection();
                conn.Open();
                conn.Execute("UPDATE configuration SET \"EntityID\"=@EntityId", new { EntityId = (int)client.Entity.UID });
                
                client.Account.EntityID = client.Entity.UID;
                client.Account.Save(client);
                
                message = "ANSWER_OK";
                return true;
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error creating entity");
                message = "Error creating character.";
                return false;
            }
        }
        
        static bool InvalidCharacters(string Name)
        {
            foreach (char c in Name)
            {
                if (Kernel.InvalidCharacters.Contains(c) || (byte)c < 48)
                {
                    return true;
                }
            }
            return false;
        }
        
        /// <summary>
        /// Updates the CPS for an entity.
        /// </summary>
        public static void UpdateCps(uint uid, uint cps)
        {
            try
            {
                using var conn = DataHolder.GetConnection();
                conn.Open();
                conn.Execute("UPDATE entities SET ConquerPoints=@Cps WHERE UID=@Uid", 
                    new { Cps = (long)cps, Uid = (int)uid });
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error updating CPS for {UID}", uid);
            }
        }
        
        /// <summary>
        /// Updates the CPS for an entity (convenience overload).
        /// </summary>
        public static void UpdateCps(Client.GameClient client)
        {
            UpdateCps(client.Entity.UID, client.Entity.ConquerPoints);
        }
        
        /// <summary>
        /// Updates the money for an entity.
        /// </summary>
        public static void UpdateMoney(uint uid, uint money)
        {
            try
            {
                using var conn = DataHolder.GetConnection();
                conn.Open();
                conn.Execute("UPDATE entities SET Money=@Money WHERE UID=@Uid", 
                    new { Money = (long)money, Uid = (int)uid });
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error updating money for {UID}", uid);
            }
        }
        
        /// <summary>
        /// Updates entity data field.
        /// </summary>
        public static void UpdateData(uint uid, string field, object value)
        {
            try
            {
                using var conn = DataHolder.GetConnection();
                conn.Open();
                conn.Execute($"UPDATE entities SET {field}=@Value WHERE UID= @Uid", 
                    new { Value = value, Uid = (int)uid });
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error updating data for {UID}", uid);
            }
        }
        
        /// <summary>
        /// Updates the level for an entity.
        /// </summary>
        public static void UpdateLevel(uint uid, byte level)
        {
            try
            {
                using var conn = DataHolder.GetConnection();
                conn.Open();
                conn.Execute("UPDATE entities SET \"Level\"=@Level WHERE \"UID\"=@Uid", 
                    new { Level = (int)level, Uid = (int)uid });
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error updating level for {UID}", uid);
            }
        }
        
        /// <summary>
        /// Updates the level for an entity (convenience overload).
        /// </summary>
        public static void UpdateLevel(Client.GameClient client)
        {
            UpdateLevel(client.Entity.UID, client.Entity.Level);
        }
        
        /// <summary>
        /// Updates skill experience for an entity.
        /// </summary>
        public static void UpdateSkillExp(uint uid, ushort skillId, uint experience)
        {
            try
            {
                using var conn = DataHolder.GetConnection();
                conn.Open();
                conn.Execute("UPDATE skills SET \"Experience\"= @Experience WHERE \"EntityID\"=@Uid AND \"ID\"= @SkillId", 
                    new { Experience = (long)experience, Uid = (int)uid, SkillId = (int)skillId });
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error updating skill exp for {UID}", uid);
            }
        }
        
        /// <summary>
        /// Updates skill experience for an entity (convenience overload).s
        /// </summary>
        public static void UpdateSkillExp(Client.GameClient client, ushort skillId, uint experience)
        {
            UpdateSkillExp(client.Entity.UID, skillId, experience);
        }
        
        /// <summary>
        /// Updates the clan ID for an entity.
        /// </summary>
        public static void UpdateClanID(uint uid, uint clanId)
        {
            try
            {
                using var conn = DataHolder.GetConnection();
                conn.Open();
                conn.Execute("UPDATE entities SET \"ClanId\"= @ClanId WHERE \"UID\"= @Uid", 
                    new { ClanId = (int)clanId, Uid = (int)uid });
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error updating clan ID for {UID}", uid);
            }
        }
        
        /// <summary>
        /// Updates the clan ID for an entity (convenience overload).
        /// </summary>
        public static void UpdateClanID(Client.GameClient client)
        {
            UpdateClanID(client.Entity.UID, client.Entity.ClanId);
        }
        
        /// <summary>
        /// Updates the clan rank for an entity.
        /// </summary>
        public static void UpdateClanRank(uint uid, uint clanId, uint clanRank)
        {
            try
            {
                using var conn = DataHolder.GetConnection();
                conn.Open();
                conn.Execute("UPDATE entities SET \"ClanId\"= @ClanId, \"ClanRank\"= @ClanRank WHERE \"UID\"=@Uid", 
                    new { ClanId = (int)clanId, ClanRank = (int)clanRank, Uid = (int)uid });
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error updating clan rank for {UID}", uid);
            }
        }
        
        /// <summary>
        /// Updates the clan rank for an entity (convenience overload).
        /// </summary>
        public static void UpdateClanRank(Client.GameClient client)
        {
            UpdateClanRank(client.Entity.UID, client.Entity.ClanId, (uint)client.Entity.ClanRank);
        }
        
        /// <summary>
        /// Updates the clan rank for an entity (convenience overload).
        /// </summary>
        public static void UpdateClanRank(uint uid, uint clanRank)
        {
            UpdateClanRank(uid, 0, clanRank);
        }
        
        /// <summary>
        /// Removes a clan from an entity.
        /// </summary>
        public static void RemoveClan(uint uid)
        {
            UpdateClanID(uid, 0);
            UpdateClanRank(uid, 0, 0);
        }
        
        /// <summary>
        /// Removes a clan from an entity (convenience overload).
        /// </summary>
        public static void RemoveClan(Client.GameClient client)
        {
            RemoveClan(client.Entity.UID);
        }
        
        /// <summary>
        /// Removes a clan member.
        /// </summary>
        public static void RemoveClanMember(uint uid)
        {
            RemoveClan(uid);
        }
        
        /// <summary>
        /// Removes a clan member (convenience overload).
        /// </summary>
        public static void RemoveClanMember(Client.GameClient client)
        {
            RemoveClan(client.Entity.UID);
        }
        
        /// <summary>
        /// Updates the guild ID for an entity.
        /// </summary>
        public static void UpdateGuildID(uint uid, uint guildId)
        {
            try
            {
                using var conn = DataHolder.GetConnection();
                conn.Open();
                conn.Execute("UPDATE entities SET GuildID=@GuildId WHERE UID= @Uid", 
                    new { GuildId = (int)guildId, Uid = (int)uid });
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error updating guild ID for {UID}", uid);
            }
        }
        
        /// <summary>
        /// Updates the guild ID for an entity (convenience overload).
        /// </summary>
        public static void UpdateGuildID(Client.GameClient client)
        {
            UpdateGuildID(client.Entity.UID, client.Entity.GuildID);
        }
        
        /// <summary>
        /// Updates the guild rank for an entity.
        /// </summary>
        public static void UpdateGuildRank(uint uid, uint guildRank)
        {
            try
            {
                using var conn = DataHolder.GetConnection();
                conn.Open();
                conn.Execute("UPDATE entities SET GuildRank= @GuildRank WHERE UID=@Uid", 
                    new { GuildRank = (int)guildRank, Uid = (int)uid });
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error updating guild rank for {UID}", uid);
            }
        }
        
        /// <summary>
        /// Updates the guild rank for an entity (convenience overload).
        /// </summary>
        public static void UpdateGuildRank(Client.GameClient client)
        {
            UpdateGuildRank(client.Entity.UID, client.Entity.GuildRank);
        }
        
        /// <summary>
        /// Updates clan donation for an entity.
        /// </summary>
        public static void UpdateClanDonation(uint uid, ulong donation)
        {
            try
            {
                using var conn = DataHolder.GetConnection();
                conn.Open();
                conn.Execute("UPDATE entities SET ClanDonation= @Donation WHERE UID=@Uid", 
                    new { Donation = (long)donation, Uid = (int)uid });
            }
            catch (Exception ex)
            {
                Serilog.Log.Error(ex, "Error updating clan donation for {UID}", uid);
            }
        }
        
        /// <summary>
        /// Updates clan donation for an entity (convenience overload).
        /// </summary>
        public static void UpdateClanDonation(Client.GameClient client)
        {
            UpdateClanDonation(client.Entity.UID, 0);
        }
        
        /// <summary>
        /// Try to reset entity data.
        /// </summary>
        public static void TryReset(Client.GameClient client)
        {
            if (DateTime.Now >= client.LastResetTime.AddDays(1))
            {
                DailyQuestTable.Reset(client);
                ActivenessTable.Reset(client);
                if (client.ChiPoints < 4000)
                    client.ChiPoints += (uint)Math.Min(500, 4000 - client.ChiPoints);
                #region EnlightenmentPoints
                if (client.Entity.Level >= 90)
                {
                    client.Entity.EnlightenPoints = 1;
                    if (client.Entity.NobilityRank == Nyx.Server.Game.ConquerStructures.NobilityRank.Knight ||
                        client.Entity.NobilityRank == Nyx.Server.Game.ConquerStructures.NobilityRank.Baron)
                        client.Entity.EnlightenPoints += 1;
                    else if (client.Entity.NobilityRank == Nyx.Server.Game.ConquerStructures.NobilityRank.Earl ||
                        client.Entity.NobilityRank == Nyx.Server.Game.ConquerStructures.NobilityRank.Duke)
                        client.Entity.EnlightenPoints += 2;
                    else if (client.Entity.NobilityRank == Nyx.Server.Game.ConquerStructures.NobilityRank.Prince)
                        client.Entity.EnlightenPoints += 3;
                    else if (client.Entity.NobilityRank == Nyx.Server.Game.ConquerStructures.NobilityRank.King)
                        client.Entity.EnlightenPoints += 4;
                    if (client.Entity.VIPLevel != 0)
                    {
                        if (client.Entity.VIPLevel <= 3)
                            client.Entity.EnlightenPoints += 1;
                        else if (client.Entity.VIPLevel <= 5)
                            client.Entity.EnlightenPoints += 2;
                        else if (client.Entity.VIPLevel == 6)
                            client.Entity.EnlightenPoints += 3;
                    }
                }
                client.Entity.ReceivedEnlightenPoints = 0;
                #endregion
                client.Entity.SwordSoul = false;
                client.Entity.BansheeSpirit = false;
                client.DoubleExpToday = false;
                client.ExpBalls = 0;
                client.LotteryEntries = 0;
                client.LastResetTime = DateTime.Now;
                client.Entity.AnsweredKingdomQuiz = false;
                client.Entity.TodayStrikePoints = 0;
                client.Entity.KingdomDeed = 0;
            }
        }
        
        public static void SetFlowers(Client.GameClient client)
        {
            if (client.Entity.Body == 2001 || client.Entity.Body == 2002)
            {
                if (!Game.Features.Flowers.Flowers_Poll.ContainsKey(client.Entity.UID))
                {
                    client.Entity.MyFlowers = new Game.Features.Flowers(client.Entity.UID, client.Entity.Name);
                    Game.Features.Flowers.Flowers_Poll.TryAdd(client.Entity.UID, client.Entity.MyFlowers);
                    return;
                }
                client.Entity.MyFlowers = Nyx.Server.Game.Features.Flowers.Flowers_Poll[client.Entity.UID];
                return;
            }
            else
            {
                if (!Game.Features.Flowers.BoyFlowers.ContainsKey(client.Entity.UID))
                {
                    client.Entity.MyFlowers = new Game.Features.Flowers(client.Entity.UID, client.Entity.Name);
                    Game.Features.Flowers.BoyFlowers.TryAdd(client.Entity.UID, client.Entity.MyFlowers);
                    return;
                }
                client.Entity.MyFlowers = Game.Features.Flowers.BoyFlowers[client.Entity.UID];
                return;
            }
        }
        
        public static AtomicCounter EntityUID = new AtomicCounter(1000000);
    }
}
