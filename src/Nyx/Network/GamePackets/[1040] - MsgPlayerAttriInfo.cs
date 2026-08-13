using Nyx.Server;
using Nyx.Server.Client;
using Nyx.Server.Network;
using Nyx.Server.Utilities;
using System;
using System.Buffers.Binary;

namespace Nyx.Server.Network.GamePackets
{
    public sealed class WindowsStats : Interfaces.IPacket
    {
        private const ushort PacketType = 1040;
        private const int PacketLength = 152; // 8 header + 144 body

        private byte[] _buffer = new byte[PacketLength];

        public WindowsStats() { }

        public WindowsStats(Client.GameClient client)
        {
            EncodeFromClient(client);
        }

        public void EncodeFromClient(Client.GameClient client)
        {
            if (client?.Entity == null)
                throw new ArgumentNullException(nameof(client), "Entity cannot be null.");

            Span<byte> buffer = _buffer;

            // Header
            BinaryPrimitives.WriteUInt16LittleEndian(buffer, (ushort)(PacketLength - 8));
            BinaryPrimitives.WriteUInt16LittleEndian(buffer[2..], PacketType);
            BinaryPrimitives.WriteUInt32LittleEndian(buffer[4..], (uint)GameTime.Now.GetHashCode());

            var e = client.Entity;
            int offset = 8;

            Write(ref buffer, ref offset, e.UID);
            Write(ref buffer, ref offset, e.MaxHitpoints);
            Write(ref buffer, ref offset, (uint)e.MaxMana);
            Write(ref buffer, ref offset, (uint)e.MaxAttack);
            Write(ref buffer, ref offset, (uint)e.MinAttack);
            Write(ref buffer, ref offset, (uint)e.Defence);
            Write(ref buffer, ref offset, (uint)e.MagicAttack);
            Write(ref buffer, ref offset, (uint)e.MagicDefence);
            Write(ref buffer, ref offset, (uint)e.Dodge);
            Write(ref buffer, ref offset, (uint)(e.Agility + e.HitRate));
            Write(ref buffer, ref offset, (uint)e.Accuracy);
            Write(ref buffer, ref offset, (uint)e.Gems[1]);
            Write(ref buffer, ref offset, (uint)e.Gems[0]);
            Write(ref buffer, ref offset, (uint)e.MagicDefencePercent);
            Write(ref buffer, ref offset, (uint)e.Gems[7]);
            Write(ref buffer, ref offset, (uint)((1 - e.ItemBless) * 100));
            Write(ref buffer, ref offset, (uint)e.CriticalStrike);
            Write(ref buffer, ref offset, (uint)e.SkillCStrike);
            Write(ref buffer, ref offset, (uint)e.Immunity);
            Write(ref buffer, ref offset, (uint)e.Penetration);
            Write(ref buffer, ref offset, (uint)e.Block);
            Write(ref buffer, ref offset, (uint)e.Breaktrough);
            Write(ref buffer, ref offset, (uint)e.Counteraction);
            Write(ref buffer, ref offset, (uint)e.Detoxication);
            Write(ref buffer, ref offset, (uint)e.PhysicalDamageIncrease);
            Write(ref buffer, ref offset, (uint)e.MagicDamageIncrease);
            Write(ref buffer, ref offset, (uint)e.PhysicalDamageDecrease);
            Write(ref buffer, ref offset, (uint)e.MagicDamageDecrease);
            Write(ref buffer, ref offset, (uint)e.MetalResistance);
            Write(ref buffer, ref offset, (uint)e.WoodResistance);
            Write(ref buffer, ref offset, (uint)e.WaterResistance);
            Write(ref buffer, ref offset, (uint)e.FireResistance);
            Write(ref buffer, ref offset, (uint)e.EarthResistance);
            Write(ref buffer, ref offset, (uint)client.Equipment.TotalPerfectionLevel);
        }

        public byte[] Encode() => _buffer;

        public void Deserialize(byte[] buffer)
        {
            _buffer = buffer;
        }

        public void Send(Client.GameClient client)
        {
            client.Send(_buffer);
        }

        private static void Write(ref Span<byte> buffer, ref int offset, uint value)
        {
            BinaryPrimitives.WriteUInt32LittleEndian(buffer[offset..], value);
            offset += 4;
        }
    }

}
