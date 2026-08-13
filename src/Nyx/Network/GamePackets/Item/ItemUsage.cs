using Nyx.Network.Core.Packets;
using Nyx.Server.Utilities;

namespace Nyx.Server.Network.GamePackets
{
    public class ItemUsage : Writer, Interfaces.IPacket
    {

        public const byte
        BuyFromNPC = 1,
        SellToNPC = 2,
        RemoveInventory = 3,
        EquipItem = 4,
        Unknown5 = 5,
        UnequipItem = 6,
        ArrowReload = 8,
        ViewWarehouse = 9,
        WarehouseDeposit = 10,
        WarehouseWithdraw = 11,
        Repair = 14,
        VIPRepair = 15,
        DragonBallUpgrade = 19,
        MeteorUpgrade = 20,
        ShowBoothItems = 21,
        AddItemOnBoothForSilvers = 22,
        RemoveItemFromBooth = 23,
        BuyFromBooth = 24,
        UpdateDurability = 25,
        FireWorks = 26,
        AddItemOnBoothForConquerPoints = 29,
        Ping = 27,
        Enchant = 28,
        RedeemGear = 32,
        ClaimGear = 33,
        Unknown = 34,
        SocketTalismanWithItem = 35,
        SocketTalismanWithCPs = 36,
        DropItem = 37,
        DropMoney = 38,
        GemCompose = 39,
        ItemSell = 55,
        Bless = 40,
        Accessories = 41,
        MainEquipment = 44,
        AlternateEquipment = 45,
        ItemsReturned = 50,
        ToristSuper = 51,
        ChatItem = 52,
        ObtinedPoints = 53,
        LowerEquipment = 54,
        SocketerMan = 43,
        MergeStackableItems = 48,
        SplitStack = 49;

        private byte[] Buffer;

        public ItemUsage(bool Create)
        {
            if (Create)
            {
                //Encode();
                Buffer = new byte[112];
                Writer.Write(104, 0, Buffer);
                Writer.Write(1009, 2, Buffer);
                Write((uint)GameTime.Now.GetHashCode(), 4, Buffer);
            }
        }

        public uint UID /*{ get; set; }*/
        {
            get { return BitConverter.ToUInt32(Buffer, 8); }
            set
            {
                Write(value, 8, Buffer);
            }
        }

        public uint dwParam /*{ get; set; }*/
        {
            get { return BitConverter.ToUInt32(Buffer, 12); }
            set
            {
                Write(value, 12, Buffer);
            }
        }

        public byte ID /*{ get; set; }*/
        {
            get
            {
                return Buffer[20];
            }
            set
            {
                Buffer[20] = value;
            }
        }

        public uint dwExtraInfo /*{ get; set; }*/
        {
            get { return BitConverter.ToUInt32(Buffer, 26); }
    set { Write(value, 26, Buffer);
}
        }

        public uint dwExtraInfo2 /*{ get; set; }*/
        {
            get { return BitConverter.ToUInt32(Buffer, 30); }
    set { Write(value, 30, Buffer);
}
        }

        public uint dwExtraInfo3/* { get; set; }*/
        {
            get { return BitConverter.ToUInt32(Buffer, 34); }
    set { Write(value, 34, Buffer);
}
        }

        public uint dwParam2 /*{ get; set; }*/
        {
            get { return BitConverter.ToUInt32(Buffer, 91); }
    set { Write(value, 91, Buffer);
}
        }
        public uint[] Batch
        {
            get
            {
                uint[] items = new uint[dwExtraInfo];
                for (int i = 0; i < dwExtraInfo; i++)
                {
                    items[i] = BitConverter.ToUInt32(Buffer, 91 + 4 * i);
                }
                return items;
            }
            set
            {
                if (value != null)
                {
                    dwExtraInfo = (uint)value.Length;
                    for (int i = 0; i < dwExtraInfo; i++)
                    {
                        Write(value[i], 91 + 4 * i, Buffer);
                    }
                }
            }
        }

        //private uint[] _batch = Array.Empty<uint>();

        ///// <summary>
        ///// Batch of UIDs / values (used when dwExtraInfo indicates count)
        ///// </summary>
        //public uint[] Batch
        //{
        //    get => _batch;
        //    set => _batch = value ?? Array.Empty<uint>();
        //}

        public byte[] Encode()
        {
            //PacketWriter writer = new PacketWriter();
            //writer.Write(1009);
            //writer.Write((uint)GameTime.Now.GetHashCode()); //4
            //writer.Write(UID); //8 - 12
            //writer.Write(dwParam); //12 - 16
            //writer.BaseStream.Seek(20, SeekOrigin.Begin);
            //writer.Write(ID); //20
            //writer.BaseStream.Seek(26, SeekOrigin.Begin);
            //writer.Write(dwExtraInfo); //26
            //writer.Write(dwExtraInfo2); //30
            //writer.Write(dwExtraInfo3); //34
            //writer.BaseStream.Seek(91, SeekOrigin.Begin);
            //writer.Write(dwParam2); //91

            //foreach (uint item in _batch)
            //{
            //    writer.Write(item);
            //}

            //return writer.ToArray();
            return Buffer;

        }

        public void Deserialize(byte[] buffer)
        {
            //PacketReader reader = new PacketReader(buffer);
            //reader.ReadUInt16(); //lengh 0 - 2
            //reader.ReadUInt16(); //id 2 - 4
            //uint timestamp = reader.ReadUInt32(); // 4- 8
            //UID = reader.ReadUInt32();
            //dwParam = reader.ReadUInt32();
            //reader.BaseStream.Seek(20, SeekOrigin.Begin);
            //ID = reader.ReadByte();
            //reader.BaseStream.Seek(26, SeekOrigin.Begin);
            //dwExtraInfo = reader.ReadUInt32();
            //dwExtraInfo2 = reader.ReadUInt32();
            //dwExtraInfo3 = reader.ReadUInt32();
            //reader.BaseStream.Seek(91, SeekOrigin.Begin);
            //dwParam2 = reader.ReadUInt32();

            //// Read Batch using dwExtraInfo as count
            //if (dwExtraInfo > 0)
            //{
            //    _batch = new uint[dwExtraInfo];
            //    for (int i = 0; i < dwExtraInfo; i++)
            //    {
            //        _batch[i] = reader.ReadUInt32();
            //    }
            //}
            //else
            //{
            //    _batch = Array.Empty<uint>();
            //}
            Buffer = buffer;
        }
        public void Send(Client.GameClient client)
        {
            client.Send(Buffer);
        }
    }
}
