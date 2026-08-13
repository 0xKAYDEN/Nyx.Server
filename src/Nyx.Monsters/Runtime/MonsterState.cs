using System.Runtime.CompilerServices;
using Nyx.Monsters.Core;

namespace Nyx.Monsters.Runtime;

/// <summary>Monster AI state machine.</summary>
public enum MonsterAIState : byte
{
    Idle,
    Patrol,
    Chase,
    Attack,
    Return,
    Dead
}

/// <summary>
/// Mutable runtime state for a single spawned monster. Pooled and reused —
/// never allocate per tick. Reset on return to pool.
/// </summary>
public sealed class MonsterState : IPooledObject
{
    public uint InstanceId { get; set; }
    public MonsterTemplate Template { get; set; }

    public Position Position { get; set; }
    public Position SpawnPosition { get; set; }
    public ushort MapId { get; set; }

    public uint CurrentHp { get; set; }
    public uint MaxHp { get; set; }
    public uint MinAttack { get; set; }
    public uint MaxAttack { get; set; }
    public ushort Defence { get; set; }
    public ushort ViewRange { get; set; }
    public ushort AttackRange { get; set; }
    public ushort SpellId { get; set; }
    public int MoveSpeed { get; set; }
    public int RunSpeed { get; set; }
    public int AttackSpeed { get; set; }
    public byte Level { get; set; }
    public bool IsBoss { get; set; }

    public MonsterAIState AIState { get; set; }
    public uint TargetId { get; set; }
    public long LastMoveTime { get; set; }
    public long LastAttackTime { get; set; }

    public DamageTracker DamageTracker { get; } = new();

    public bool IsDead => CurrentHp == 0;

    /// <summary>Populate state from a template at spawn time.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void Initialize(MonsterTemplate template, Position spawn, uint instanceId, ushort mapId)
    {
        Template = template;
        InstanceId = instanceId;
        SpawnPosition = Position = spawn;
        MapId = mapId;

        var s = template.Stats;
        MaxHp = CurrentHp = s.MaxHitpoints;
        MinAttack = s.MinAttack;
        MaxAttack = s.MaxAttack;
        Defence = s.Defence;
        ViewRange = s.ViewRange;
        AttackRange = s.AttackRange;
        SpellId = s.SpellId;
        MoveSpeed = s.MoveSpeed;
        RunSpeed = s.RunSpeed;
        AttackSpeed = s.AttackSpeed;
        Level = template.Level;
        IsBoss = s.IsBoss;

        AIState = MonsterAIState.Idle;
        TargetId = 0;
        LastMoveTime = 0;
        LastAttackTime = 0;
        DamageTracker.Clear();
    }

    public void Reset()
    {
        Template = default;
        InstanceId = 0;
        Position = default;
        SpawnPosition = default;
        MapId = 0;
        CurrentHp = MaxHp = 0;
        MinAttack = MaxAttack = 0;
        Defence = ViewRange = AttackRange = SpellId = 0;
        MoveSpeed = RunSpeed = AttackSpeed = 0;
        Level = 0;
        IsBoss = false;
        AIState = MonsterAIState.Idle;
        TargetId = 0;
        LastMoveTime = LastAttackTime = 0;
        DamageTracker.Clear();
    }
}

/// <summary>
/// Array-backed damage tracker — replaces <c>Dictionary&lt;uint,uint&gt;</c>.
/// Typical party size is small (≤8), so linear search beats hashing with no GC.
/// </summary>
public sealed class DamageTracker
{
    private uint[] _playerIds = Array.Empty<uint>();
    private uint[] _damages = Array.Empty<uint>();
    private int _count;

    public int Count => _count;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void RecordDamage(uint playerId, uint damage, uint maxHp)
    {
        for (int i = 0; i < _count; i++)
        {
            if (_playerIds[i] == playerId)
            {
                _damages[i] = Math.Min(_damages[i] + damage, maxHp);
                return;
            }
        }
        if (_count == _playerIds.Length)
        {
            int size = _count == 0 ? 8 : _count * 2;
            Array.Resize(ref _playerIds, size);
            Array.Resize(ref _damages, size);
        }
        _playerIds[_count] = playerId;
        _damages[_count] = Math.Min(damage, maxHp);
        _count++;
    }

    /// <summary>Enumerate (playerId, damage) pairs without allocating a dictionary.</summary>
    public DamageEnumerator GetEnumerator() => new(_playerIds, _damages, _count);

    public void Clear() => _count = 0;

    public ref struct DamageEnumerator(uint[] ids, uint[] dmg, int count)
    {
        private readonly uint[] _ids = ids;
        private readonly uint[] _dmg = dmg;
        private readonly int _count = count;
        private int _i = -1;

        public bool MoveNext() => ++_i < _count;
        public readonly (uint PlayerId, uint Damage) Current => (_ids[_i], _dmg[_i]);
    }
}