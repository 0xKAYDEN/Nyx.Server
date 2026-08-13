using Nyx.Server.Game.Attacking.Skills.Handlers;
using Serilog;

namespace Nyx.Server.Game.Attacking.Skills
{
    /// <summary>
    /// Central registry for registering all skill handlers
    /// Add your skill handlers here as you migrate them from the legacy system
    /// </summary>
    public static class SkillHandlerRegistry
    {
        private static readonly ILogger _log = Log.ForContext(typeof(SkillHandlerRegistry));

        /// <summary>
        /// Register all skill handlers
        /// Call this during server initialization
        /// </summary>
        public static void RegisterAllHandlers()
        {
            _log.Information("[SkillHandlerRegistry] Registering skill handlers...");

            // Example registrations - uncomment and modify as you migrate skills
            // SkillDispatcher.RegisterSkill(1000, new ExampleFireballHandler());
            // SkillDispatcher.RegisterSkill(1002, new ExampleAoEHandler());
            SkillDispatcher.RegisterSkill(1038, new ScentSword());

            // TODO: Add your skill handlers here as you migrate them
            // Format: SkillDispatcher.RegisterSkill(SKILL_ID, new YourSkillHandler());

            _log.Information("[SkillHandlerRegistry] Skill handler registration complete");
        }
    }
}
