using Nyx.Network.Protocol;
using Serilog;

namespace Nyx.Server.Network.AuthPackets;

public sealed class Authentication : Interfaces.IPacket
{
    private const ushort MessageId = (ushort)PacketType.MsgAccount;
    private const int MessageLength = 312;
    private readonly ILogger _logger = Log.ForContext<Authentication>();

    public string Username { get; set; } = string.Empty;
    public string Password { get; set; } = string.Empty;
    public byte[] PasswordByte { get; set; } = Array.Empty<byte>();
    public string Server { get; set; } = string.Empty;
    public string MacAddress { get; set; } = string.Empty;

    public void Deserialize(byte[] buffer)
    {
        if (!TqPacket.TryParse(
                buffer,
                TqPacketFraming.Authentication,
                TqPacketSeal.None,
                out TqPacket packet,
                out TqPacketValidationError error) ||
            packet.Id != MessageId || packet.Length != MessageLength)
        {
            throw new InvalidDataException($"Invalid authentication packet: {error}.");
        }

        // Absolute legacy offsets 8, 72, 136, and 152 become payload-relative offsets after the
        // canonical four-byte header has been removed.
        var reader = new TqPacketReader(packet.Payload.Span);
        reader.Advance(4);
        Username = reader.ReadFixedString(16);
        reader.Advance(48);
        Password = reader.ReadFixedString(16);
        reader.Advance(48);
        Server = reader.ReadFixedString(16);
        MacAddress = reader.ReadFixedString(12);

        // Do not log plaintext credentials.
        _logger.Information(
            "Authentication packet received: Username={Username}, Server={Server}, MacAddress={MacAddress}",
            Username,
            Server,
            MacAddress);
    }

    public byte[] Encode() => throw new NotSupportedException("Authentication is a client-to-server packet.");

    public void Send(Client.GameClient client) =>
        throw new NotSupportedException("Authentication is a client-to-server packet.");
}
