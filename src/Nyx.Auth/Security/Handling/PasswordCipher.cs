using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Auth.Security.Handling
{
    public class PasswordCipher
    {
        private const int RC5_32 = 32;
        private const int RC5_12 = 12;
        private const int RC5_SUB = 26;
        private const int RC5_16 = 16;
        private const int RC5_KEY = 4;
        private const uint RC5_PW32 = 3084996963;
        private const uint RC5_QW32 = 2654435769;
        private static readonly uint[] _bufKey = new uint[4]
        {
      3909016636U,
      2127975620U,
      452503062U,
      3191394536U
        };
        private static readonly uint[] _bufSub = new uint[26];

        static PasswordCipher()
        {
            PasswordCipher._bufSub[0] = 3084996963U;
            for (int index = 1; index < 26; ++index)
                PasswordCipher._bufSub[index] = PasswordCipher._bufSub[index - 1] + 2654435769U;
            int index1 = 0;
            int index2 = 0;
            uint num1 = 0;
            uint num2 = 0;
            for (int index3 = 0; index3 < 3 * Math.Max(4, 26); ++index3)
            {
                num1 = PasswordCipher._bufSub[index1] = PasswordCipher.RotateLeft(PasswordCipher._bufSub[index1] + num1 + num2, 3);
                index1 = (index1 + 1) % 26;
                num2 = PasswordCipher._bufKey[index2] = PasswordCipher.RotateLeft(PasswordCipher._bufKey[index2] + num1 + num2, (int)num1 + (int)num2);
                index2 = (index2 + 1) % 4;
            }
        }

        public static unsafe byte[] Encrypt(string password)
        {
            byte[] bytes = Encoding.ASCII.GetBytes(password);
            fixed (byte* numPtr = bytes)
            {
                for (int index1 = 0; index1 < bytes.Length / 8; ++index1)
                {
                    uint bits1 = ((uint*)numPtr)[index1 * 2] + PasswordCipher._bufSub[0];
                    uint bits2 = ((uint*)numPtr)[index1 * 2 + 1] + PasswordCipher._bufSub[1];
                    for (int index2 = 12; index2 >= 1; --index2)
                    {
                        bits1 = PasswordCipher.RotateLeft(bits1 ^ bits2, (int)bits2) + PasswordCipher._bufSub[index2 * 2];
                        bits2 = PasswordCipher.RotateLeft(bits2 ^ bits1, (int)bits1) + PasswordCipher._bufSub[index2 * 2 + 1];
                    }
                  ((uint*)numPtr)[index1 * 2] = bits1;
                    ((uint*)numPtr)[index1 * 2 + 1] = bits2;
                }
                return bytes;
            }
        }

        public static unsafe string Decrypt(byte[] passwordBytes)
        {
            fixed (byte* numPtr = passwordBytes)
            {
                for (int index1 = 0; index1 < passwordBytes.Length / 8; ++index1)
                {
                    uint bits1 = ((uint*)numPtr)[2 * index1];
                    uint bits2 = ((uint*)numPtr)[2 * index1 + 1];
                    for (int index2 = 12; index2 >= 1; --index2)
                    {
                        bits2 = PasswordCipher.RotateRight(bits2 - PasswordCipher._bufSub[2 * index2 + 1], (int)bits1) ^ bits1;
                        bits1 = PasswordCipher.RotateRight(bits1 - PasswordCipher._bufSub[2 * index2], (int)bits2) ^ bits2;
                    }
                  ((uint*)numPtr)[2 * index1] = bits1 - PasswordCipher._bufSub[0];
                    ((uint*)numPtr)[2 * index1 + 1] = bits2 - PasswordCipher._bufSub[1];
                }
                return new string((sbyte*)numPtr);
            }
        }

        private static uint RotateLeft(uint value, int bits)
        {
            bits %= 32;
            return value << bits | value >> 32 - bits;
        }

        private static uint RotateRight(uint value, int bits)
        {
            bits %= 32;
            return value >> bits | value << 32 - bits;
        }
    }
}
