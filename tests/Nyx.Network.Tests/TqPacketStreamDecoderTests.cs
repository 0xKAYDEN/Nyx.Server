using System.Buffers;
using Nyx.Network.Protocol;

namespace Nyx.Network.Tests;

public sealed class TqPacketStreamDecoderTests
{
    [Fact]
    public void Decoder_reassembles_every_possible_two_part_split()
    {
        byte[] expected = CreateClientPacket(10005, 0x01020304);

        for (int split = 1; split < expected.Length; split++)
        {
            using var decoder = new TqPacketStreamDecoder(TqPacketFraming.Game, TqPacketSeal.Client);
            decoder.Append(expected.AsSpan(0, split));
            Assert.Equal(TqPacketDecodeStatus.NeedMoreData, decoder.TryRead(out _, out _));

            decoder.Append(expected.AsSpan(split));
            Assert.Equal(TqPacketDecodeStatus.Frame, decoder.TryRead(out byte[]? actual, out TqPacketStreamError error));
            Assert.Equal(TqPacketStreamError.None, error);
            Assert.Equal(expected, actual);
            Assert.Equal(TqPacketDecodeStatus.NeedMoreData, decoder.TryRead(out _, out _));
        }
    }

    [Fact]
    public void Decoder_emits_coalesced_packets_in_wire_order()
    {
        byte[] first = CreateClientPacket(10005, 1);
        byte[] second = CreateClientPacket(10010, 2);
        byte[] coalesced = [.. first, .. second];

        using var decoder = new TqPacketStreamDecoder(TqPacketFraming.Game, TqPacketSeal.Client);
        decoder.Append(coalesced);

        Assert.Equal(TqPacketDecodeStatus.Frame, decoder.TryRead(out byte[]? actualFirst, out _));
        Assert.Equal(TqPacketDecodeStatus.Frame, decoder.TryRead(out byte[]? actualSecond, out _));
        Assert.Equal(first, actualFirst);
        Assert.Equal(second, actualSecond);
        Assert.Equal(TqPacketDecodeStatus.NeedMoreData, decoder.TryRead(out _, out _));
    }

    [Fact]
    public void Decoder_rejects_an_invalid_length_before_allocating_a_frame()
    {
        using var decoder = new TqPacketStreamDecoder(TqPacketFraming.Game, TqPacketSeal.Client);
        decoder.Append([0x03, 0x00]);

        Assert.Equal(TqPacketDecodeStatus.InvalidData, decoder.TryRead(out byte[]? frame, out TqPacketStreamError error));
        Assert.Null(frame);
        Assert.Equal(TqPacketStreamError.LengthBelowMinimum, error);
    }

    [Fact]
    public void Authentication_decoder_uses_declared_length_without_a_seal()
    {
        byte[] packet = new byte[8];
        var writer = new TqPacketWriter(packet, 1059, TqPacketSeal.None);
        writer.WriteInt32(123456);
        writer.Complete();

        using var decoder = new TqPacketStreamDecoder(TqPacketFraming.Authentication);
        decoder.Append(packet.AsSpan(0, 3));
        Assert.Equal(TqPacketDecodeStatus.NeedMoreData, decoder.TryRead(out _, out _));
        decoder.Append(packet.AsSpan(3));
        Assert.Equal(TqPacketDecodeStatus.Frame, decoder.TryRead(out byte[]? actual, out _));
        Assert.Equal(packet, actual);
    }

    [Fact]
    public void Decoder_enforces_the_configured_buffer_limit()
    {
        using var decoder = new TqPacketStreamDecoder(
            TqPacketFraming.Authentication,
            maximumPacketLength: TqPacketProtocol.MinimumPacketLength,
            maximumBufferedBytes: TqPacketProtocol.MinimumPacketLength);

        TqPacketStreamException exception = Assert.Throws<TqPacketStreamException>(
            () => decoder.Append(new byte[TqPacketProtocol.MinimumPacketLength + 1]));

        Assert.Equal(TqPacketStreamError.BufferLimitExceeded, exception.Error);
        Assert.Equal(0, decoder.BufferedBytes);
    }

    [Fact]
    public void Decoder_grows_its_pooled_buffer_for_valid_data_below_the_limit()
    {
        using var decoder = new TqPacketStreamDecoder(
            TqPacketFraming.Game,
            TqPacketSeal.Client,
            pool: new ExactArrayPool());
        byte[] data = new byte[5000];

        decoder.Append(data);

        Assert.Equal(data.Length, decoder.BufferedBytes);
    }

    private static byte[] CreateClientPacket(ushort id, uint value)
    {
        byte[] packet = new byte[TqPacketProtocol.HeaderSize + sizeof(uint) + TqPacketProtocol.SealSize];
        var writer = new TqPacketWriter(packet, id, TqPacketSeal.Client);
        writer.WriteUInt32(value);
        writer.Complete();
        return packet;
    }

    private sealed class ExactArrayPool : ArrayPool<byte>
    {
        public override byte[] Rent(int minimumLength) => new byte[minimumLength];

        public override void Return(byte[] array, bool clearArray = false)
        {
        }
    }
}
