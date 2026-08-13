using Nyx.Network.Core.Packets;
using Nyx.Network.Cryptography;
using Nyx.Server.Client;
using Nyx.Server.Network.Cryptography;
using Nyx.Shared.Cryptography;
using Org.BouncyCastle.Utilities;
using Serilog;
using System;
using System.IO;
using System.Text;

namespace Nyx.Server.Network.AuthPackets
{
    public class Authentication : Interfaces.IPacket
    {
        public readonly ILogger logger = Log.ForContext<Authentication>();
        public string Username { get; set; }
        public string Password { get; set; }
        public byte[] PasswordByte { get; set; }
        public string Server { get; set; }
        public string MacAddress { get; set; }
        public void Deserialize(byte[] buffer)
        {

            logger.Information(PacketDump.Hex(buffer));
            using var reader = new PacketReader(buffer);
            ushort Length = reader.ReadUInt16();
            ushort Type = reader.ReadUInt16();
            if (Type != 1542) return;

            //decrypt password
            //reader.BaseStream.Seek(132, SeekOrigin.Begin);
            //RC5 Rc5 = new RC5(buffer);

            //PasswordByte = Rc5.Decrypt(reader.ReadBytes(311));

            reader.BaseStream.Seek(8, SeekOrigin.Begin);
            Username = reader.ReadString(16);

            //decrypt password
            //reader.BaseStream.Seek(132, SeekOrigin.Begin);
            //Password = PasswordCipher.Decrypt(reader.ReadBytes(16));

            reader.BaseStream.Seek(72, SeekOrigin.Begin);
            Password = reader.ReadString(16);

            //Password = reader.ReadString(16);
            reader.BaseStream.Seek(136, SeekOrigin.Begin);
            Server = reader.ReadString(16);
            reader.BaseStream.Seek(152, SeekOrigin.Begin);
            MacAddress = reader.ReadString(12);

            
            logger.Information("Authentication Packet Received: Username: {Username}, Password : {pass} Server: {Server}, MacAddress: {MacAddress}", Username, Password, Server, MacAddress);
        }

        public byte[] Encode()
        {
            throw new NotImplementedException();
        }
        public void Send(Client.GameClient client)
        {
            throw new NotImplementedException();
        }
    }
}
