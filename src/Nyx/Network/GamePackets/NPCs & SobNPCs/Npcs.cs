using System;
using System.Buffers.Binary;
using System.Text;
using Nyx.Network.Protocol;
using Nyx.Server.Utilities;

namespace Nyx.Server.Network.GamePackets
{
    public class NpcRequest : Writer, Interfaces.IPacket
    {
        private const ushort NpcMessageId = (ushort)PacketType.MsgNpc;
        private const ushort TaskDialogMessageId = (ushort)PacketType.MsgTaskDialog;
        private byte[] Buffer = Array.Empty<byte>();

        public void Deserialize(byte[] buffer)
        {
            ArgumentNullException.ThrowIfNull(buffer);
            if (!TqPacket.TryParse(
                    buffer,
                    TqPacketFraming.Game,
                    TqPacketSeal.Client,
                    out TqPacket packet,
                    out TqPacketValidationError error) ||
                (packet.Id != NpcMessageId && packet.Id != TaskDialogMessageId))
            {
                throw new InvalidDataException($"Invalid NpcRequest frame: {error}.");
            }

            Buffer = buffer;
        }

        public byte[] Encode() => Buffer;

        public uint NpcID
        {
            get => Buffer.Length >= 12
                ? BinaryPrimitives.ReadUInt32LittleEndian(Buffer.AsSpan(8))
                : 0;
            set
            {
                EnsureBuffer(12);
                BinaryPrimitives.WriteUInt32LittleEndian(Buffer.AsSpan(8), value);
            }
        }

        public byte OptionID
        {
            get => Buffer.Length > 14 ? Buffer[14] : (byte)0;
            set
            {
                EnsureBuffer(15);
                Buffer[14] = value;
            }
        }

        public byte InteractType => Buffer.Length > 15 ? Buffer[15] : (byte)0;

        public string Input
        {
            get
            {
                if (Buffer.Length <= 17)
                    return string.Empty;

                int length = Buffer[17];
                int declaredLength = BinaryPrimitives.ReadUInt16LittleEndian(Buffer);
                return length == 0 || length > declaredLength - 18
                    ? string.Empty
                    : Encoding.ASCII.GetString(Buffer, 18, length);
            }
        }

        public static NpcRequest? FromPacket(byte[]? packet)
        {
            if (packet is null)
                return null;

            var request = new NpcRequest();
            request.Deserialize(packet);
            return request;
        }

        public static byte[] CreatePacket(uint npcId, byte optionId, byte interactType, string input = "")
        {
            input ??= string.Empty;
            int inputLength = Encoding.ASCII.GetByteCount(input);
            if (inputLength > byte.MaxValue)
                throw new ArgumentOutOfRangeException(nameof(input));

            // Header + timestamp + NPC + padding/options + reserved byte + string8 + client seal.
            byte[] frame = GC.AllocateUninitializedArray<byte>(
                TqPacketProtocol.HeaderSize + 14 + inputLength + TqPacketProtocol.SealSize);
            var writer = new TqPacketWriter(frame, NpcMessageId, TqPacketSeal.Client);
            writer.WriteUInt32(0);
            writer.WriteUInt32(npcId);
            writer.WriteUInt16(0);
            writer.WriteByte(optionId);
            writer.WriteByte(interactType);
            writer.WriteByte(0);
            writer.WriteString8(input);
            writer.Complete();
            return frame;
        }

        public void Send(Client.GameClient client) => client.Send(Buffer);

        private void EnsureBuffer(int requiredLength)
        {
            if (Buffer.Length < requiredLength)
                throw new InvalidOperationException("NpcRequest has not been deserialized.");
        }
    }
    public class NpcReply : Writer, Interfaces.IPacket
    {
        public const byte
            Dialog = 1,
            Option = 2,
            Input = 3,
            Avatar = 4,
            MessageBox = 6,
            Finish = 100;

        private byte[] Buffer;

        public NpcReply()
        {
            Buffer = new byte[28];
            Writer.Write((ushort)20, 0, Buffer);
            Writer.Write(2032, 2, Buffer);
            Write((uint)GameTime.Now.GetHashCode(), 4, Buffer);
        }
        public NpcReply(byte interactType, string text)
        {
            Buffer = new byte[29];
            Writer.Write((ushort)(21 + text.Length), 0, Buffer);
            Writer.Write(2032, 2, Buffer);
            Write((uint)GameTime.Now.GetHashCode(), 4, Buffer);
            InteractType = interactType;
            OptionID = 255;
            DontDisplay = true;
            Text = text;
        }
        public void Reset()
        {
            OptionID = 255;
            DontDisplay = true;
            Text = "";
        }

        public byte[] Encode()
        {
            return Buffer;
        }
        public void Deserialize(byte[] buffer)
        {
            Buffer = buffer;
        }
        /// <summary>
        /// This should be the max length of the input string if the interact type is
        /// `Input`. Otherwise, if it is neither of these two, it should be 0.
        /// </summary>
        public ushort InputMaxLength
        {
            get { return BitConverter.ToUInt16(Buffer, 12); }
            set { Writer.Write(value, 12, Buffer); }
        }
        public byte OptionID
        {
            get { return Buffer[14]; }
            set { Buffer[14] = value; }
        }
        public byte InteractType
        {
            get { return Buffer[15]; }
            set { Buffer[15] = value; }
        }
        /// <summary>
        /// This should be set to false when your sending the packet with the
        /// interaction type `Finish`, otherwise true
        /// </summary>
        public bool DontDisplay
        {
            get { return (Buffer[16] == 1); }
            set { Buffer[16] = (byte)(value ? 1 : 0); }
        }
        public string Text
        {
            get { return Encoding.Default.GetString(Buffer, 18, Buffer[17]); }
            set
            {
                int realloc = value.Length + 12 + 17;
                if (realloc != Buffer.Length)
                {
                    byte[] new_Packet = new byte[realloc];
                    System.Buffer.BlockCopy(Buffer, 0, new_Packet, 0, 28);
                    Buffer = new_Packet;
                }
                Writer.Write((ushort)(value.Length + 21), 0, Buffer);
                Writer.WriteWithLength(value, 17, Buffer);
            }
        }
        public void Send(Client.GameClient client)
        {
            client.Send(Buffer);
        }
    }
    public class NpcSpawn : Writer, Interfaces.IPacket, Interfaces.INpc, Interfaces.IMapObject
    {
        private byte[] Buffer;
        private ushort _MapID;
        private string _Name;
        public NpcSpawn(bool Created = true)
        {
            if (Created)
            {
                Buffer = new byte[36];
                Writer.Write(28, 0, Buffer);
                Writer.Write(2030, 2, Buffer);
                Write((uint)GameTime.Now.GetHashCode(), 4, Buffer);
            }

        }

        public uint UID
        {
            get { return BitConverter.ToUInt32(Buffer, 8); }
            set { Write(value, 8, Buffer); }
        }

        public ushort X
        {
            get { return BitConverter.ToUInt16(Buffer, 16); }
            set { Writer.Write(value, 16, Buffer); }
        }

        public ushort Y
        {
            get { return BitConverter.ToUInt16(Buffer, 18); }
            set { Writer.Write(value, 18, Buffer); }
        }

        public ushort Mesh
        {
            get { return BitConverter.ToUInt16(Buffer, 20); }
            set { Writer.Write(value, 20, Buffer); }
        }

        public Nyx.Server.Game.Enums.NpcType Type
        {
            get { return (Nyx.Server.Game.Enums.NpcType)Buffer[22]; }
            set { Buffer[22] = (byte)value; }
        }

        public ushort MapID { get { return _MapID; } set { _MapID = value; } }

        public Nyx.Server.Game.MapObjectType MapObjType { get { return Nyx.Server.Game.MapObjectType.Npc; } }

        public Client.GameClient Owner { get { return null; } }

        public void SendSpawn(Client.GameClient client, bool checkScreen)
        {
            if (client.Screen.Add(this) || !checkScreen)
            {
                client.Send(Buffer);
            }
        }
        public void SendSpawn(Client.GameClient client)
        {
            SendSpawn(client, false);
        }
        public string Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;

                byte[] buffer = new byte[90];
                Buffer.CopyTo(buffer, 0);
                Writer.Write((ushort)(buffer.Length - 8), 0, buffer);
                buffer[32] = 1;
                Writer.WriteWithLength(value, 33, buffer);
                Buffer = buffer;
            }
        }
        public byte[] Encode()
        {
            return Buffer;
        }
        public void Deserialize(byte[] buffer)
        {
            Buffer = buffer;
        }
        public void Send(Client.GameClient client)
        {
            SendSpawn(client, false);
        }
    }
}
