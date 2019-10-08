using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for MailSender
/// </summary>
public class MailSender
{
    public MailSender()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool GmailSender(string sendto, string sub, string body)
    {
        SmtpClient client = new SmtpClient();
        MailMessage mm = new MailMessage();
        try
        {
            
            //setting mail Attribute...
            NetworkCredential smtpcreds = new NetworkCredential("devaishu101@gmail.com", "lko226016");
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.UseDefaultCredentials = false;
            client.Credentials = smtpcreds;
            client.EnableSsl = true;
            //convert string to email address
           MailAddress Too = new MailAddress(sendto);
           MailAddress from = new MailAddress("devaishu101@gmail.com");
           
            //setup message setting
           mm.Subject = sub;
           mm.Body = body;
           mm.From = from;
           mm.To.Add(Too);
            //send email
           client.Send(mm);
           return true;
        }
        catch(Exception e)
        {
            return false;
        }
        
    }
}