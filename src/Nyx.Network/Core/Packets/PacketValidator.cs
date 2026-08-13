using System;

namespace Nyx.Network.Core.Packets
{
    /// <summary>
    /// Helper methods for validating packet structure
    /// </summary>
    public static class PacketValidator
    {
        public const ushort MinPacketSize = 4; // At least length + ID
        public const ushort MaxPacketSize = 1024; // Reasonable upper limit
        public const int SealSize = 8; // TQ packet seal size

        /// <summary>
        /// Validates basic packet structure
        /// TQ protocol: declared length does NOT include the 8-byte seal at the end
        /// </summary>
        /// <param name="packet">Packet to validate</param>
        /// <param name="error">Error message if validation fails</param>
        /// <param name="hasSeal">Whether the packet includes a seal (default: true for game packets)</param>
        public static bool IsValid(byte[]? packet, out string? error, bool hasSeal = true)
        {
            error = null;

            if (packet == null)
            {
                error = "Packet is null";
                return false;
            }

            if (packet.Length < MinPacketSize)
            {
                error = $"Packet too small: {packet.Length} bytes (minimum: {MinPacketSize})";
                return false;
            }

            if (packet.Length > MaxPacketSize)
            {
                error = $"Packet too large: {packet.Length} bytes (maximum: {MaxPacketSize})";
                return false;
            }

            ushort declaredLength = BitConverter.ToUInt16(packet, 0);
            
            if (declaredLength < MinPacketSize)
            {
                error = $"Declared length too small: {declaredLength}";
                return false;
            }

            // TQ protocol: declared length does NOT include the seal
            // So actual packet length = declared length + seal size (if seal is present)
            int expectedLength = declaredLength + (hasSeal ? SealSize : 0);
            
            if (expectedLength != packet.Length)
            {
                error = $"Length mismatch: declared {declaredLength}, expected {expectedLength} (with seal), actual {packet.Length}";
                return false;
            }

            return true;
        }

        /// <summary>
        /// Validates packet has minimum required size
        /// </summary>
        public static bool HasMinimumSize(byte[] packet, int requiredSize)
        {
            return packet != null && packet.Length >= requiredSize;
        }

        /// <summary>
        /// Safely reads a ushort from packet at offset
        /// </summary>
        public static bool TryReadUInt16(byte[] packet, int offset, out ushort value)
        {
            value = 0;
            if (packet == null || offset + 2 > packet.Length)
                return false;

            value = BitConverter.ToUInt16(packet, offset);
            return true;
        }

        /// <summary>
        /// Safely reads a uint from packet at offset
        /// </summary>
        public static bool TryReadUInt32(byte[] packet, int offset, out uint value)
        {
            value = 0;
            if (packet == null || offset + 4 > packet.Length)
                return false;

            value = BitConverter.ToUInt32(packet, offset);
            return true;
        }

        /// <summary>
        /// Validates TQ seal at end of packet
        /// </summary>
        public static bool ValidateSeal(byte[] packet, ulong expectedSeal)
        {
            if (packet == null || packet.Length < 8)
                return false;

            ulong seal = BitConverter.ToUInt64(packet, packet.Length - 8);
            return seal == expectedSeal;
        }
    }
}

