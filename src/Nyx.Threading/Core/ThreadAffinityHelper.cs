using System;
using System.Runtime.InteropServices;
using Serilog;

namespace Nyx.Threading.Core
{
    /// <summary>
    /// Helper class for setting thread affinity to logical CPU cores on Windows and Linux.
    /// </summary>
    public static class ThreadAffinityHelper
    {
        private static readonly ILogger _logger = Log.ForContext(typeof(ThreadAffinityHelper));

        [DllImport("kernel32.dll", SetLastError = true)]
        private static extern IntPtr SetThreadAffinityMask(IntPtr hThread, IntPtr dwThreadAffinityMask);

        [DllImport("kernel32.dll", SetLastError = true)]
        private static extern IntPtr GetCurrentThread();

        [DllImport("libc", SetLastError = true, EntryPoint = "sched_setaffinity")]
        private static extern int SchedSetAffinity(int pid, IntPtr cpusetsize, ref ulong mask);

        /// <summary>
        /// Attempts to pin the current executing thread to a specific CPU core.
        /// </summary>
        /// <param name="coreIndex">The index of the CPU core (0-based).</param>
        /// <returns>True if successful; otherwise false.</returns>
        public static bool TrySetThreadAffinity(int coreIndex)
        {
            if (coreIndex < 0 || coreIndex >= Environment.ProcessorCount)
            {
                _logger.Warning("Invalid CPU core index {CoreIndex}. Available logical cores: {CoreCount}", 
                    coreIndex, Environment.ProcessorCount);
                return false;
            }

            try
            {
                if (RuntimeInformation.IsOSPlatform(OSPlatform.Windows))
                {
                    IntPtr mask = new IntPtr(1L << coreIndex);
                    IntPtr hThread = GetCurrentThread();
                    IntPtr result = SetThreadAffinityMask(hThread, mask);
                    if (result != IntPtr.Zero)
                    {
                        _logger.Information("Successfully pinned thread to CPU core {CoreIndex} (Windows)", coreIndex);
                        return true;
                    }
                }
                else if (RuntimeInformation.IsOSPlatform(OSPlatform.Linux))
                {
                    ulong mask = 1UL << coreIndex;
                    int result = SchedSetAffinity(0, new IntPtr(Marshal.SizeOf<ulong>()), ref mask);
                    if (result == 0)
                    {
                        _logger.Information("Successfully pinned thread to CPU core {CoreIndex} (Linux)", coreIndex);
                        return true;
                    }
                }
            }
            catch (Exception ex)
            {
                _logger.Error(ex, "Failed to set thread affinity for CPU core {CoreIndex}", coreIndex);
            }

            _logger.Warning("Thread affinity not supported or failed. Thread will run on any available core.");
            return false;
        }
    }
}
