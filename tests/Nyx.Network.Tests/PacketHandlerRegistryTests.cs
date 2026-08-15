using Nyx.Network.Protocol;

namespace Nyx.Network.Tests;

public sealed class PacketHandlerRegistryTests
{
    [Fact]
    public async Task Discovery_builds_a_dense_dispatch_table_once()
    {
        var registry = PacketHandlerRegistry<TestContext>.Discover(typeof(PacketHandlerRegistryTests).Assembly);
        var context = new TestContext();
        byte[] packet = [0x04, 0x00, 0x92, 0x10];

        bool handled = await registry.DispatchAsync(context, 4242, packet);
        bool unknown = await registry.DispatchAsync(context, 4243, packet);

        Assert.True(handled);
        Assert.False(unknown);
        Assert.Equal(1, registry.Count);
        Assert.Same(packet, context.Packet);
    }

    [Fact]
    public void Patch6323HandlersRegisterUnderTheExistingPacketNumbers()
    {
        var registry = PacketHandlerRegistry<Nyx.Server.Client.GameClient>.Discover(
            typeof(Nyx.Server.Network.PacketHandler).Assembly);

        Assert.Equal(5, registry.Count);
        Assert.True(registry.Contains((ushort)Nyx.Server.Network.PacketType.MsgTalk));
        Assert.True(registry.Contains((ushort)Nyx.Server.Network.PacketType.MsgWalk));
        Assert.True(registry.Contains((ushort)Nyx.Server.Network.PacketType.MsgAction));
        Assert.True(registry.Contains((ushort)Nyx.Server.Network.PacketType.MsgData));
        Assert.True(registry.Contains((ushort)Nyx.Server.Network.PacketType.MsgConnect));
        Assert.False(registry.Contains(1005));
    }

    [TqPacketHandler(4242)]
    private static ValueTask Handle(TestContext context, byte[] packet, CancellationToken cancellationToken)
    {
        context.Packet = packet;
        return ValueTask.CompletedTask;
    }

    private sealed class TestContext
    {
        public byte[]? Packet { get; set; }
    }
}
