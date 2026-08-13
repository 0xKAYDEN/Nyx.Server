using Nyx.Brain.Models;
using Nyx.Brain.Services;

namespace Nyx.Brain
{
    public class NyxBrain : IDisposable
    {
        private readonly RateUpdateBackgroundService _backgroundService;
        private readonly RateConfiguration _config;
        private GameEnvironment _currentEnvironment;
        private bool _disposed;

        public event EventHandler<GameRates>? RatesUpdated;

        public GameRates CurrentRates => _backgroundService.CurrentRates;

        public NyxBrain(RateConfiguration? config = null)
        {
            _config = config ?? new RateConfiguration();
            _backgroundService = new RateUpdateBackgroundService(_config);
            _currentEnvironment = new GameEnvironment();
            
            _backgroundService.SetEnvironmentProvider(() => Task.FromResult(_currentEnvironment));
            _backgroundService.RatesUpdated += (sender, rates) => RatesUpdated?.Invoke(sender, rates);
        }

        public void Start()
        {
            _backgroundService.Start();
        }

        public void Stop()
        {
            _backgroundService.Stop();
        }

        public void UpdateGameEnvironment(GameEnvironment environment)
        {
            _currentEnvironment = environment;
        }

        public void UpdatePlayers(List<Player> players)
        {
            _currentEnvironment.ActivePlayers = players;
            _currentEnvironment.OnlinePlayerCount = players.Count;
        }

        public async Task<GameRates> ForceUpdateRatesAsync()
        {
            return await _backgroundService.ForceUpdateNowAsync();
        }

        public RateConfiguration GetConfiguration()
        {
            return _config;
        }
        
        public GameMetricsCollector GetMetricsCollector()
        {
            return _backgroundService.GetMetricsCollector();
        }

        public void Dispose()
        {
            if (!_disposed)
            {
                _backgroundService.Stop();
                _disposed = true;
            }
        }
    }
}
