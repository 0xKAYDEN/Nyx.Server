using Nyx.Combat.Abstractions;
using Nyx.Combat.Model;
using Nyx.Combat.Numerics;

namespace Nyx.Combat.Targeting;

/// <summary>
/// Turns a skill's shape (<see cref="SkillSort"/>) into the concrete set of victims
/// it hits.
/// </summary>
/// <remarks>
/// <para>
/// Every method writes into a caller-supplied <see cref="Span{T}"/> and returns a
/// count. Nothing is allocated, nothing is enumerated with LINQ, and a 20-victim
/// Cyclone costs exactly one world query plus a linear filter.
/// </para>
/// <para>
/// Stateless; one instance serves the whole server.
/// </para>
/// </remarks>
public sealed class TargetSelector
{
    private readonly ICombatWorld _world;

    public TargetSelector(ICombatWorld world)
        => _world = world ?? throw new ArgumentNullException(nameof(world));

    /// <summary>
    /// Selects victims for a skill and writes them into <paramref name="results"/>.
    /// </summary>
    /// <param name="attacker">The caster.</param>
    /// <param name="primary">The explicitly targeted entity, if any.</param>
    /// <param name="skill">The skill being cast; null resolves to a single-target strike.</param>
    /// <param name="targetX">Ground target tile X.</param>
    /// <param name="targetY">Ground target tile Y.</param>
    /// <param name="candidates">Scratch buffer for the world query. Sized by the caller.</param>
    /// <param name="results">Destination buffer for the chosen victims.</param>
    /// <returns>How many victims were written to <paramref name="results"/>.</returns>
    public int Select(
        in Combatant attacker,
        in Combatant primary,
        SkillDefinition? skill,
        ushort targetX,
        ushort targetY,
        Span<Combatant> candidates,
        Span<Combatant> results)
    {
        if (results.IsEmpty) return 0;

        // Single-target: the common case by a wide margin, so it short-circuits
        // before any world query happens.
        if (skill is null || !skill.IsAreaOfEffect)
        {
            if (!_world.CanAttack(in attacker, in primary)) return 0;
            results[0] = primary;
            return 1;
        }

        return skill.Sort switch
        {
            SkillSort.Square or SkillSort.Bomb => SelectRadial(
                in attacker, attacker.X, attacker.Y, skill, candidates, results),

            SkillSort.Circle or SkillSort.Chain or SkillSort.Team => SelectRadial(
                in attacker, targetX, targetY, skill, candidates, results),

            SkillSort.Line => SelectLine(
                in attacker, targetX, targetY, skill, candidates, results),

            SkillSort.Sector => SelectSector(
                in attacker, targetX, targetY, skill, candidates, results),

            _ => SelectRadial(in attacker, targetX, targetY, skill, candidates, results),
        };
    }

    /// <summary>Everything within <c>skill.Range</c> tiles of a centre point.</summary>
    private int SelectRadial(
        in Combatant attacker,
        ushort centreX,
        ushort centreY,
        SkillDefinition skill,
        Span<Combatant> candidates,
        Span<Combatant> results)
    {
        int radius = skill.Range > 0 ? skill.Range : 1;
        int found = _world.QueryNearby(attacker.MapId, centreX, centreY, radius, candidates);

        int radiusSquared = radius * radius;
        int written = 0;
        int cap = TargetCap(skill, results.Length);

        for (int i = 0; i < found && written < cap; i++)
        {
            ref Combatant candidate = ref candidates[i];
            if (!IsViable(in attacker, in candidate)) continue;
            if (MathEx.DistanceSquared(candidate.X, candidate.Y, centreX, centreY) > radiusSquared) continue;

            results[written++] = candidate;
        }

        return written;
    }

    /// <summary>
    /// Everything on the straight line from the caster to the target tile, within
    /// half a tile of the line. This is the Fly / Scatter / arrow-line shape.
    /// </summary>
    private int SelectLine(
        in Combatant attacker,
        ushort targetX,
        ushort targetY,
        SkillDefinition skill,
        Span<Combatant> candidates,
        Span<Combatant> results)
    {
        int length = skill.Distance > 0 ? skill.Distance : skill.Range;
        if (length <= 0) length = 1;

        int found = _world.QueryNearby(attacker.MapId, attacker.X, attacker.Y, length, candidates);

        double dx = targetX - attacker.X;
        double dy = targetY - attacker.Y;
        double lengthSquared = (dx * dx) + (dy * dy);
        if (lengthSquared < 1e-6) return 0;

        double inverseLength = 1.0 / Math.Sqrt(lengthSquared);

        // Half a tile either side, widened by the skill's own width if it declares one.
        double halfWidth = skill.Width > 0 ? skill.Width / 2.0 : 0.75;

        int written = 0;
        int cap = TargetCap(skill, results.Length);

        for (int i = 0; i < found && written < cap; i++)
        {
            ref Combatant candidate = ref candidates[i];
            if (!IsViable(in attacker, in candidate)) continue;

            double px = candidate.X - attacker.X;
            double py = candidate.Y - attacker.Y;

            // Projection onto the line: behind the caster or past the end tile is out.
            double along = ((px * dx) + (py * dy)) * inverseLength;
            if (along < 0 || along > length) continue;

            // Perpendicular distance from the line.
            double across = Math.Abs((px * dy) - (py * dx)) * inverseLength;
            if (across > halfWidth) continue;

            results[written++] = candidate;
        }

        return written;
    }

    /// <summary>
    /// A cone in front of the caster: everything within range whose bearing is
    /// inside the skill's angular width. This is the classic warrior fan.
    /// </summary>
    private int SelectSector(
        in Combatant attacker,
        ushort targetX,
        ushort targetY,
        SkillDefinition skill,
        Span<Combatant> candidates,
        Span<Combatant> results)
    {
        int radius = skill.Range > 0 ? skill.Range : skill.Distance;
        if (radius <= 0) radius = 1;

        int found = _world.QueryNearby(attacker.MapId, attacker.X, attacker.Y, radius, candidates);

        double facing = Math.Atan2(targetY - attacker.Y, targetX - attacker.X);

        // width is expressed in eighths of a turn on the live data; default to a
        // 90 degree fan when the column is unset.
        double halfAngle = skill.Width > 0
            ? skill.Width * Math.PI / 8.0
            : Math.PI / 4.0;

        int radiusSquared = radius * radius;
        int written = 0;
        int cap = TargetCap(skill, results.Length);

        for (int i = 0; i < found && written < cap; i++)
        {
            ref Combatant candidate = ref candidates[i];
            if (!IsViable(in attacker, in candidate)) continue;
            if (MathEx.DistanceSquared(candidate.X, candidate.Y, attacker.X, attacker.Y) > radiusSquared) continue;

            double bearing = Math.Atan2(candidate.Y - attacker.Y, candidate.X - attacker.X);
            double delta = Math.Abs(NormaliseAngle(bearing - facing));
            if (delta > halfAngle) continue;

            results[written++] = candidate;
        }

        return written;
    }

    /// <summary>Wraps an angle difference into <c>[-π, π]</c>.</summary>
    private static double NormaliseAngle(double radians)
    {
        while (radians > Math.PI) radians -= 2 * Math.PI;
        while (radians < -Math.PI) radians += 2 * Math.PI;
        return radians;
    }

    /// <summary>The lower of the skill's own victim cap and the caller's buffer size.</summary>
    private static int TargetCap(SkillDefinition skill, int bufferLength)
        => skill.MaxTargets > 0 && skill.MaxTargets < bufferLength ? skill.MaxTargets : bufferLength;

    /// <summary>A candidate is viable when it is alive, is not the caster, and is a legal victim.</summary>
    private bool IsViable(in Combatant attacker, in Combatant candidate)
    {
        if (candidate.Id == attacker.Id) return false;
        if (!candidate.IsAlive) return false;
        if (candidate.Has(CombatFlags.Invincible)) return false;
        return _world.CanAttack(in attacker, in candidate);
    }
}
