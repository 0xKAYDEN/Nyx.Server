using System.Buffers.Binary;

namespace Nyx.Network.Protocol;

/// <summary>
/// An allocation-free view over one complete Conquer Online packet.
/// The view never changes or normalizes the supplied bytes.
/// </summary>
public readonly struct TqPacket
{
    private readonly ReadOnlyMemory<byte> _frame;

    private TqPacket(ReadOnlyMemory<byte> frame, ushort length, ushort id, TqPacketSeal seal)
    {
        _frame = frame;
        Length = length;
        Id = id;
        Seal = seal;
    }

    /// <summary>Protocol length, including the four-byte header and excluding the seal.</summary>
    public ushort Length { get; }

    public ushort Id { get; }

    public TqPacketSeal Seal { get; }

    /// <summary>The complete, byte-for-byte wire frame.</summary>
    public ReadOnlyMemory<byte> Frame => _frame;

    /// <summary>The declared packet bytes, excluding an optional footer.</summary>
    public ReadOnlyMemory<byte> DeclaredPacket => _frame[..Length];

    /// <summary>The packet-specific bytes after the common length/id header.</summary>
    public ReadOnlyMemory<byte> Payload => _frame.Slice(TqPacketProtocol.HeaderSize, Length - TqPacketProtocol.HeaderSize);

    public bool HasSeal => _frame.Length == Length + TqPacketProtocol.SealSize;

    public static bool TryParse(
        ReadOnlyMemory<byte> frame,
        TqPacketFraming framing,
        TqPacketSeal expectedSeal,
        out TqPacket packet,
        out TqPacketValidationError error,
        int maximumPacketLength = TqPacketProtocol.DefaultMaximumPacketLength)
    {
        packet = default;
        error = TqPacketValidationError.None;

        if (maximumPacketLength < TqPacketProtocol.MinimumPacketLength || maximumPacketLength > ushort.MaxValue)
            throw new ArgumentOutOfRangeException(nameof(maximumPacketLength));

        if (frame.Length < TqPacketProtocol.HeaderSize)
        {
            error = TqPacketValidationError.IncompleteHeader;
            return false;
        }

        ReadOnlySpan<byte> bytes = frame.Span;
        ushort declaredLength = BinaryPrimitives.ReadUInt16LittleEndian(bytes);
        ushort id = BinaryPrimitives.ReadUInt16LittleEndian(bytes[2..]);

        if (declaredLength < TqPacketProtocol.MinimumPacketLength)
        {
            error = TqPacketValidationError.LengthBelowMinimum;
            return false;
        }

        if (declaredLength > maximumPacketLength)
        {
            error = TqPacketValidationError.LengthAboveMaximum;
            return false;
        }

        bool hasSeal = framing == TqPacketFraming.Game;
        int expectedLength = TqPacketProtocol.GetFrameLength(declaredLength, hasSeal);
        if (frame.Length != expectedLength)
        {
            error = frame.Length < expectedLength
                ? TqPacketValidationError.IncompleteFrame
                : TqPacketValidationError.TrailingData;
            return false;
        }

        TqPacketSeal actualSeal = TqPacketSeal.None;
        if (hasSeal)
        {
            ulong rawSeal = BinaryPrimitives.ReadUInt64LittleEndian(bytes.Slice(declaredLength, TqPacketProtocol.SealSize));
            actualSeal = (TqPacketSeal)rawSeal;

            if (!TqPacketProtocol.IsKnownSeal(rawSeal))
            {
                error = TqPacketValidationError.UnknownSeal;
                return false;
            }

            if (expectedSeal != TqPacketSeal.None && actualSeal != expectedSeal)
            {
                error = TqPacketValidationError.WrongSeal;
                return false;
            }
        }
        else if (expectedSeal != TqPacketSeal.None)
        {
            throw new ArgumentException("Authentication framing has no TQ seal.", nameof(expectedSeal));
        }

        packet = new TqPacket(frame, declaredLength, id, actualSeal);
        return true;
    }
}

public enum TqPacketValidationError : byte
{
    None = 0,
    IncompleteHeader,
    LengthBelowMinimum,
    LengthAboveMaximum,
    IncompleteFrame,
    TrailingData,
    UnknownSeal,
    WrongSeal
}
