namespace Nyx.Database.Models;

public sealed class Account
{
    public ulong AccountId { get; init; }
    public string Username { get; init; } = "";
    public string Password { get; init; } = "";
    public string Email { get; init; } = "";
    public string IP { get; init; } = "";
    public DateTime? LastCheck { get; init; }
    public int State { get; init; }
    public ulong EntityId { get; init; }
}
