using Nyx.Brain.Models;
using Nyx.Brain.Services;

namespace Nyx.Brain
{
    public class Main
    {
        private readonly NyxBrain _brain;
        private readonly RateConfiguration _config;

        public Main()
        {
            _config = new RateConfiguration();
            _brain = new NyxBrain(_config);
        }

        public Main(RateConfiguration config)
        {
            _config = config;
            _brain = new NyxBrain(_config);
        }

        public void Initialize()
        {
            _brain.Start();
        }

        public void Shutdown()
        {
            _brain.Stop();
            _brain.Dispose();
        }

        public async Task Optimize()
        {
            await _brain.ForceUpdateRatesAsync();
        }

        public async Task<byte> LevelAvg(ulong[] Levels)
        {
            var players = Levels.Select(level => new Player { Level = (byte)Math.Min(level, 255) }).ToList();
            _brain.UpdatePlayers(players);
            var rates = await _brain.ForceUpdateRatesAsync();
            return (byte)Math.Min((ulong)rates.ExpRate, 255);
        }

        public GameRates GetCurrentRates()
        {
            return _brain.CurrentRates;
        }

        public void UpdateGameState(GameEnvironment environment)
        {
            _brain.UpdateGameEnvironment(environment);
        }

        public void UpdatePlayers(List<Player> players)
        {
            _brain.UpdatePlayers(players);
        }

        public async Task<GameRates> RecalculateRates()
        {
            return await _brain.ForceUpdateRatesAsync();
        }

        public RateConfiguration GetConfiguration()
        {
            return _brain.GetConfiguration();
        }
        
        public GameMetricsCollector GetMetricsCollector()
        {
            return _brain.GetMetricsCollector();
        }
    }
}
