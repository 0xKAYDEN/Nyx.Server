using System.Buffers.Binary;
using System.Text;
using Nyx.Network.Protocol;

namespace Nyx.Network.Tests;

public sealed class TqHandshakeAccumulatorTests
{
    [Fact]
    public void EveryTwoPartSplit_LocatesEnvelopeResponseAndPreservesTrailingBytes()
    {
        byte[] envelope = Enumerable.Range(1, 31).Select(static value => (byte)value).ToArray();
        byte[] response = CreateResponse();
        byte[] trailing = [0x24, 0x00, 0x1C, 0x04, 0x54, 0x51, 0x43, 0x6C];
        byte[] stream = [.. envelope, .. response, .. trailing];
        int responseEnd = envelope.Length + response.Length;

        for (int split = 0; split < responseEnd; split++)
        {
            var accumulator = new TqHandshakeAccumulator();

            Assert.False(accumulator.Append(
                stream.AsSpan(0, split),
                out byte[] firstResponse,
                out byte[] firstTrailing));
            Assert.Empty(firstResponse);
            Assert.Empty(firstTrailing);

            Assert.True(accumulator.Append(
                stream.AsSpan(split),
                out byte[] actualResponse,
                out byte[] actualTrailing));
            Assert.Equal(response, actualResponse);
            Assert.Equal(trailing, actualTrailing);
        }
    }

    [Fact]
    public void OneByteReads_LocatePatch6323ResponseBehindVariableEnvelope()
    {
        byte[] envelope = Enumerable.Repeat((byte)0x5A, 34).ToArray();
        byte[] response = CreateResponse();
        byte[] stream = [.. envelope, .. response];
        var accumulator = new TqHandshakeAccumulator();

        for (int index = 0; index < stream.Length - 1; index++)
            Assert.False(accumulator.Append(stream.AsSpan(index, 1), out _, out _));

        Assert.True(accumulator.Append(stream.AsSpan(stream.Length - 1), out byte[] actualResponse, out byte[] trailing));
        Assert.Equal(response, actualResponse);
        Assert.Empty(trailing);
    }

    [Fact]
    public void FalseLengthMarkerInEnvelope_IsIgnored()
    {
        byte[] envelope = new byte[160];
        BinaryPrimitives.WriteInt32LittleEndian(envelope, TqHandshakeAccumulator.PublicKeyLength);
        envelope.AsSpan(sizeof(int), TqHandshakeAccumulator.PublicKeyLength).Fill((byte)'x');
        byte[] response = CreateResponse();
        byte[] trailing = [1, 2, 3, 4, 5];
        byte[] stream = [.. envelope, .. response, .. trailing];
        var accumulator = new TqHandshakeAccumulator();

        Assert.True(accumulator.Append(stream, out byte[] actualResponse, out byte[] actualTrailing));
        Assert.Equal(response, actualResponse);
        Assert.Equal(trailing, actualTrailing);
        Assert.Throws<InvalidOperationException>(() => accumulator.Append([], out _, out _));
    }

    private static byte[] CreateResponse()
    {
        byte[] response = new byte[TqHandshakeAccumulator.ClientResponseLength];
        BinaryPrimitives.WriteInt32LittleEndian(response, TqHandshakeAccumulator.PublicKeyLength);
        Encoding.ASCII.GetBytes(new string('a', TqHandshakeAccumulator.PublicKeyLength))
            .CopyTo(response, sizeof(int));
        Encoding.ASCII.GetBytes("TQClient").CopyTo(
            response,
            sizeof(int) + TqHandshakeAccumulator.PublicKeyLength);
        return response;
    }
}
