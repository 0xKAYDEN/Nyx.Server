using Nyx.Network.Protocol;

namespace Nyx.Network.Tests;

public sealed class TqHandshakeAccumulatorTests
{
    [Fact]
    public void EveryTwoPartSplit_PreservesResponseAndTrailingBytes()
    {
        byte[] response = Enumerable.Range(0, TqHandshakeAccumulator.ClientResponseLength)
            .Select(static value => (byte)value)
            .ToArray();
        byte[] trailing = [0x24, 0x00, 0x1C, 0x04, 0x54, 0x51, 0x43, 0x6C];
        byte[] stream = [.. response, .. trailing];

        for (int split = 0; split < response.Length; split++)
        {
            var accumulator = new TqHandshakeAccumulator();

            bool firstComplete = accumulator.Append(
                stream.AsSpan(0, split),
                out byte[] firstResponse,
                out byte[] firstTrailing);

            Assert.Equal(split == response.Length, firstComplete);
            if (firstComplete)
            {
                Assert.Equal(response, firstResponse);
                Assert.Empty(firstTrailing);
                continue;
            }

            Assert.Empty(firstResponse);
            Assert.Empty(firstTrailing);

            bool complete = accumulator.Append(
                stream.AsSpan(split),
                out byte[] actualResponse,
                out byte[] actualTrailing);

            Assert.True(complete);
            Assert.Equal(response, actualResponse);
            Assert.Equal(trailing, actualTrailing);
        }
    }

    [Fact]
    public void CompletingResponseAndPacketInOneRead_ReturnsExactTail()
    {
        byte[] response = new byte[TqHandshakeAccumulator.ClientResponseLength];
        byte[] trailing = [1, 2, 3, 4, 5];
        byte[] stream = [.. response, .. trailing];
        var accumulator = new TqHandshakeAccumulator();

        Assert.True(accumulator.Append(stream, out byte[] actualResponse, out byte[] actualTrailing));
        Assert.Equal(response, actualResponse);
        Assert.Equal(trailing, actualTrailing);
        Assert.Throws<InvalidOperationException>(() => accumulator.Append([], out _, out _));
    }
}
