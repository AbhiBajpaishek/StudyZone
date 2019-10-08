using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class GENERAL_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username, password, c, q;
        username = txtUsername.Text;
        password = txtPassword.Text;
        c = DropDownList1.Text;
        q = "select * from TBL_login where user_id='" + username + "'and pass='" + password + "'and user_type='" + c + "'";
        DBAdmin dm = new DBAdmin();
        DataTable dt = new DataTable();
        dt = dm.ReadBulkData(q);
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0][2].ToString().Trim().Equals("User"))
            {
                if (dt.Rows[0][3].ToString().Trim().Equals("Active"))
                {
                    Session["uid"] = username;
                    Response.Redirect("~/USERSEGMENT/UserHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Account disable Contact to Administrator ')</script>");
                }
            }
            else
            {
                Session["uid"] = username;
                Response.Redirect("~/ADMINSEGMENT/Home.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Userid and Password')</script>");
        }
    }
}