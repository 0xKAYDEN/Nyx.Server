namespace Nyx.Network.Cryptography
{
    public interface ICipher : IDisposable
    {
        void Encrypt(byte[] data, int length);
        void Decrypt(byte[] data, int length);
    }
}
