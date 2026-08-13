using Nyx.Server.Utilities;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Threading;
namespace Nyx.Server.Network.Sockets
{
    public class BruteForceProtection
    {
        public class ClientLogin
        {
            public string IPAdres;
            public GameTime Timer;
            public uint Tryng;
        }
        public static object SynRoot;
        public static ConcurrentDictionary<int, BruteForceProtection.ClientLogin> Registred = new ConcurrentDictionary<int, BruteForceProtection.ClientLogin>();
        public static void CreatePoll()
        {
            BruteForceProtection.SynRoot = new object();
            World.Subscribe(new Action<int>(BruteForceProtection.Work), 500, ThreadPriority.Normal);
        }
        public static void ClientRegistred(string Adrres)
        {
            lock (BruteForceProtection.SynRoot)
            {
                int hashCode = Adrres.GetHashCode();
                BruteForceProtection.ClientLogin clientLogin;
                if (BruteForceProtection.Registred.TryGetValue(hashCode, out clientLogin))
                {
                    clientLogin.Tryng += 1u;
                    clientLogin.Timer = GameTime.Now;
                }
                else
                {
                    clientLogin = new BruteForceProtection.ClientLogin();
                    clientLogin.IPAdres = Adrres;
                    clientLogin.Timer = GameTime.Now;
                    clientLogin.Tryng = 1u;
                    BruteForceProtection.Registred.TryAdd(hashCode, clientLogin);
                }
            }
        }
        public static bool AcceptJoin(string Adrres)
        {
            int hashCode = Adrres.GetHashCode();
            BruteForceProtection.ClientLogin clientLogin;
            return !BruteForceProtection.Registred.TryGetValue(hashCode, out clientLogin) || clientLogin.Tryng < 5u;
        }
        public static void Work(int time)
        {
            ConcurrentQueue<int> concurrentQueue = new ConcurrentQueue<int>();
            GameTime now = GameTime.Now;
            foreach (KeyValuePair<int, BruteForceProtection.ClientLogin> current in BruteForceProtection.Registred)
            {
                if (now > current.Value.Timer.AddSeconds(30))
                {
                    if (current.Value.Tryng > 0u)
                    {
                        current.Value.Timer = GameTime.Now;
                        current.Value.Tryng -= 1u;
                    }
                    else
                    {
                        concurrentQueue.Enqueue(current.Key);
                    }
                }
            }
            int key = 0;
            while (concurrentQueue.TryDequeue(out key))
            {
                BruteForceProtection.ClientLogin clientLogin;
                BruteForceProtection.Registred.TryRemove(key, out clientLogin);
            }
        }
    }
}
