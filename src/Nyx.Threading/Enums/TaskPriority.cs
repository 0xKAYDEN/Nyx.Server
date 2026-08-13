namespace Nyx.Threading.Enums
{
    /// <summary>
    /// Execution priority of a task <em>within</em> a container.
    /// </summary>
    /// <remarks>
    /// <para>
    /// This is orthogonal to <see cref="RepositoryCategory"/>. The category chooses <em>which</em>
    /// container (and therefore which thread and which partition of state) runs the task; the
    /// priority chooses the order in which that container's worker drains its own backlog.
    /// </para>
    /// <para>
    /// A container drains strictly highest-first, with a fairness quota so that a saturated
    /// high-priority queue cannot starve the lower ones indefinitely -- see
    /// <c>ThreadContainer.WorkerLoopAsync</c>.
    /// </para>
    /// <para>
    /// Values are contiguous and zero-based because they index the container's channel array
    /// directly; do not reorder or introduce gaps.
    /// </para>
    /// </remarks>
    public enum TaskPriority : byte
    {
        /// <summary>
        /// Latency-critical work that must not queue behind gameplay: authentication, crypto,
        /// packet decode, disconnect handling.
        /// </summary>
        Critical = 0,

        /// <summary>
        /// Player-visible, time-sensitive work: combat resolution, skill execution, movement and
        /// other direct responses to player input.
        /// </summary>
        High = 1,

        /// <summary>
        /// Ordinary game logic: AI, monster ticks, event processing. The default.
        /// </summary>
        Normal = 2,

        /// <summary>
        /// Deferrable work: persistence, monitoring, analytics, housekeeping.
        /// </summary>
        Low = 3,
    }
}
