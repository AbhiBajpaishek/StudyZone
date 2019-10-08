using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CaptchaCode_Generator
/// </summary>
public class CaptchaCode_Generator
{
    public CaptchaCode_Generator()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string codeGenerator()
    {
        char ch;
        string codes = "";
        Random rand = new Random();
        ch = (char)(rand.Next(65, 90));
        codes = codes + ch;
        ch = (char)(rand.Next(65, 90));
        codes = codes + ch;
        ch = (char)(rand.Next(48, 57));
        codes = codes + ch;
        ch = (char)(rand.Next(48, 57));
        codes = codes + ch;
        ch = (char)(rand.Next(97, 122));
        codes = codes + ch;
        ch = (char)(rand.Next(97, 122));
        codes = codes + ch;
        return codes;

    }
}