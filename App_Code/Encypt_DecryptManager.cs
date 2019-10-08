using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Text;
/// <summary>
/// Summary description for Encypt_DecryptManager
/// </summary>
public class Encypt_DecryptManager
{
    public Encypt_DecryptManager()
    {
 
    }

    public string Encrypt(string pass)
    {
        int mid;
        StringBuilder sb = new StringBuilder(pass,pass.Length);
        string str = "";
        while (sb.Length > 1)
        {
            mid = sb.Length / 2;
            if (sb.Length % 2 == 0)
                mid--;
            str = str + sb[mid];
            sb.Remove(mid, 1);
        }
        str = str + sb[0];
        return str;
    }

    public string Decrypt(string msg)
    {
        Encypt_DecryptManager ob = new Encypt_DecryptManager();
        char ch = msg[0];
        char ch1;
        if (msg.Length > 1)
            ch1 = msg[msg.Length - 2];
        else
            ch1 = msg[0];
        int mid = msg.Length / 2;
        if (msg.Length % 2 == 0)
            mid--;
        while(msg[mid] != ch || msg[0] != ch1)
            msg= ob.Encrypt(msg);
        return msg;
    }


}