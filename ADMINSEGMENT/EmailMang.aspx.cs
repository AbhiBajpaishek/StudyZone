using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class ADMINSEGMENT_EmailMang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        string to, sub, body;
        to = txtTo.Text;
        sub = txtSubject.Text;
        body = txtMessage.Text;
        MailSender send = new MailSender();
        bool res = send.GmailSender(to, sub, body);
        if (res)
        {
            lblmailmsg.Text = "Mail sent";
        }
        else
        {
            lblmailmsg.Text = "Mail not send";
        }

    }
}