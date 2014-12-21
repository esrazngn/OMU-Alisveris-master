using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace omualisveris.Cryptography.SHA
{
    public abstract class SHA2
    {
        public static String Hash(String message)
        {
            byte[] bytes = Encoding.Unicode.GetBytes(message);
            System.Security.Cryptography.SHA256Managed sha2 = new System.Security.Cryptography.SHA256Managed();
            byte[] hash = sha2.ComputeHash(bytes);
            string hashString = string.Empty;
            foreach (byte x in hash)
            {
                hashString += String.Format("{0:x2}", x);
            }
            return hashString;
        }
    }
}