namespace Nyx.Auth.Database;

/// <summary>Minimal account row required for authentication.</summary>
public sealed class AccountRecord
{
    public string Username { get; set; } = string.Empty;
    public string Password { get; set; } = string.Empty;
    public uint? EntityId { get; set; }
    public string? Ip { get; set; }
    public int State { get; set; }
    public string? MacAddress { get; set; }

    public bool Exists { get; set; }

    public enum AccountState : byte
    {
        Player = 0,
        Banned = 1,
        Cheated = 3,
        GameMaster = 4
    }

    public AccountState StateEnum => (AccountState)State;
}
