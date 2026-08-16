using System.Collections.Concurrent;
using Microsoft.Extensions.Options;
using Nyx.Auth.Configuration;

namespace Nyx.Auth.Security;

/// <summary>
/// Lightweight IP-based brute-force guard. Decays failed-attempt counters on a
/// background timer so the auth process never depends on the game World's scheduler.
/// </summary>
public sealed class LoginRateLimiter : IDisposable
{
    private readonly ConcurrentDictionary<int, AttemptState> _attempts = new();
    private readonly object _sync = new();
    private readonly int _maxAttempts;
    private readonly int _decaySeconds;
    private readonly Timer _timer;
    private bool _disposed;

    public LoginRateLimiter(IOptions<AuthServerOptions> options)
    {
        var auth = options.Value.Auth;
        _maxAttempts = Math.Max(1, auth.MaxFailedAttempts);
        _decaySeconds = Math.Max(5, auth.AttemptDecaySeconds);
        _timer = new Timer(OnTick, null, TimeSpan.FromSeconds(1), TimeSpan.FromSeconds(1));
    }

    public bool Allow(string ip)
    {
        if (string.IsNullOrEmpty(ip))
            return true;

        var key = ip.GetHashCode();
        return !_attempts.TryGetValue(key, out var state) || state.Count < _maxAttempts;
    }

    public void RegisterFailure(string ip)
    {
        if (string.IsNullOrEmpty(ip) || ip is "127.0.0.1" or "::1")
            return;

        var key = ip.GetHashCode();
        lock (_sync)
        {
            var state = _attempts.GetOrAdd(key, static _ => new AttemptState());
            state.Count++;
            state.LastTouchTick = Environment.TickCount64;
        }
    }

    private void OnTick(object? _)
    {
        if (_disposed)
            return;

        var now = Environment.TickCount64;
        var decayMs = _decaySeconds * 1000L;
        List<int>? expired = null;

        foreach (var pair in _attempts)
        {
            if (now - pair.Value.LastTouchTick < decayMs)
                continue;

            lock (_sync)
            {
                if (now - pair.Value.LastTouchTick < decayMs)
                    continue;

                if (pair.Value.Count > 0)
                {
                    pair.Value.Count--;
                    pair.Value.LastTouchTick = now;
                }

                if (pair.Value.Count == 0)
                {
                    expired ??= new List<int>();
                    expired.Add(pair.Key);
                }
            }
        }

        if (expired is null)
            return;

        foreach (var key in expired)
            _attempts.TryRemove(key, out _);
    }

    public void Dispose()
    {
        if (_disposed)
            return;

        _disposed = true;
        _timer.Dispose();
    }

    private sealed class AttemptState
    {
        public uint Count;
        public long LastTouchTick = Environment.TickCount64;
    }
}
