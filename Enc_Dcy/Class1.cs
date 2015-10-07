using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Enc_Dcy
{
    public class Class1
    {
        public String Encrypt(String message)
        {
            string enc_msg = "";
            int enc_char = 0;
            foreach (byte B in System.Text.Encoding.UTF8.GetBytes(message.ToCharArray()))
            {
                int ASCII_Val = Convert.ToInt32(B);
                if ((ASCII_Val + 20) > 126)
                {
                    enc_char = (((ASCII_Val + 20) - 127) + 32);
                }

            }
            byte[] ASCII_Array = Encoding.ASCII.GetBytes(message);
            for (int i = 0; i < ASCII_Array.Length; i++)
            {
                enc_msg += ASCII_Array[i] + "!";
            }
            return enc_msg;
        }

        public String Decrypt(String message)
        {
            string[] ASCIIArray = message.Split('!');
            string dec_msg = "";
            for (int i = 0; i < ASCIIArray.Length - 1; i++)
            {
                dec_msg += (char)(Convert.ToInt16(ASCIIArray[i]));
            }
            return dec_msg;
        }

    }
}
