using Nyx.Brain.Models;

namespace Nyx.Brain.Services
{
    public class RateUpdateBackgroundService
    {
        private readonly CalculationService _calculationService;
        private readonly GameMetricsCollector _metricsCollector;
        private readonly CancellationTokenSource _cancellationTokenSource;
        private Task? _backgroundTask;
        private GameRates _currentRates;
        private Func<Task<GameEnvironment>>? _environmentProvider;

        public event EventHandler<GameRates>? RatesUpdated;

        public GameRates CurrentRates => _currentRates;

        public RateUpdateBackgroundService(RateConfiguration config)
        {
            _calculationService = new CalculationService(config);
            _metricsCollector = new GameMetricsCollector();
            _cancellationTokenSource = new CancellationTokenSource();
            _currentRates = new GameRates
            {
                ExpRate = config.BaseExpRate,
                SkillExpRate = config.BaseExpRate * 0.8m,
                DropRate = config.BaseDropRate,
                MoneyRate = config.BaseMoneyRate,
                CpsDropRate = config.BaseCpsDropRate,
                MoneyPerMonster = config.BaseMoneyDropPerMonster,
                CpsPerMonster = config.BaseCpsDropPerMonster,
                LastUpdated = DateTime.Now
            };
        }

        public void SetEnvironmentProvider(Func<Task<GameEnvironment>> provider)
        {
            _environmentProvider = provider;
        }

        public void Start()
        {
            if (_backgroundTask != null && !_backgroundTask.IsCompleted)
                return;

            _backgroundTask = Task.Run(UpdateLoopAsync);
        }

        public void Stop()
        {
            _cancellationTokenSource.Cancel();
        }

        private async Task UpdateLoopAsync()
        {
            while (!_cancellationTokenSource.Token.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(TimeSpan.FromMinutes(30), _cancellationTokenSource.Token);
                    
                    if (_environmentProvider != null)
                    {
                        var environment = await _environmentProvider();
                        var difficultyScore = _metricsCollector.CalculateDifficultyScore();
                        _currentRates = _calculationService.CalculateRates(environment, difficultyScore);
                        RatesUpdated?.Invoke(this, _currentRates);
                    }
                }
                catch (OperationCanceledException)
                {
                }
                catch (Exception)
                {
                }
            }
        }

        public async Task<GameRates> ForceUpdateNowAsync()
        {
            if (_environmentProvider != null)
            {
                var environment = await _environmentProvider();
                var difficultyScore = _metricsCollector.CalculateDifficultyScore();
                _currentRates = _calculationService.CalculateRates(environment, difficultyScore);
                RatesUpdated?.Invoke(this, _currentRates);
            }
            return _currentRates;
        }
        
        public GameMetricsCollector GetMetricsCollector()
        {
            return _metricsCollector;
        }
    }
}
