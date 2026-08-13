using Nyx.Server.Client;
using Nyx.Server.Database;
using Nyx.Server.Network.GamePackets;
using Serilog;
using System;
using System.Collections.Generic;

namespace Nyx.Server.Game.Attacking.Skills
{
    /// <summary>
    /// Central dispatcher for skill execution. Provides a clean interface for handling skills
    /// and allows gradual migration from the legacy skill system in Handle.cs
    /// </summary>
    public class SkillDispatcher
    {
        private static readonly ILogger _log = Log.ForContext<SkillDispatcher>();
        private static readonly Dictionary<ushort, ISkillHandler> _skillHandlers = new Dictionary<ushort, ISkillHandler>();
        private static bool _initialized = false;

        /// <summary>
        /// Initialize the skill dispatcher and register all skill handlers
        /// </summary>
        public static void Initialize()
        {
            if (_initialized) return;

            _log.Information("[SkillDispatcher] Initializing skill handlers...");

            // Register skill handlers here
            // Example: RegisterSkill(1000, new FireballHandler());
            // Example: RegisterSkill(1001, new ThunderHandler());

            _initialized = true;
            _log.Information($"[SkillDispatcher] Initialized with {_skillHandlers.Count} skill handlers");
        }

        /// <summary>
        /// Register a skill handler for a specific skill ID
        /// </summary>
        public static void RegisterSkill(ushort skillId, ISkillHandler handler)
        {
            if (_skillHandlers.ContainsKey(skillId))
            {
                _log.Warning($"[SkillDispatcher] Overwriting handler for skill {skillId}");
            }
            _skillHandlers[skillId] = handler;
        }

        /// <summary>
        /// Check if a skill has a registered handler
        /// </summary>
        public static bool HasHandler(ushort skillId)
        {
            return _skillHandlers.ContainsKey(skillId);
        }

        /// <summary>
        /// Execute a skill using the dispatcher system
        /// </summary>
        public static bool TryExecuteSkill(SkillContext context)
        {
            if (!_initialized)
            {
                Initialize();
            }

            if (!_skillHandlers.TryGetValue(context.SpellInfo.ID, out var handler))
            {
                // No handler registered, fall back to legacy system
                return false;
            }

            try
            {
                // Validate skill execution
                if (!handler.CanExecute(context))
                {
                    _log.Debug($"[SkillDispatcher] Skill {context.SpellInfo.ID} failed validation for {context.Caster.Entity.Name}");
                    return true; // Return true to prevent fallback to legacy
                }

                // Execute the skill
                handler.Execute(context);

                _log.Debug($"[SkillDispatcher] Executed skill {context.SpellInfo.ID} ({context.SpellInfo.Name}) for {context.Caster.Entity.Name}");
                return true;
            }
            catch (Exception ex)
            {
                _log.Error(ex, $"[SkillDispatcher] Error executing skill {context.SpellInfo.ID}");
                return false; // Allow fallback on error
            }
        }

        /// <summary>
        /// Get all registered skill IDs
        /// </summary>
        public static IEnumerable<ushort> GetRegisteredSkills()
        {
            return _skillHandlers.Keys;
        }

        /// <summary>
        /// Clear all registered handlers (useful for reloading)
        /// </summary>
        public static void ClearHandlers()
        {
            _skillHandlers.Clear();
            _initialized = false;
            _log.Information("[SkillDispatcher] Cleared all skill handlers");
        }
    }
}
