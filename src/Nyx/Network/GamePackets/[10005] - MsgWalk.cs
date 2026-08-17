using Nyx.Network.Protocol;

namespace Nyx.Server.Network.GamePackets
{
    /// <summary>
    /// Nyx patch 6323 protobuf-form movement packet. The constructor flag is retained for source
    /// compatibility; encoding is now performed once from the current fields by the canonical TQ
    /// writer instead of mutating a partially initialized legacy buffer.
    /// </summary>
    public sealed class GroundMovement : Interfaces.IPacket
    {
        private const ushort MessageId = (ushort)PacketType.MsgWalk;

        public const uint Walk = 0,
                          Run = 1,
                          Slide = 9;

        public GroundMovement(bool createInstance)
        {
        }

        public Game.Enums.ConquerAngle Direction;
        public uint UID;
        public uint GroundMovementType;
        public uint TimeStamp;
        public uint MapID;

        public byte[] Encode()
        {
            int payloadLength = TaggedVarUInt32Size(1, (uint)Direction)
                + TaggedVarUInt32Size(2, UID)
                + TaggedVarUInt32Size(3, GroundMovementType)
                + TaggedVarUInt32Size(4, TimeStamp)
                + TaggedVarUInt32Size(5, MapID);

            byte[] frame = GC.AllocateUninitializedArray<byte>(
                TqPacketProtocol.HeaderSize + payloadLength + TqPacketProtocol.SealSize);
            var writer = new TqPacketWriter(frame, MessageId, TqPacketSeal.Server);
            writer.WriteTaggedVarUInt32(1, (uint)Direction);
            writer.WriteTaggedVarUInt32(2, UID);
            writer.WriteTaggedVarUInt32(3, GroundMovementType);
            writer.WriteTaggedVarUInt32(4, TimeStamp);
            writer.WriteTaggedVarUInt32(5, MapID);
            writer.Complete();
            return frame;
        }

        public void Deserialize(byte[] buffer)
        {
            if (!TqPacket.TryParse(
                    buffer,
                    TqPacketFraming.Game,
                    TqPacketSeal.Client,
                    out TqPacket packet,
                    out TqPacketValidationError error))
            {
                throw new InvalidDataException($"Invalid MsgWalk frame: {error}.");
            }

            if (packet.Id != MessageId)
                throw new InvalidDataException($"Expected MsgWalk ({MessageId}), received {packet.Id}.");

            var reader = new TqPacketReader(packet.Payload.Span);
            Direction = (Game.Enums.ConquerAngle)(ReadVarIntField(ref reader, 1) % 24);
            UID = ReadVarIntField(ref reader, 2);
            GroundMovementType = ReadVarIntField(ref reader, 3);
            TimeStamp = ReadVarIntField(ref reader, 4);
            MapID = ReadVarIntField(ref reader, 5);

            if (!reader.End)
                throw new InvalidDataException($"MsgWalk contains {reader.Remaining} unexpected payload byte(s).");
        }

        public void Send(Client.GameClient client) => client.Send(Encode());

        private static uint ReadVarIntField(ref TqPacketReader reader, int expectedField)
        {
            uint tag = reader.ReadVarUInt32();
            uint expectedTag = (uint)expectedField << 3;
            if (tag != expectedTag)
                throw new InvalidDataException($"MsgWalk expected protobuf tag {expectedTag}, received {tag}.");
            return reader.ReadVarUInt32();
        }

        private static int TaggedVarUInt32Size(int fieldNumber, uint value) =>
            VarUInt32Size((uint)fieldNumber << 3) + VarUInt32Size(value);

        private static int VarUInt32Size(uint value)
        {
            int length = 1;
            while (value >= 0x80)
            {
                value >>= 7;
                length++;
            }
            return length;
        }
    }
}
