using Nyx.Network.Protocol;

namespace Nyx.Auth.Network.Packets;

/// <summary>
/// MsgAccount (1542), length 312. Client → auth login credentials.
/// Absolute legacy offsets 8 / 72 / 136 / 152 become payload-relative after the 4-byte header.
/// </summary>
public sealed class AuthenticationRequest
{
    public string Username { get; private set; } = string.Empty;
    public string Password { get; private set; } = string.Empty;
    public string Server { get; private set; } = string.Empty;
    public string MacAddress { get; private set; } = string.Empty;

    public void Deserialize(byte[] buffer)
    {
        if (!TqPacket.TryParse(
                buffer,
                TqPacketFraming.Authentication,
                TqPacketSeal.None,
                out TqPacket packet,
                out TqPacketValidationError error) ||
            packet.Id != AuthPacketIds.MsgAccount ||
            packet.Length != AuthPacketIds.MsgAccountLength)
        {
            throw new InvalidDataException($"Invalid authentication packet: {error}.");
        }

        var reader = new TqPacketReader(packet.Payload.Span);
        reader.Advance(4);
        Username = reader.ReadFixedString(16);
        reader.Advance(48);
        Password = reader.ReadFixedString(16);
        reader.Advance(48);
        Server = reader.ReadFixedString(16);
        MacAddress = reader.ReadFixedString(12);
    }
}
