using System.Diagnostics;

public class Program
{
    public static async Task Main(string[] args)
    {
        Console.WriteLine("Nyx Analysis Tool");
        Console.WriteLine("=================");
        Console.WriteLine();
        //if (args.Length == 0)
        //{
        //    Console.WriteLine("Please provide the root directory of the logs as a command-line argument.");
        //    return;
        //}
        string rootDirectory = @"D:\Nyx\Nyx\Server\net9.0-windows\logs";
        if (!Directory.Exists(rootDirectory))
        {
            Console.WriteLine($"The directory '{rootDirectory}' does not exist.");
            return;
        }
        var dataProcessor = new Nyx.Analysis.Data.ProcessData();
        await dataProcessor.LoadDataAsync(rootDirectory);
        Console.WriteLine("Data loading complete.");
        Console.WriteLine($"Total Movements Loaded: {dataProcessor.movements.Count}");
        Console.WriteLine($"Total Attacks Loaded: {dataProcessor.attacks.Count}");
        // Further analysis can be added here
        await dataProcessor.AnalyzeMovementAsync();
        await dataProcessor.AnalyzeAttacksAsync();
    }
}
