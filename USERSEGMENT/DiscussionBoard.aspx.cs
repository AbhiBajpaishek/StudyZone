using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class USERSEGMENT_DiscussionBoard : System.Web.UI.Page
{ 
    DBAdmin dB = new DBAdmin();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["uid"] = "Admin";
        userlbl.Text = Session["uid"].ToString();
        DataTable dt = dB.ReadBulkData("select Thread, Student_id, Question, Ans_count from tbl_Discuss");
    }


    protected void btn_Click(object sender, EventArgs e)
    {
        if (dB.IUD("INSERT INTO Tbl_Discuss (Student_id, Question,Ans_count) VALUES('" + userlbl.Text + "','" + txtques.Text + "',0)") == true)
        {
            infoMsg.Text = "Your query is posted succesfully";
        }
        else
            infoMsg.Text = "Your query could not be posted, Please Try later";
    }

}