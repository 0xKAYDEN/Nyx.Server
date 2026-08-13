using System.Collections.Generic;

namespace Nyx.Shared.Cache
{
    public class Sessions
    {

        public Dictionary<Guid, SessionInfo> sessions;

        public Sessions()
        {
            sessions = new Dictionary<Guid, SessionInfo>();
        }

        public Dictionary<Guid, SessionInfo> GetSessions()
        {
            return sessions;
        }

        public async ValueTask StoreSession(SessionInfo session)
        {
            try
            {
                if (!sessions.ContainsValue(session))
                {
                    sessions.TryAdd(Guid.NewGuid(), session);
                }
                else
                {
                    Console.WriteLine($"Session {session.SessionID} Already exits in the sessions cache. Remove it frist then store a new one.");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        public async Task RemoveSession(Guid SessionID)
        {
            try
            {
                if (sessions.ContainsKey(SessionID))
                {
                    sessions.Remove(SessionID);
                }
                else
                {
                    Console.WriteLine($"Session {SessionID} has been removed succefully.");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
    }

    public class SessionInfo
    {
        public Guid SessionID { get; set; }
        public long Token { get; set; }
        public uint AccountID { get; set; }
        public string MacAddress { get; set; }
        public Guid ServerID { get; set; }
    }

}
