using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Amazing : System.Web.UI.Page
{
    DBAdmin dB = new DBAdmin();
    String columnName = "Reply";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack==false)
        {
            myCall();
        }
        
    }

    protected void myCall()
    {
        DataTable dt = dB.ReadBulkData("select * from Tbl_Discuss");
        int r = dt.Rows.Count;
        int c = dt.Columns.Count;
        for(int i=0;i<r;i++)
        {
            Panel panel = new Panel();
            Page.Controls.Add(panel);
            panel.BackColor = System.Drawing.Color.Aqua;
            Label threadlbl = new Label();
            threadlbl.Text = "Thread Id ";
            panel.Controls.Add(threadlbl);
            Label threadtxt = new Label();
            threadtxt.Text = dt.Rows[i][0].ToString()+" <br/>" ;
            panel.Controls.Add(threadtxt);
            Label asklbl = new Label();
            asklbl.Text = "Asked By: ";
            panel.Controls.Add(asklbl);
            Label asktxt = new Label();
            asktxt.Text= dt.Rows[i][1].ToString() + " <br/>";
            panel.Controls.Add(asktxt);
            Label qlbl = new Label();
            qlbl.Text = "Question ";
            panel.Controls.Add(qlbl);
            Label qtxt = new Label();
            qtxt.Text= dt.Rows[i][2].ToString() + " <br/>";
            panel.Controls.Add(qtxt);
            Label nolbl = new Label();
            nolbl.Text = "No of Replies";
            panel.Controls.Add(nolbl);
            Label notxt = new Label();
            notxt.Text= dt.Rows[i][3].ToString() + " <br/>";
            panel.Controls.Add(notxt);
            for (int j=4;j<c;j++)
            {
                Panel ansPanel = new Panel();
                if (dt.Rows[i][j].ToString().Length>0)
                {
                    Label ans = new Label();
                    ansPanel.Controls.Add(ans);
                    ans.Text = "Answer No " + (j - 3) + " " + dt.Rows[i][j].ToString() + "<br/>";
                }
            }
        }
        //while (c>0)
        //{

        //threadlbl.Text = "Thread Id ";
        //threadTxt.Text=dt.Rows[][]

        //}
        //threadTxt.Text = dt.Rows[0][0].ToString();
        //askTxt.Text = dt.Rows[0][1].ToString();
        //quesTxt.Text = dt.Rows[0][2].ToString();
        //notxt.Text = dt.Rows[0][3].ToString();
        //int count = dt.Columns.Count;
        //int i = 4;
        //if (count > 4)
        //{
        //    while (count > 4)
        //    {
        //        Label ans = new Label();
        //        Page.Controls.Add(ans);
        //        ans.Text = "Answer No " + (i - 3) + " " + dt.Rows[0][i].ToString() + "<br/>";
        //        i++;
        //        count--;
        //    }
        //}
        //else
        //{
        //    Label label = new Label();
        //    Page.Controls.Add(label);
        //    label.Text = "No Answers yet";
        //}
    }


    //protected void Post_Click(object sender, EventArgs e)
    //{
    //    int c=0;
    //    SqlDataReader dr = dB.readData("select Ans_count from tbl_Discuss where Thread= " + threadTxt.Text);
    //    while(dr.Read())
    //    c = Int32.Parse(dr["Ans_count"].ToString());
    //    columnName = "Reply" + (c + 1);
    //    dr.Close();
    //    Label label = new Label();
    //    DiscussionPanel.Controls.Add(label);
    //    //Page.Controls.Add(label);
    //    if (dB.reply(columnName,rply_text.Text,threadTxt.Text,c+1))
    //    {
    //        label.Text = "Successful";
    //    }
    //    else
    //    {
    //        label.Text = "Not Successful";
    //    }
    //    myCall();
    //}
}