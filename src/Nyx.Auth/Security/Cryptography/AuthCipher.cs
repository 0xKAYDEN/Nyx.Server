using Nyx.Network.Cryptography;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Auth.Security.Cryptography
{
    public class AuthCipher : ICipher
    {
        private ushort InCounter;
        private ushort OutCounter;
        private byte[] cipherKey1 = new byte[256];
        private byte[] cipherKey2 = new byte[256];

        public AuthCipher()
        {
            byte num1 = 157;
            byte num2 = 98;
            for (int index = 0; index < 256; ++index)
            {
                this.cipherKey1[index] = num1;
                this.cipherKey2[index] = num2;
                num1 = (byte)((15 + (int)num1 * 250) * (int)num1 + 19);
                num2 = (byte)((121 - (int)num2 * 92) * (int)num2 + 109);
            }
            this.InCounter = (ushort)0;
            this.OutCounter = (ushort)0;
        }

        public unsafe void Encrypt(byte* src, int srcOffset, byte[] dst, int dstOffset, int length)
        {
            fixed (byte* numPtr1 = &dst[dstOffset])
            {
                for (int index = srcOffset; index < srcOffset + length; ++index)
                {
                    numPtr1[index] = (byte)((uint)src[index] ^ 171U);
                    numPtr1[index] = (byte)((int)numPtr1[index] >> 4 | (int)numPtr1[index] << 4);
                    byte* numPtr2 = numPtr1 + index;
                    *numPtr2 = (byte)((uint)*numPtr2 ^ (uint)this.cipherKey2[(int)this.InCounter >> 8]);
                    byte* numPtr3 = numPtr1 + index;
                    *numPtr3 = (byte)((uint)*numPtr3 ^ (uint)this.cipherKey1[(int)this.InCounter & (int)byte.MaxValue]);
                    ++this.InCounter;
                }
            }
        }

        public unsafe void Decrypt(byte[] src, int srcOffset, byte* dst, int dstOffset, int length)
        {
            fixed (byte* numPtr1 = &src[srcOffset])
            {
                for (int index = dstOffset; index < dstOffset + length; ++index)
                {
                    dst[index] = (byte)((uint)numPtr1[index] ^ 171U);
                    dst[index] = (byte)((int)dst[index] << 4 | (int)dst[index] >> 4);
                    byte* numPtr2 = dst + index;
                    *numPtr2 = (byte)((uint)*numPtr2 ^ (uint)this.cipherKey2[(int)this.OutCounter >> 8]);
                    byte* numPtr3 = dst + index;
                    *numPtr3 = (byte)((uint)*numPtr3 ^ (uint)this.cipherKey1[(int)this.OutCounter & (int)byte.MaxValue]);
                    ++this.OutCounter;
                }
            }
        }
    }
}
