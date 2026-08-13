using CO2_CORE_DLL.Security.Cryptography;
using System;
using System.Runtime.InteropServices;

namespace Nyx.Network.Cryptography
{
    public class GameCryptography : ICipher
    {
        CAST5 _cast5;
        public GameCryptography(byte[] key)
        {
            _cast5 = new CAST5();
            _cast5.GenerateKey(key);
        }

        public unsafe void Decrypt(byte[] packet, int length)
        {
            fixed (byte* buff = packet)
                _cast5.Decrypt(buff, length);
        }

        public unsafe void Encrypt(byte[] packet, int length)
        {
            fixed (byte* buff = packet)
                _cast5.Encrypt(buff, length);
        }

        public void SetKey(byte[] k)
        {
            _cast5.GenerateKey(k);
        }
        public void SetIvs(byte[] i1, byte[] i2)
        {
            _cast5.SetIVs(i1, i2);
        }

        public void Dispose()
        {
            // _cast5?.Dispose(); // Assuming CAST5 might not be disposable or is managed.
        }
    }
}
