using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Auth.Security.Cryptography
{
    public class SRP6
    {
        private static BigInt N = BigInt.FromHexString("894B645E89E1535BBDAD5B8B290650530801B18EBFBF5E8FAB3C82872A3E9BB7");
        private static BigInt g = BigInt.FromHexString("07");
        private static BigInt k = BigInt.FromHexString("03");
        private static BigInt s = BigInt.FromMemoryBytes(new byte[32]
        {
      (byte) 55,
      (byte) 177,
      (byte) 232,
      (byte) 60,
      (byte) 185,
      (byte) 177,
      (byte) 108,
      (byte) 135,
      (byte) 223,
      (byte) 198,
      (byte) 105,
      (byte) 1,
      (byte) 32,
      (byte) 225,
      (byte) 72,
      (byte) 11,
      (byte) 238,
      (byte) 206,
      (byte) 217,
      (byte) 24,
      (byte) 121,
      (byte) 51,
      (byte) 91,
      (byte) 33,
      (byte) 112,
      (byte) 57,
      (byte) 65,
      (byte) 36,
      (byte) 111,
      (byte) 144,
      (byte) 3,
      (byte) 236
        });
        private static BigInt b = BigInt.FromMemoryHS("C34E8464C532C1CE798580792B42D8DAB39E1FF9D4CC2820673DCBF9B9F4179E");
        private BigInt x;
        private BigInt v;
        private BigInt B;
        private BigInt I;

        public static BigInt H_BigInt(params object[] numbers)
        {
            return BigInt.FromMemoryBytes(SRP6.H(numbers));
        }

        public static byte[] H(params object[] numbers)
        {
            SRP6.Sha1Hash sha1Hash = new SRP6.Sha1Hash();
            for (int index = 0; index < numbers.Length; ++index)
            {
                if (numbers[index] is BigInt)
                    sha1Hash.Update((numbers[index] as BigInt).GetBytes());
                else if (numbers[index] is byte[])
                    sha1Hash.Update(numbers[index] as byte[]);
            }
            return sha1Hash.Final();
        }

        public static byte[] HMD5(byte[] input) => MD5.Create().ComputeHash(input);

        private static BigInt Compute_p(string plainPassword)
        {
            byte[] numArray1 = new byte[15]
            {
        (byte) 163,
        (byte) 172,
        (byte) 161,
        (byte) 163,
        (byte) 102,
        (byte) 100,
        (byte) 106,
        (byte) 102,
        (byte) 44,
        (byte) 106,
        (byte) 107,
        (byte) 103,
        (byte) 102,
        (byte) 107,
        (byte) 108
            };
            byte[] input = new byte[plainPassword.Length + numArray1.Length];
            Encoding.ASCII.GetBytes(plainPassword).CopyTo((Array)input, 0);
            numArray1.CopyTo((Array)input, plainPassword.Length);
            byte[] numArray2 = SRP6.HMD5(input);
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append("00000000");
            foreach (byte num in numArray2)
                stringBuilder.Append(num.ToString("X2"));
            return BigInt.FromMemoryHS(stringBuilder.ToString());
        }

        private static BigInt GetB(BigInt v)
        {
            BigInt b = SRP6.k.Duplicate();
            b.Multiply(v);
            BigInt n = SRP6.g.Duplicate();
            n.ModPow(SRP6.b, SRP6.N);
            b.Add(n);
            return b;
        }

        private static BigInt GetS(BigInt A, BigInt v, BigInt u)
        {
            BigInt s = v.Duplicate();
            s.ModPow(u, SRP6.N);
            s.Multiply(A);
            s.ModPow(SRP6.b, SRP6.N);
            return s;
        }

        public static BigInt ShaInterleave(BigInt S)
        {
            byte[] bytes = S.GetBytes();
            int length = bytes.Length / 2;
            byte[] Data = new byte[length];
            for (int index = 0; index < length; ++index)
                Data[index] = bytes[index * 2];
            byte[] numArray1 = new SRP6.Sha1Hash().Final(Data);
            byte[] final = new byte[40];
            for (int index = 0; index < 20; ++index)
                final[index * 2] = numArray1[index];
            for (int index = 0; index < length; ++index)
                Data[index] = bytes[index * 2 + 1];
            byte[] numArray2 = new SRP6.Sha1Hash().Final(Data);
            for (int index = 0; index < 20; ++index)
                final[index * 2 + 1] = numArray2[index];
            return BigInt.FromMemoryBytes(final);
        }

        private static byte[] XorNgHashes()
        {
            byte[] numArray1 = SRP6.H((object)SRP6.N);
            byte[] numArray2 = SRP6.H((object)SRP6.g);
            for (int index = 0; index < 20; ++index)
                numArray1[index] ^= numArray2[index];
            return numArray1;
        }

        public SRP6(string username, string password)
        {
            BigInt p = SRP6.Compute_p(password);
            this.x = SRP6.H_BigInt((object)SRP6.s, (object)p);
            this.v = SRP6.g.Duplicate();
            this.v.ModPow(this.x, SRP6.N);
            this.I = BigInt.FromMemoryBytes(Encoding.Default.GetBytes(username + (username.Length % 2 == 0 ? "" : "\0")));
            this.B = SRP6.GetB(this.v);
        }

        public void Dispose()
        {
        }

        public bool Challenge(byte[] _A, byte[] _M)
        {
            BigInt A = BigInt.FromMemoryBytes(_A);
            BigInt u = SRP6.H_BigInt((object)A, (object)this.B);
            BigInt bigInt = SRP6.ShaInterleave(SRP6.GetS(A, this.v, u));
            bool flag = true;
            byte[] numArray = SRP6.H((object)SRP6.XorNgHashes(), (object)SRP6.H((object)this.I), (object)SRP6.s, (object)A, (object)this.B, (object)bigInt);
            if (numArray.Length != _M.Length)
            {
                flag = false;
            }
            else
            {
                for (int index = 0; index < numArray.Length; ++index)
                {
                    if ((int)numArray[index] != (int)_M[index])
                    {
                        flag = false;
                        break;
                    }
                }
            }
            return flag;
        }

        public void GetOutgoingFields(out byte[] _B, out byte[] _s)
        {
            _B = this.B.GetBytes();
            _s = SRP6.s.GetBytes();
        }

        public class Sha1Hash
        {
            private SHA1 mSha;
            private static byte[] ZeroArray = new byte[0];

            public Sha1Hash() => this.mSha = SHA1.Create();

            public void Update(byte[] Data) => this.mSha.TransformBlock(Data, 0, Data.Length, Data, 0);

            public void Update(string s) => this.Update(Encoding.Default.GetBytes(s));

            public void Update(int data) => this.Update(BitConverter.GetBytes(data));

            public void Update(uint data) => this.Update(BitConverter.GetBytes(data));

            public byte[] Final()
            {
                this.mSha.TransformFinalBlock(SRP6.Sha1Hash.ZeroArray, 0, 0);
                return this.mSha.Hash;
            }

            public byte[] Final(byte[] Data)
            {
                this.mSha.TransformFinalBlock(Data, 0, Data.Length);
                return this.mSha.Hash;
            }
        }
    }
}
