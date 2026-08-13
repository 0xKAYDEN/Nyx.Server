using Microsoft.Extensions.Hosting;
using Nyx.AI.DataCollection;
using Nyx.AI.DataCollection.Enums;
using Serilog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Nyx.AI.Analysis
{
    public class BehaviorAnalyzer : BackgroundService
    {

        private readonly IServiceProvider _serviceProvider;
        private readonly TimeSpan _checkInterval = TimeSpan.FromMinutes(5);

        public BehaviorAnalyzer(IServiceProvider serviceProvider)
        {
            _serviceProvider = serviceProvider;
        }

        protected override async Task ExecuteAsync(CancellationToken stoppingToken)
        {
            Log.Information("Behavior Analyzer Service started");

            using var timer = new PeriodicTimer(_checkInterval);

            try
            {
                while (await timer.WaitForNextTickAsync(stoppingToken))
                {
                    string logDir = Path.Combine(AppContext.BaseDirectory, "Logs", "Events");

                    if (!Directory.Exists(logDir))
                    {
                        Log.Warning($"Event log directory not found: {logDir}");
                        continue;
                    }

                    await AnalyzeAllFilesAsync(logDir);
                }
            }
            catch (OperationCanceledException)
            {
                Log.Information("Behavior Analyzer Service stopped gracefully");
            }
        }

        private async Task AnalyzeAllFilesAsync(string directory)
        {
            //var files = Directory.GetFiles(directory, "*.log", SearchOption.AllDirectories)
            //                     .Concat(Directory.GetFiles(directory, "*.txt", SearchOption.AllDirectories))
            //                     .ToList();

            var files = Directory.GetFiles(directory, "*.jsonl", SearchOption.AllDirectories).ToList();


            if (files.Count == 0)
            {
                Log.Warning("No event log files found to analyze.");
                return;
            }

            Log.Information($"Found {files.Count} JSONL event log files for analysis.");

            var allEvents = new List<GameEvents>();

            foreach (var file in files)
            {
                try
                {
                    using var stream = File.OpenRead(file);
                    using var reader = new StreamReader(stream);

                    string? line;
                    while ((line = await reader.ReadLineAsync()) != null)
                    {
                        try
                        {
                            var gameEvent = JsonSerializer.Deserialize<GameEvents>(line);
                            if (gameEvent != null)
                                allEvents.Add(gameEvent);
                        }
                        catch (JsonException jsonEx)
                        {
                            Log.Warning($"Skipping invalid JSON line in {Path.GetFileName(file)}: {jsonEx.Message}");
                        }
                    }
                }
                catch (Exception ex)
                {
                    Log.Error(ex, $"Failed to analyze file: {file}");
                }
            }

            if (allEvents.Count == 0)
            {
                Log.Warning("No valid events found in any JSONL file.");
                return;
            }

            await GenerateSummaryReportAsync(allEvents);
        }

        private async Task GenerateSummaryReportAsync(List<GameEvents> allEvents)
        {
            var groupedByPlayer = allEvents
                .GroupBy(e => e.PlayerID)
                .OrderBy(g => g.Key)
                .ToList();

            StringBuilder sb = new();
            sb.AppendLine($"[Global AutoHunt Behavior Report - {DateTime.UtcNow}]");
            sb.AppendLine($"Analyzed Events: {allEvents.Count}");
            sb.AppendLine($"Unique Players: {groupedByPlayer.Count}");
            sb.AppendLine(new string('-', 70));

            foreach (var playerGroup in groupedByPlayer)
            {
                var first = playerGroup.First();
                sb.AppendLine($"Player: {first.PlayerName} (UID: {first.PlayerID})");

                var startEvents = playerGroup
                    .Where(e => e.Events == EventType.AutoHuntStarted)
                    .OrderBy(e => e.Timestamp)
                    .ToList();

                var endEvents = playerGroup
                    .Where(e => e.Events == EventType.AutoHuntEnded)
                    .OrderBy(e => e.Timestamp)
                    .ToList();

                var expEvents = playerGroup
                    .Where(e => e.Events == EventType.AutoHuntExpGained)
                    .ToList();

                sb.AppendLine($"  AutoHunt Sessions: {startEvents.Count}");

                for (int i = 0; i < startEvents.Count; i++)
                {
                    var start = startEvents[i];
                    var end = i < endEvents.Count ? endEvents[i] : null;

                    if (end != null)
                    {
                        var duration = end.Timestamp - start.Timestamp;

                        double startExp = Convert.ToDouble(start.Data["TotalExp"]);
                        double endExp = Convert.ToDouble(end.Data["TotalExp"]);
                        double expGained = endExp - startExp;

                        double startCps = Convert.ToDouble(start.Data["TotalCps"]);
                        double endCps = Convert.ToDouble(end.Data["TotalCps"]);
                        double cpsGained = endCps - startCps;

                        double startMoney = Convert.ToDouble(start.Data["TotalMoney"]);
                        double endMoney = Convert.ToDouble(end.Data["TotalMoney"]);
                        double moneyGained = endMoney - startMoney;

                        int startLevel = Convert.ToInt32(start.Data["Level"]);
                        int endLevel = Convert.ToInt32(end.Data["Level"]);

                        sb.AppendLine($"  Session #{i + 1}:");
                        sb.AppendLine($"    MapID: {start.Data["MapID"]}");
                        sb.AppendLine($"    Duration: {duration.TotalMinutes:F1} minutes");
                        sb.AppendLine($"    EXP Gained: {expGained:N0}");
                        sb.AppendLine($"    CPs Gained: {cpsGained:N0}");
                        sb.AppendLine($"    Money Gained: {moneyGained:N0}");
                        sb.AppendLine($"    Level: {startLevel} ? {endLevel}");
                    }
                    else
                    {
                        sb.AppendLine($"  Session #{i + 1}: End not found.");
                    }
                }

                if (expEvents.Count > 0)
                {
                    double totalExpGain = expEvents.Sum(e => Convert.ToDouble(e.Data["PlayerTotalGained"]));
                    sb.AppendLine($"  Total EXP Gained (AutoHunt): {totalExpGain:N0}");
                }

                sb.AppendLine(new string('-', 70));
            }

            string reportDir = Path.Combine(AppContext.BaseDirectory, "Logs", "Analysis");
            Directory.CreateDirectory(reportDir);

            string reportFile = Path.Combine(reportDir, $"autohunt_global_report_{DateTime.UtcNow:yyyyMMdd_HHmmss}.txt");
            await File.WriteAllTextAsync(reportFile, sb.ToString());

            Log.Information($"Global AutoHunt analysis saved to: {reportFile}");
        }

        //public async Task AnalyzeAsync(string file)
        //{
        //    var lines = await File.ReadAllLinesAsync(file);
        //    var events = lines.Select(l => JsonSerializer.Deserialize<GameEvents>(l)).ToList();

        //    var moveEvents = events.Where(e => e.Events == EventType.Move && x => x.Events);
        //    Log.Information($"Total Movements: {moveEvents.Count()} Client UID : {}");

        //    var combat = events.Where(e => e.Events == EventType.Attack);
        //    var avgDamage = combat.Average(e => Convert.ToInt32(e.Data["Damage"]));
        //    Console.WriteLine($"Average Damage: {avgDamage}");
        //}

        //public async Task AutoHuntAnalyzeAsync(string file)
        //{
        //    if (!File.Exists(file))
        //    {
        //        Log.Error($"File not found: {file}");
        //        return;
        //    }

        //    var lines = await File.ReadAllLinesAsync(file);
        //    var events = lines
        //        .Select(l => JsonSerializer.Deserialize<GameEvents>(l))
        //        .Where(e => e != null)
        //        .ToList();

        //    if (events.Count == 0)
        //    {
        //        Log.Warning("No events found in file.");
        //        return;
        //    }

        //    var groupedByPlayer = events
        //        .GroupBy(e => e.PlayerID)
        //        .OrderBy(g => g.Key)
        //        .ToList();

        //    StringBuilder sb = new();
        //    sb.AppendLine($"[AutoHunt Behavior Report - {DateTime.UtcNow}]");
        //    sb.AppendLine($"Total Events: {events.Count}");
        //    sb.AppendLine($"Total Players: {groupedByPlayer.Count}");
        //    sb.AppendLine(new string('-', 60));

        //    foreach (var playerGroup in groupedByPlayer)
        //    {
        //        var first = playerGroup.First();
        //        sb.AppendLine($"Player: {first.PlayerName} (UID: {first.PlayerID})");

        //        // --- AutoHunt Session Detection ---
        //        var autoHuntStart = playerGroup
        //            .Where(e => e.Events == EventType.AutoHuntStarted)
        //            .OrderBy(e => e.Timestamp)
        //            .ToList();

        //        var autoHuntEnd = playerGroup
        //            .Where(e => e.Events == EventType.AutoHuntEnded)
        //            .OrderBy(e => e.Timestamp)
        //            .ToList();

        //        var expEvents = playerGroup
        //            .Where(e => e.Events == EventType.AutoHuntExpGained)
        //            .OrderBy(e => e.Timestamp)
        //            .ToList();

        //        sb.AppendLine($"  AutoHunt Sessions: {autoHuntStart.Count}");

        //        for (int i = 0; i < autoHuntStart.Count; i++)
        //        {
        //            var start = autoHuntStart[i];
        //            var end = i < autoHuntEnd.Count ? autoHuntEnd[i] : null;

        //            if (end != null)
        //            {
        //                var duration = end.Timestamp - start.Timestamp;

        //                double startExp = Convert.ToDouble(start.Data["TotalExp"]);
        //                double endExp = Convert.ToDouble(end.Data["TotalExp"]);
        //                double expGained = endExp - startExp;

        //                double startCps = Convert.ToDouble(start.Data["TotalCps"]);
        //                double endCps = Convert.ToDouble(end.Data["TotalCps"]);
        //                double cpsGained = endCps - startCps;

        //                double startMoney = Convert.ToDouble(start.Data["TotalMoney"]);
        //                double endMoney = Convert.ToDouble(end.Data["TotalMoney"]);
        //                double moneyGained = endMoney - startMoney;

        //                int startLevel = Convert.ToInt32(start.Data["Level"]);
        //                int endLevel = Convert.ToInt32(end.Data["Level"]);

        //                sb.AppendLine($"  Session #{i + 1}:");
        //                sb.AppendLine($"    MapID: {start.Data["MapID"]}");
        //                sb.AppendLine($"    Duration: {duration.TotalMinutes:F1} minutes");
        //                sb.AppendLine($"    EXP Gained: {expGained:N0}");
        //                sb.AppendLine($"    CPs Gained: {cpsGained:N0}");
        //                sb.AppendLine($"    Money Gained: {moneyGained:N0}");
        //                sb.AppendLine($"    Level: {startLevel} ? {endLevel}");
        //            }
        //            else
        //            {
        //                sb.AppendLine($"  Session #{i + 1}: End not found.");
        //            }
        //        }

        //        // --- Total EXP Gained Events ---
        //        if (expEvents.Count > 0)
        //        {
        //            double totalExpGain = expEvents.Sum(e => Convert.ToDouble(e.Data["PlayerTotalGained"]));
        //            sb.AppendLine($"  Total AutoHunt EXP Collected: {totalExpGain:N0}");
        //        }

        //        sb.AppendLine(new string('-', 60));
        //    }

        //    // Save report
        //    string reportDir = Path.Combine(AppContext.BaseDirectory, "Logs", "Analysis");
        //    Directory.CreateDirectory(reportDir);
        //    string reportFile = Path.Combine(reportDir, $"autohunt_analysis_{DateTime.UtcNow:yyyyMMdd_HHmmss}.txt");

        //    await File.WriteAllTextAsync(reportFile, sb.ToString());
        //    Log.Information($"AutoHunt analysis saved to: {reportFile}");
        //}



        //public async Task AnalyzeAsync(string file)
        //{
        //    if (!File.Exists(file))
        //    {
        //        Log.Error($"File not found: {file}");
        //        return;
        //    }

        //    var lines = await File.ReadAllLinesAsync(file);
        //    var events = lines
        //        .Select(l => JsonSerializer.Deserialize<GameEvents>(l))
        //        .Where(e => e != null)
        //        .ToList();

        //    if (events.Count == 0)
        //    {
        //        Log.Warning("No events found in file.");
        //        return;
        //    }

        //    // Group by player for per-player analysis
        //    var groupedByPlayer = events
        //        .GroupBy(e => e.PlayerID)
        //        .OrderBy(g => g.Key)
        //        .ToList();

        //    StringBuilder sb = new();

        //    sb.AppendLine($"[Behavior Analysis Report - {DateTime.UtcNow}]");
        //    sb.AppendLine($"Total Events: {events.Count}");
        //    sb.AppendLine($"Total Players: {groupedByPlayer.Count}");
        //    sb.AppendLine(new string('-', 60));

        //    foreach (var playerGroup in groupedByPlayer)
        //    {
        //        var first = playerGroup.First();
        //        var moveEvents = playerGroup.Where(e => e.EventType == "Move").ToList();
        //        var combatEvents = playerGroup.Where(e => e.EventType == "Attack").ToList();

        //        sb.AppendLine($"Player: {first.PlayerName} (UID: {first.PlayerID})");
        //        sb.AppendLine($"  Total Movements: {moveEvents.Count}");
        //        sb.AppendLine($"  Total Attacks: {combatEvents.Count}");

        //        if (combatEvents.Count > 0)
        //        {
        //            var avgDamage = combatEvents
        //                .Where(e => e.Data.ContainsKey("Damage"))
        //                .Average(e => Convert.ToInt32(e.Data["Damage"]));
        //            sb.AppendLine($"  Average Damage: {avgDamage:F1}");
        //        }

        //        if (moveEvents.Count > 0)
        //        {
        //            var lastMove = moveEvents.Last();
        //            sb.AppendLine($"  Last Known Position: Map={lastMove.Data.GetValueOrDefault("MapID")} X={lastMove.Data.GetValueOrDefault("ToX")} Y={lastMove.Data.GetValueOrDefault("ToY")}");
        //        }

        //        sb.AppendLine(new string('-', 60));
        //    }

        //    // Save to file
        //    string reportDir = Path.Combine(AppContext.BaseDirectory, "Logs", "Analysis");
        //    Directory.CreateDirectory(reportDir);
        //    string reportFile = Path.Combine(reportDir, $"analysis_{DateTime.UtcNow:yyyyMMdd_HHmmss}.txt");

        //    await File.WriteAllTextAsync(reportFile, sb.ToString());
        //    Log.Information($"Analysis saved to: {reportFile}");
        //}
    }
}
