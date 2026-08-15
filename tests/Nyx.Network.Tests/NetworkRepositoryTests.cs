using System.Net.Sockets;
using Nyx.Network;
using Nyx.Threading.Core;
using Nyx.Threading.Network;

namespace Nyx.Network.Tests;

public sealed class NetworkRepositoryTests
{
    [Fact]
    public async Task EnqueuePacketAsync_CompletesAfterHandlerRatherThanQueueAdmission()
    {
        await using var container = new ThreadContainer("packet-completion-test", 0, capacity: 8);
        var repository = new NetworkRepository("packets", container);
        using var socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
        using var session = new GameSession(socket);
        var entered = new TaskCompletionSource(TaskCreationOptions.RunContinuationsAsynchronously);
        var gate = new TaskCompletionSource(TaskCreationOptions.RunContinuationsAsynchronously);

        Task processing = repository.EnqueuePacketAsync(
            session,
            [1, 2, 3],
            async (_, _, cancellationToken) =>
            {
                entered.TrySetResult();
                await gate.Task.WaitAsync(cancellationToken);
            }).AsTask();

        await entered.Task.WaitAsync(TimeSpan.FromSeconds(5));
        Assert.False(processing.IsCompleted);

        gate.TrySetResult();
        await processing.WaitAsync(TimeSpan.FromSeconds(5));
    }

    [Fact]
    public async Task PooledTask_InvokesReleaseCallbackAfterExecution()
    {
        await using var container = new ThreadContainer("release-callback-test", 0, capacity: 8);
        var repository = new Repository("release", container);
        var released = new TaskCompletionSource(TaskCreationOptions.RunContinuationsAsynchronously);

        await repository.EnqueueTaskAsync(
            static _ => ValueTask.CompletedTask,
            () => released.TrySetResult());

        await released.Task.WaitAsync(TimeSpan.FromSeconds(5));
    }
}
