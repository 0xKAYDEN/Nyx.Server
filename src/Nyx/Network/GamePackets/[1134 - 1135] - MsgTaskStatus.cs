using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Npgsql;
using NpgsqlTypes;
using Nyx.Server.Client;
using Nyx.Server.Database;
using Nyx.Server.Network;
using Nyx.Server.Network.GamePackets;
using Nyx.Server.Utilities;

namespace Nyx.Server
{
    // ─────────────────────────────────────────────────────────────────────────────
    // Packet ID constants
    // ─────────────────────────────────────────────────────────────────────────────
    //public const ushort PACKET_QUEST_LIST   = 1134; // MsgQuestStatus — full quest list / state changes
    //public const ushort PACKET_QUEST_UPDATE = 1135; // MsgTaskStatus  — real-time progress on a single quest

    // ─────────────────────────────────────────────────────────────────────────────
    // QuestType – categories that determine reset behaviour
    // ─────────────────────────────────────────────────────────────────────────────
    public enum QuestType : uint
    {
        RecruitQuest   = 1,
        TutorialQuest  = 2,
        DailyQuest     = 3,
        EquipmentBonus = 4,
        Event          = 5,
        NezhaFeud      = 6,
        RegionQuests   = 7,
        Festival       = 8,
        CrossServer    = 9,
        KingdomWar     = 10,
        ScrambleRealm  = 11,
    }

    // ─────────────────────────────────────────────────────────────────────────────
    // QuestID – unique identifiers for every quest in the game
    // Grouped by logical chain; see docs/Packet_1134_1135_QuestStatus.md for full table.
    // ─────────────────────────────────────────────────────────────────────────────
    public enum QuestID : uint
    {
        // --- story / event chain (3xxx) ---
        Message                   = 804,
        UnknownDangers            = 3632,
        BloodVengeance            = 3634,
        EvilRoot                  = 3635,
        ForgeFurance              = 3636,
        GloryOfThePast            = 3637,
        SecretOfBright            = 3638, // Bright milestone at 15 kills
        UnexceptedDiscovery       = 3639,
        MysteriousMetal           = 3640,
        SacrificetotheDead        = 3641,
        HealingTheDying           = 3642,
        PathToFlameTemple         = 3643,
        SorrowofDesolation        = 3644,
        WheelofNature             = 3645,
        MetalForce                = 3646,
        FireForce                 = 3647,
        WaitingForMiracle         = 3648,
        EndHomelessness           = 3649,
        MonsterSage               = 3633,
        Spirit_Beads              = 2375,
        TempestWing               = 200,
        TheWayofTommorow          = 3631,

        // --- city quest chain ---
        DisCity1      = 6472,
        Discity2      = 6473,
        DisCity3      = 6474,
        DisCity4      = 6475,

        // --- realm / scramble quests ---
        ScrambleforJustice = 35034,
        CrystalBounty      = 35028,
        AshesOfAnger       = 35024,
        BeastsOfLegend     = 35025,
        ThunderStrike      = 35007,

        // --- side / world quests ---
        WorshipLeaders      = 6329,
        TowerOfMystery      = 6126,
        EvilLabyrinth       = 6467,
        HeavenTreasury      = 6390,
        Magnolias           = 6014,
        EveryThingHasAPrice = 6245,
        Release_the_souls   = 6049,
        RareMaterials       = 6366,
        SkyPass             = 6350,

        // --- second stage chain (8 sub-kills → 1 main kill) ---
        SecondQuestStageOne   = 2414,
        SecondQuestStageTwo   = 2416,
        SecondQuestStageThree = 2418,
        SecondQuestStageFour  = 2419,

        // --- mystery formation chain ---
        Secret_in_the_Chest = 3679,
        Weird_Formation     = 3680,
        Mind_of_Evil        = 3682,
        PheasantInfestation = 3706,
    }

    // ============================================================================
    // QuestPacket  (MsgQuestStatus  — packet ID 1134)
    //
    // Wire layout:
    //   [len:2][pktId:2][action:2][count:2]  then count × 12-byte QuestData items
    //   each item : [uid:4][status:4][time:4]
    // ============================================================================
    public class QuestPacket : Writer, Interfaces.IPacket
    {
        public enum QuestAction : ushort
        {
            Begin     = 1,
            QuitQuest = 2,
            List      = 3,
            Complete  = 4,
        }

        public enum QuestStatus : uint
        {
            Accepted  = 0,
            Finished  = 1,
            Available = 2,
            TaskFail  = 5,
        }

        public struct QuestData
        {
            public QuestID   UID;
            public uint      Time;

            /// <summary>Status of the quest (Accepted / Finished / Available / TaskFail)</summary>
            public QuestPacket.QuestStatus Status;

            public static QuestData Create(QuestID uid, QuestPacket.QuestStatus status, uint time) =>
                new QuestData { UID = uid, Status = status, Time = time };
        }

        // ── buffer & construction ───────────────────────────────────────────────
        private byte[] _buffer;

        /// <param name="create">When true, allocates a fresh buffer sized for <paramref name="count"/> quests.</param>
        /// <param name="count">Number of quest entries the packet will carry.</param>
        public QuestPacket(bool create, int count = 0)
        {
            if (create)
            {
                // 8-byte header + 12 bytes per quest entry
                _buffer = new byte[28 + 12 * count];
                Writer.Write((ushort)(_buffer.Length - 8), 0, _buffer);
                Writer.Write((ushort)PacketType.MsgTaskStatus, 2, _buffer);
                Amount = (ushort)count;
            }
        }

        // ── header fields (fixed offsets) ───────────────────────────────────────
        public QuestAction Action
        {
            get => (QuestAction)BitConverter.ToUInt16(_buffer, 4);
            set => Writer.Write((ushort)value, 4, _buffer);
        }

        public ushort Amount
        {
            get => BitConverter.ToUInt16(_buffer, 6);
            set => Writer.Write(value, 6, _buffer);
        }

        // ── indexed access to quest entries ─────────────────────────────────────
        public QuestData this[int index]
        {
            get => QuestData.Create(
                (QuestID)BitConverter.ToUInt32(_buffer, 8 + 12 * index),
                (QuestStatus)BitConverter.ToUInt32(_buffer, 12 + 12 * index),
                BitConverter.ToUInt32(_buffer, 16 + 12 * index));
            set
            {
                Writer.Write((uint)value.UID,    8  + 12 * index, _buffer);
                Writer.Write((uint)value.Status, 12 + 12 * index, _buffer);
                Writer.Write(value.Time,         16 + 12 * index, _buffer);
            }
        }

        // ── append a quest to the end of the buffer ─────────────────────────────
        public void Append(QuestData quest)
        {
            int offset = 8 + 12 * Amount;
            Writer.Write((uint)quest.UID,    offset,     _buffer);
            Writer.Write((uint)quest.Status, offset + 4, _buffer);
            Writer.Write(quest.Time,         offset + 8, _buffer);
            Amount++;
        }

        // ── IPacket implementation ──────────────────────────────────────────────
        public byte[]  Encode() => _buffer;
        public void    Deserialize(byte[] buffer) => _buffer = buffer;
        public void    Send(Client.GameClient client) => client.Send(_buffer);
    }

    // ============================================================================
    // QuestItem – server-side persistent state for a single quest owned by a player
    // ============================================================================
    public class Quests
    {
        public class QuestItem
        {
            public QuestPacket.QuestData QItem;
            public uint Kills = 0;
            public uint Kills1 = 0;
            public uint Kills2 = 0;
            public string Mob = "";

            public static QuestItem Create(QuestPacket.QuestData qItem, uint kills = 0, string mob = "") =>
                new QuestItem { QItem = qItem, Kills = kills, Mob = mob };

            public void WriteItem(BinaryWriter writer)
            {
                writer.Write((uint)QItem.UID);
                writer.Write((uint)QItem.Status);
                writer.Write(QItem.Time);
                writer.Write(Kills);
                writer.Write(Mob);
            }

            public QuestItem ReadItem(BinaryReader reader)
            {
                QItem = new QuestPacket.QuestData();
                if (reader.BaseStream.Position + 16 > reader.BaseStream.Length) return this;

                QItem.UID      = (QuestID)reader.ReadUInt32();
                QItem.Status   = (QuestPacket.QuestStatus)reader.ReadUInt32();
                QItem.Time     = reader.ReadUInt32();
                Kills          = reader.ReadUInt32();
                if (reader.BaseStream.Position < reader.BaseStream.Length)
                    Mob = reader.ReadString();

                return this;
            }
        }

        // ── fields ──────────────────────────────────────────────────────────────
        public GameClient Player;
        public SafeDictionary<QuestID, QuestItem> src = new SafeDictionary<QuestID, QuestItem>();

        public Quests(GameClient owner) => Player = owner;

        // ── persistence ─────────────────────────────────────────────────────────
        public void Load()
        {
            using var cmd = new NyxSqlCommand(MySqlCommandType.SELECT);
            cmd.Select("quests").Where("UID", Player.Entity.UID);

            using var rdr = new MySqlReader(cmd);
            if (rdr.Read())
            {
                byte[] data = rdr.ReadBlob("quests");
                if (data.Length == 0) return;

                using var ms = new MemoryStream(data);
                using var br = new BinaryReader(ms);
                int count = br.ReadByte();
                for (uint i = 0; i < count; i++)
                {
                    var item = new QuestItem();
                    src.Add(item.ReadItem(br).QItem.UID, item);
                }
            }
            else
            {
                InsertEmptyQuestRow();
            }
        }

        public void Save()
        {
            var ms     = new MemoryStream();
            var writer = new BinaryWriter(ms);
            writer.Write((byte)src.Count);
            foreach (var quest in src.Values) quest.WriteItem(writer);

            string sql = "UPDATE quests SET quests = @quests WHERE UID = @uid";
            byte[] raw = ms.ToArray();

            using var conn = DataHolder.MySqlConnection;
            conn.Open();
            using var cmd = new NpgsqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@quests", raw);
            cmd.Parameters.Add("@uid", NpgsqlDbType.Integer).Value = (int)Player.Entity.UID;
            cmd.ExecuteNonQuery();
        }

        private void InsertEmptyQuestRow()
        {
            using var cmd = new NyxSqlCommand(MySqlCommandType.INSERT).Insert("quests");
            cmd.Insert("UID", Player.Entity.UID).Insert("Name", Player.Entity.Name);
            cmd.Execute();
        }

        // ── daily / cross-server reset on login ─────────────────────────────────
        public void Reset(Client.GameClient client, bool onlyDailyQuest)
        {
            using var cmd = new NyxSqlCommand(MySqlCommandType.SELECT);
            cmd.Select("quests").Where("UID", client.Entity.UID);

            using var rdr = new MySqlReader(cmd);
            if (!rdr.Read())
            {
                InsertEmptyQuestRow();
                return;
            }

            if (!onlyDailyQuest)
            {
                RemoveFinishedByType(client, QuestType.DailyQuest);
                RemoveFinishedByType(client, QuestType.CrossServer);
            }
            else
            {
                RemoveFinishedByType(client, QuestType.DailyQuest);
            }
        }

        private void RemoveFinishedByType(Client.GameClient client, QuestType type)
        {
            var toRemove = src.Values
                .Where(q => QuestInfo.CheckType(q.QItem.UID) == type && q.QItem.Status == QuestPacket.QuestStatus.Finished)
                .ToArray();
            foreach (var q in toRemove) src.Remove(q.QItem.UID);
        }

        // ── accept / complete / quit ────────────────────────────────────────────
        public QuestItem Accept(QuestID uid, uint time = 0)
        {
            if (src.ContainsKey(uid)) return new QuestItem();
            var item = QuestItem.Create(
                QuestPacket.QuestData.Create(uid, QuestPacket.QuestStatus.Accepted, time),
                kills: 0);
            src.Add(item.QItem.UID, item);
            SendSinglePacket(item.QItem, QuestPacket.QuestAction.Begin);
            return item;
        }

        public bool FinishQuest(QuestID uid)
        {
            if (!src.TryGetValue(uid, out var item)
                || item.QItem.Status == QuestPacket.QuestStatus.Finished)
                return false;

            item.QItem.Status = QuestPacket.QuestStatus.Finished;
            src[uid] = item;
            SendSinglePacket(item.QItem, QuestPacket.QuestAction.Complete);
            return true;
        }

        public bool QuitQuest(QuestID uid)
        {
            if (!src.TryGetValue(uid, out var item)
                || item.QItem.Status != QuestPacket.QuestStatus.Accepted)
                return false;

            item.QItem.Status = QuestPacket.QuestStatus.Available;
            src[uid] = item;
            SendSinglePacket(item.QItem, QuestPacket.QuestAction.QuitQuest);
            src.Remove(uid);
            return true;
        }

        // ── generic kill progress ───────────────────────────────────────────────
        public void IncreaseQuestKills(QuestID uid, uint kills)
        {
            if (!TryGetActiveQuest(uid, out var item)) return;
            item.Kills += kills;
            src[uid] = item;
            BroadcastProgress(uid,
                item.Kills, item.Kills, item.Kills, item.Kills, item.Kills);
        }

        public void IncreaseQuestKills5(QuestID uid, uint kills)
        {
            if (!TryGetActiveQuest(uid, out var item)) return;
            item.Kills += kills;
            src[uid] = item;

            var pkt = new QuestUpdatePacket { UID = uid, PrimaryProgress = item.Kills };
            if (item.Kills >= 15) pkt.Bright = 1;
            Player.Send(pkt);
        }

        public void IncreaseQuestDones(QuestID uid, uint a, uint b = 0, uint c = 0, uint d = 0)
        {
            if (!TryGetActiveQuest(uid, out var item)) return;
            item.Kills += a + b + c + d;
            src[uid] = item;
            BroadcastProgress(uid, a, b, c, d);
        }

        // --- second stage chain: 8 sub-kills roll up to 1 main kill ----------
        public void IncreaseQuestKills2(QuestID uid, uint inc)
        {
            if (!TryGetActiveQuest(uid, out var item)) return;
            item.Kills += inc;
            src[uid] = item;
            // TODO: the original per-index tracking (dataq[1]/dataq[2]) was never
            // sent correctly; fix requires a protocol change or clearer spec.
            Player.Send(new QuestUpdatePacket { UID = uid, PrimaryProgress = item.Kills });
        }

        // ── tower of mystery (special two-field progress) ───────────────────────
        public void DoneTowerMystery()
        {
            if (!src.TryGetValue(QuestID.TowerOfMystery, out var item)
                || item.QItem.Status != QuestPacket.QuestStatus.Accepted)
                return;

            item.Kills = 1;
            src[QuestID.TowerOfMystery] = item;
            Player.Send(new QuestUpdatePacket
            {
                UID                 = QuestID.TowerOfMystery,
                PrimaryProgress     = 1,
                SecondaryProgress   = 1,
            });
        }

        // ── realm-specific progress wrappers ────────────────────────────────────
        public void ThunderStrike(QuestID uid, uint kills)
        {
            if (!TryGetActiveQuest(uid, out var item)) return;
            item.Kills += kills;
            src[uid] = item;
            Player.Send(new QuestUpdatePacket { UID = uid, ThunderStrike = item.Kills });
        }

        public void CrystalBounty(QuestID uid, uint kills)
        {
            if (!TryGetActiveQuest(uid, out var item)) return;
            item.Kills += kills;
            src[uid] = item;
            Player.Send(new QuestUpdatePacket { UID = uid, CrystalBounty = item.Kills });
        }

        public void AshesOfAnger(QuestID uid, uint kills)
        {
            if (!TryGetActiveQuest(uid, out var item)) return;
            item.Kills += kills;
            src[uid] = item;
            Player.Send(new QuestUpdatePacket { UID = uid, AshesOfAnger = item.Kills });
        }

        // ── queries ─────────────────────────────────────────────────────────────
        public bool HasQuest(QuestID uid) => src.ContainsKey(uid);

        public QuestPacket.QuestStatus CheckQuest(QuestID uid)
        {
            if (!src.ContainsKey(uid))
                src.Add(uid, new QuestItem());
            return src[uid].QItem.Status;
        }

        public QuestItem GetQuest(QuestID uid) => src[uid];

        /// Returns true if the player has fewer than 20 accepted quests.
        public bool AllowAccept() => AcceptQuestCount() < 20;

        // ── full GUI sync — sends all quests in batches of 80 ──────────────────
        public void SendFullGUI()
        {
            var allQuests = QuestInfo.AllQuests.Values.ToArray();
            var batch = new List<QuestPacket.QuestData>(80);

            for (int i = 0; i < allQuests.Length; i++)
            {
                if (i > 0 && i % 80 == 0)
                {
                    FlushBatch(batch);
                    batch.Clear();
                }

                var id = allQuests[i].MissionId;
                if (src.ContainsKey(id))
                    batch.Add(src[id].QItem);
                else
                    batch.Add(QuestPacket.QuestData.Create(id, QuestPacket.QuestStatus.Available, 0));
            }
            if (batch.Count > 0) FlushBatch(batch);
        }

        private void FlushBatch(List<QuestPacket.QuestData> items)
        {
            // Daily quests always appear as Available in the list view
            for (int i = 0; i < items.Count; i++)
            {
                if (QuestInfo.CheckType(items[i].UID) == QuestType.DailyQuest)
                    items[i] = new QuestPacket.QuestData
                    {
                        UID      = items[i].UID,
                        Status   = QuestPacket.QuestStatus.Available,
                        Time     = items[i].Time,
                    };
            }

            var pkt = new QuestPacket(true, items.Count) { Action = QuestPacket.QuestAction.List };
            foreach (var q in items) pkt.Append(q);
            Player.Send(pkt);
        }

        // ── messagebox helper (NPC dialog trigger) ─────────────────────────────
        private void SendMessageBox(string text, ushort mapX, ushort mapY, uint npcUid)
        {
            Player.MessageBox(text, p =>
            {
                var dp = new Data(true);
                dp.UID         = p.Entity.UID;
                dp.ID          = 162; // NpcDialog packet ID
                dp.TimeStamp2  = npcUid;
                dp.wParam1     = mapX;
                dp.wParam2     = mapY;
                p.Send(dp);
            }, null, 0);
        }

        // ── private helpers ─────────────────────────────────────────────────────
        private bool IsActiveQuest(QuestID uid) =>
            CheckQuest(uid, QuestPacket.QuestStatus.Accepted);

        private bool CheckQuest(QuestID uid, QuestPacket.QuestStatus status) =>
            src.Values.Count(q => q.QItem.UID == uid && q.QItem.Status == status) == 1;

        private int AcceptQuestCount() =>
            src.Values.Count(q => q.QItem.Status == QuestPacket.QuestStatus.Accepted);

        private bool TryGetActiveQuest(QuestID uid, out QuestItem item)
        {
            item = (src.TryGetValue(uid, out var i) && IsActiveQuest(uid)) ? i : null;
            return item != null;
        }

        private void BroadcastProgress(QuestID uid, uint a, uint b, uint c, uint d, uint e = 0)
        {
            var pkt = new QuestUpdatePacket { UID = uid };
            pkt.PrimaryProgress     = a;
            pkt.SecondaryProgress   = b;
            pkt.TertiaryProgress    = c;
            pkt.QuaternaryProgress  = d;
            pkt.QuinaryProgress     = e;
            Player.Send(pkt);
        }

        private void SendSinglePacket(QuestPacket.QuestData data, QuestPacket.QuestAction mode)
        {
            var pkt = new QuestPacket(true, 1) { Action = mode };
            pkt.Append(data);
            Player.Send(pkt);
        }
    }

    // ============================================================================
    // QuestUpdatePacket  (MsgTaskStatus  — packet ID 1135)
    //
    // Fixed 60-byte packet sent after kill-count or milestone changes on a single
    // quest. Each named property maps to a specific offset in the wire format.
    //
    // Wire layout:
    //   [len:2][pktId:2][pad:2][uid:4]
    //   [primary:4][secondary:4][tertiary:4][quaternary:4][quinary:4]
    //   [thunderStrike:4][crystalBounty:4][ashesOfAnger:4]
    //   [pad × 4]
    // ============================================================================
    public class QuestUpdatePacket : Writer, Interfaces.IPacket
    {
        private readonly byte[] _buffer = new byte[60];

        public QuestUpdatePacket()
        {
            Writer.Write((ushort)(_buffer.Length - 8), 0, _buffer);
            Writer.Write((ushort)PacketType.MsgTaskDetailInfo, 2, _buffer);
        }

        public QuestID UID
        {
            get => (QuestID)BitConverter.ToUInt32(_buffer, 8);
            set => Writer.Write((uint)value, 8, _buffer);
        }

        /// Offset 12 — primary progress counter (kill count, item count, etc.)
        public uint PrimaryProgress
        {
            get => BitConverter.ToUInt32(_buffer, 12);
            set => Writer.Write(value, 12, _buffer);
        }

        /// Offset 16 — secondary counter or milestone flag (e.g. Bright at 15 kills)
        public uint SecondaryProgress
        {
            get => BitConverter.ToUInt32(_buffer, 16);
            set => Writer.Write(value, 16, _buffer);
        }

        /// Alias for SecondaryProgress — used by SecretOfBright quest milestone logic
        public uint Bright
        {
            get => SecondaryProgress;
            set => SecondaryProgress = value;
        }

        /// Offset 20 — tertiary counter
        public uint TertiaryProgress
        {
            get => BitConverter.ToUInt32(_buffer, 20);
            set => Writer.Write(value, 20, _buffer);
        }

        /// Offset 24 — quaternary counter
        public uint QuaternaryProgress
        {
            get => BitConverter.ToUInt32(_buffer, 24);
            set => Writer.Write(value, 24, _buffer);
        }

        /// Offset 28 — quinary counter
        public uint QuinaryProgress
        {
            get => BitConverter.ToUInt32(_buffer, 28);
            set => Writer.Write(value, 28, _buffer);
        }

        /// Offset 32 — ThunderStrike realm quest counter
        public uint ThunderStrike
        {
            get => BitConverter.ToUInt32(_buffer, 32);
            set => Writer.Write(value, 32, _buffer);
        }

        /// Offset 36 — CrystalBounty realm quest counter
        public uint CrystalBounty
        {
            get => BitConverter.ToUInt32(_buffer, 36);
            set => Writer.Write(value, 36, _buffer);
        }

        /// Offset 40 — AshesOfAnger realm quest counter
        public uint AshesOfAnger
        {
            get => BitConverter.ToUInt32(_buffer, 40);
            set => Writer.Write(value, 40, _buffer);
        }

        public byte[]  Encode() => _buffer;
        public void    Deserialize(byte[] buffer) { /* immutable — ignore */ }
        public void    Send(Client.GameClient client) => client.Send(_buffer);
    }

    // ============================================================================
    // QuestInfo – static registry loaded from database/Questinfo.ini at startup.
    // Maps every QuestID → its QuestType. Used for categorisation and reset logic.
    // ============================================================================
    public class QuestInfo
    {
        public struct Info
        {
            public QuestID   MissionId;
            public QuestType TypeId;
        }

        public static uint ActionBase;
        public static SafeDictionary<QuestID, Info> AllQuests = new SafeDictionary<QuestID, Info>();

        public static void Load()
        {
            var lines = File.ReadAllLines("database\\Questinfo.ini");
            Info current = default;

            for (int i = 0; i < lines.Length; i++)
            {
                var parts = lines[i].Split('=');
                if (parts.Length < 2) continue;

                switch (parts[0])
                {
                    case "ActionBase":
                        ActionBase = uint.Parse(parts[1]);
                        break;

                    case "TotalMission":
                        AllQuests = new SafeDictionary<QuestID, Info>(int.Parse(parts[1]));
                        current = default;
                        break;

                    case "MissionId":
                    {
                        var id = (QuestID)uint.Parse(parts[1]);
                        // Start fresh for each new MissionId entry
                        current = new Info { MissionId = id };
                        if (!AllQuests.ContainsKey(id))
                            AllQuests.Add(id, current);
                        break;
                    }

                    case "TypeId":
                        current.TypeId = (QuestType)byte.Parse(parts[1]);
                        // Update the dictionary entry since structs are value types
                        var id2 = current.MissionId;
                        AllQuests[id2] = current;
                        break;
                }
            }
        }

        public static QuestType CheckType(QuestID uid) => AllQuests[uid].TypeId;
    }
}
