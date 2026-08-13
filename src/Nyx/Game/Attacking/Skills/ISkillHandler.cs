namespace Nyx.Server.Game.Attacking.Skills
{
    /// <summary>
    /// Interface for all skill handlers
    /// </summary>
    public interface ISkillHandler
    {
        /// <summary>
        /// Validate if the skill can be executed in the current context
        /// </summary>
        bool CanExecute(SkillContext context);

        /// <summary>
        /// Execute the skill logic
        /// </summary>
        void Execute(SkillContext context);

        /// <summary>
        /// Get the skill ID this handler is for
        /// </summary>
        ushort SkillId { get; }

        /// <summary>
        /// Get a description of what this skill does (for debugging)
        /// </summary>
        string Description { get; }
    }
}
