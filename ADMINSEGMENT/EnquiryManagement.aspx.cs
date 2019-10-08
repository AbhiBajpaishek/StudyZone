using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ADMINSEGMENT_EnquiryManagement : System.Web.UI.Page
{
    static string emailid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;

        string q;
        q = "select * from tbl_enquiry ";
        DBAdmin dm = new DBAdmin();
        DataTable dt = new DataTable();
        dt = dm.ReadBulkData(q);
        if (dt.Rows.Count > 0)
        {
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        else
        {
            Response.Write("<script>alert('Record Not Found')</script>");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Panel1.Visible = true;
            int eid;
            string q;
            Button btnRespond = (Button)(sender);
            GridViewRow gRow = (GridViewRow)(btnRespond.Parent.Parent);

            eid = int .Parse(gRow.Cells[1].Text);
            Enquiryid.Text = "Enquiry ID: " + eid.ToString();

            q = "select * from tbl_Enquiry where Enquiry_id='" + eid + "';";
            DBAdmin db = new DBAdmin();
            DataTable dt = new DataTable();
            dt = db.ReadBulkData(q);
            emailid = dt.Rows[0][2].ToString();
            //Session["kid"] = emailid;
            Label2.Text = emailid;
            
        }
        catch (Exception ex)
        {
            
        }
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            Button btnRespond = (Button)(sender);
            GridViewRow gRow = (GridViewRow)(btnRespond.Parent.Parent);
            Enquiryid.Text = gRow.Cells[1].Text;
            string q;
            q = "delete from tbl_enquiry where Enquiry_id='" + Enquiryid.Text + "'";

            DBAdmin dm = new DBAdmin();
            dm.IUD(q);
            DataTable dt = new DataTable();
            dt = dm.ReadBulkData("select * from tbl_enquiry");
            if (dt.Rows.Count > 0)
            {
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
        }
        catch (Exception ex)
        {

        }
    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        string to, sub, body;
        to = emailid;
        sub = "Enquriy Reply From GeekNotes";
        body = txtMail.Text;
        MailSender send = new MailSender();
        bool res = send.GmailSender(to, sub, body);
        if (res)
        {
            lblmailmsg.Text = "Mail sent";
        }
        else
        {
            lblmailmsg.Text = "Mail not sent";
        }
    }
}