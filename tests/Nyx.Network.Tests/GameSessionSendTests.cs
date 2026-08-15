using System.Buffers.Binary;
using System.Net;
using System.Net.Sockets;
using Nyx.Network;

namespace Nyx.Network.Tests;

public sealed class GameSessionSendTests
{
    [Fact]
    public async Task ConcurrentLargeSends_ArriveAsCompleteNonInterleavedBuffers()
    {
        const int messageCount = 24;
        const int messageLength = 128 * 1024;

        using var listener = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
        listener.Bind(new IPEndPoint(IPAddress.Loopback, 0));
        listener.Listen(1);

        var endpoint = (IPEndPoint)listener.LocalEndPoint!;
        using var receiver = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
        var accept = listener.AcceptAsync();
        await receiver.ConnectAsync(endpoint);
        using Socket sender = await accept;
        sender.SendBufferSize = 1024;
        using var session = new GameSession(sender);

        byte[][] messages = Enumerable.Range(0, messageCount)
            .Select(sequence => CreateMessage(sequence, messageLength))
            .ToArray();

        await Task.WhenAll(messages.Select(message => Task.Run(() => session.Send(message))));

        byte[] wireBytes = GC.AllocateUninitializedArray<byte>(messageCount * messageLength);
        using var timeout = new CancellationTokenSource(TimeSpan.FromSeconds(20));
        int received = 0;
        while (received < wireBytes.Length)
        {
            int count = await receiver.ReceiveAsync(
                wireBytes.AsMemory(received),
                SocketFlags.None,
                timeout.Token);
            Assert.NotEqual(0, count);
            received += count;
        }

        var observed = new HashSet<int>();
        for (int offset = 0; offset < wireBytes.Length; offset += messageLength)
        {
            ReadOnlySpan<byte> message = wireBytes.AsSpan(offset, messageLength);
            Assert.Equal(messageLength, BinaryPrimitives.ReadInt32LittleEndian(message));

            int sequence = BinaryPrimitives.ReadInt32LittleEndian(message[sizeof(int)..]);
            Assert.InRange(sequence, 0, messageCount - 1);
            Assert.True(observed.Add(sequence), $"Message {sequence} was received more than once.");

            byte expected = unchecked((byte)(sequence + 1));
            Assert.True(
                message[(sizeof(int) * 2)..].IndexOfAnyExcept(expected) < 0,
                $"Message {sequence} was interleaved or corrupted.");
        }

        Assert.Equal(messageCount, observed.Count);
    }

    private static byte[] CreateMessage(int sequence, int length)
    {
        byte[] message = GC.AllocateUninitializedArray<byte>(length);
        message.AsSpan().Fill(unchecked((byte)(sequence + 1)));
        BinaryPrimitives.WriteInt32LittleEndian(message, length);
        BinaryPrimitives.WriteInt32LittleEndian(message.AsSpan(sizeof(int)), sequence);
        return message;
    }
}
