using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USERSEGMENT_DiscussBoard : System.Web.UI.Page
{
    DBAdmin dB = new DBAdmin();
    String columnName = "Reply";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            myCall();
        }
    }

    protected void myCall()
    {
        DataTable dt = dB.ReadBulkData("select * from Tbl_Discuss");
        threadTxt.Text = dt.Rows[0][0].ToString();
        askTxt.Text = dt.Rows[0][1].ToString();
        quesTxt.Text = dt.Rows[0][2].ToString();
        notxt.Text = dt.Rows[0][3].ToString();
        int count = dt.Columns.Count;
        int i = 4;
        if (count > 4)
        {
            while (count > 4)
            {
                Label ans = new Label();
                ans.Font.Bold = true;
                Label anstxt = new Label();
                anstxt.CssClass = "anstext";
                ansPanel.Controls.Add(ans);
                ansPanel.Controls.Add(anstxt);
                ans.Text = "Answer No." + (i - 3)+" ->";
                anstxt.Text= " " + dt.Rows[0][i].ToString() + "<br/>";
                i++;
                count--;
            }
        }
        else
        {
            Label label = new Label();
            Page.Controls.Add(label);
            label.Text = "No Answers yet";
        }
    }


    protected void Post_Click(object sender, EventArgs e)
    {
        int c = 0;
        SqlDataReader dr = dB.readData("select Ans_count from tbl_Discuss where Thread= " + threadTxt.Text);
        while (dr.Read())
            c = Int32.Parse(dr["Ans_count"].ToString());
        columnName = "Reply" + (c + 1);
        dr.Close();
        Label label = new Label();
        DiscussionPanel.Controls.Add(label);
        //Page.Controls.Add(label);
        if (dB.reply(columnName, rply_text.Text, threadTxt.Text, c + 1))
        {
            label.Text = "Successful";
        }
        else
        {
            label.Text = "Not Successful";
        }
        myCall();
    }
}