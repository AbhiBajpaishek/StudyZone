using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GENERAL_Enquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string q;
        
        q = "insert into tbl_enquiry values('" + txtName.Text + "','" + txtemail.Text + "','" + txtcontact.Text + "','" + txtMessage.Text + "','"+DateTime.Now +"')";

        DBAdmin dm = new DBAdmin();
        bool j = dm.IUD(q);
        if (j == true)
            Response.Write("<script>alert('Enquiry Submitted')</script>");
        else
            Response.Write("<script>alert('Enquiry Not Submitted')</script>");
    }
}