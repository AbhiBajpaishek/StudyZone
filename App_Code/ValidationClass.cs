using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ValidationClass
/// </summary>
public class ValidationClass
{
    public ValidationClass()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool imageCheck(String name,int content_length)
    {
        if (name.Substring(name.Length - 4).Equals(".jpg"))
        {
            if (content_length <= 1024 * 1024)
                return true;
            else
                return false;
        }
        else
            return false;

    }
   

    //public bool captchaCheck(string text)
    //{
    //    if(text.Equals())
    //}
}