using Nyx.AI.DataCollection;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Nyx.AI.Kernal
{
    public static class GameEventLogger
    {
        private static readonly BlockingCollection<GameEvents> _queue = new();
        private static readonly CancellationTokenSource _cts = new();

        static GameEventLogger()
        {
            Task.Run(ProcessQueueAsync);
        }

        public static void Log(GameEvents evt)
        {
            try
            {
                _queue.Add(evt);
            }
            catch (InvalidOperationException)
            {
                // Queue closed — ignore during shutdown
            }
        }

        private static async Task ProcessQueueAsync()
        {
            string logDir = Path.Combine(AppContext.BaseDirectory, "Logs", "Events");
            Directory.CreateDirectory(logDir);

            while (!_cts.Token.IsCancellationRequested)
            {
                try
                {
                    string logFile = Path.Combine(logDir, $"events_{DateTime.UtcNow:yyyyMMdd_HH}.jsonl");

                    await using var writer = new StreamWriter(new FileStream(logFile, FileMode.Append, FileAccess.Write, FileShare.ReadWrite));

                    foreach (var evt in _queue.GetConsumingEnumerable(_cts.Token))
                    {
                        string json = JsonSerializer.Serialize(evt);
                        await writer.WriteLineAsync(json);
                        await writer.FlushAsync(); // ? flush immediately to ensure data is written
                    }
                }
                catch (OperationCanceledException)
                {
                    // Normal shutdown
                    break;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"[Logger Error] {ex}");
                    await Task.Delay(1000); // avoid tight error loop
                }
            }
        }

        public static void Stop()
        {
            _cts.Cancel();
            _queue.CompleteAdding();
        }
    }
}
