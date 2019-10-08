using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class USERSEGMENT_ThreadRoom : System.Web.UI.Page
{

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (!IsPostBack) ;
       // myCall();
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        if (!IsPostBack) ;
        myCall();
        //Label t1 = new Label();
        //t1.Text = "Click Button";
        //t1.ID = "Box_text";
        //t1.Text=t1.UniqueID.ToString();
        //Button b1 = new Button();
        //b1.ID = "btn";
        //Master.FindControl("CPHBox2").Controls.Add(t1);
        //Master.FindControl("CPHBox2").Controls.Add(b1);
        //b1.Click += new EventHandler(b1_Click);
    }

    protected void Page_InitComplete(object sender, EventArgs e)
    {
        //myCall();
    }

    DBAdmin dB = new DBAdmin();
    //Panel reply = new Panel();
    Button replyButton = new Button();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (IsPostBack == false)
        //{
        //    myCall();
        //}
        
    }


    protected void myCall()
    {
        DataTable dt = dB.ReadBulkData("select * from Tbl_Discuss");
        int r = dt.Rows.Count;
        int c = dt.Columns.Count;
        for (int i = 0; i < r; i++)
        {
            Panel main = new Panel();//main Panel
            main.ID = "MainPanel"+i.ToString();
            main.CssClass = "MainPanel";
            Master.FindControl("CPHBox2").Controls.Add(main);
            Panel panel = new Panel();//Questions and 1st half Panel
            panel.ID = "panel1"+i.ToString();
            panel.CssClass = "panel1";//CSS class of panel1
            main.Controls.Add(panel);
            Panel reply = new Panel();
            reply.ID = "ReplyPanel"+i.ToString();
            reply.Visible = false;   //It will appear after click of button  only
            reply.Attributes.Add("class", "reply");//panel for replying
            main.Controls.Add(reply);
                      //creating divs for whole page here only.....
            HtmlGenericControl division = new HtmlGenericControl("DIV");//thread div
            division.Attributes.Add("class", "quesdiv");
            HtmlGenericControl usernamediv = new HtmlGenericControl("DIV");// asked by div
            usernamediv.Attributes.Add("class", "userNameDiv");
            HtmlGenericControl quesdiv = new HtmlGenericControl("DIV");//question div
            quesdiv.Attributes.Add("class", "quesDiv");
            HtmlGenericControl countdiv = new HtmlGenericControl("DIV");//reply count div
            countdiv.Attributes.Add("class", "countDiv");
            HtmlGenericControl replybtndiv = new HtmlGenericControl("DIV");//reply Button div
            replybtndiv.Attributes.Add("class", "replybtnDiv");
            HtmlGenericControl textdiv = new HtmlGenericControl("DIV");//textbox div
            textdiv.Attributes.Add("class", "textDiv");
            HtmlGenericControl buttondiv = new HtmlGenericControl("DIV");//button div
            buttondiv.Attributes.Add("class", "buttonDiv");
                            //adding all div in ques panel..............
            panel.Controls.Add(division);
            panel.Controls.Add(usernamediv);
            panel.Controls.Add(quesdiv);
            panel.Controls.Add(countdiv);
            reply.Controls.Add(textdiv);
            reply.Controls.Add(buttondiv);
            panel.Controls.Add(replybtndiv);
            Label threadlbl = new Label();
            threadlbl.CssClass = "threadlbl";
            threadlbl.Text = "Thread Id ..........";
            division.Controls.Add(threadlbl);
            Label threadtxt = new Label();
            threadtxt.CssClass = "threadtxt";
            threadtxt.Text = dt.Rows[i][0].ToString() + " <br/>";
            division.Controls.Add(threadtxt);
            Label asklbl = new Label();
            asklbl.Text = "Asked By: ";
            usernamediv.Controls.Add(asklbl);
            Label asktxt = new Label();
            asktxt.Text = dt.Rows[i][1].ToString() + " <br/>";
            usernamediv.Controls.Add(asktxt);
            Label qtxt = new Label();
            qtxt.CssClass = "qtxt";
            qtxt.Text = dt.Rows[i][2].ToString() + " <br/>";
            quesdiv.Controls.Add(qtxt);
            Label nolbl = new Label();
            nolbl.Text = "Total Replies.....";
            countdiv.Controls.Add(nolbl);
            Label notxt = new Label();
            notxt.Text = dt.Rows[i][3].ToString() + " <br/>";
            countdiv.Controls.Add(notxt);
            Button replyButton = new Button();
            replyButton.ID = "replybtn" + i.ToString();
            replyButton.Text = "Make a Reply";
            replyButton.CssClass = "replybtn";
            replybtndiv.Controls.Add(replyButton);
            replyButton.Click+=delegate (object sender, EventArgs e) { replyButton_Click(sender, e, i); };
            //replyButton.Click += new EventHandler(replyButton_Click);
            //reply panel code from here.............


            TextBox text = new TextBox();
            text.CssClass = "textbox";
            text.TextMode = TextBoxMode.MultiLine;
            text.Height = 100;
            text.Width = 500;
            textdiv.Controls.Add(text);
            Button post = new Button();
            post.CssClass = "post";
            post.Text = "Post Your Answer";
            buttondiv.Controls.Add(post);
            //ans Panel code from here......................
            Panel ansPanel = new Panel();
            ansPanel.ID = "panel2"+i.ToString();
            ansPanel.CssClass = "panel2";
            ansPanel.Visible = false;
            main.Controls.Add(ansPanel);
            int a;
            Int32.TryParse(dt.Rows[i][3].ToString(), out a);
            if (a > 0)
            {
                for (int j = 4; j < c; j++)
                {
                    Label ans = new Label();
                    ansPanel.Controls.Add(ans);
                    ans.Text = "Answer No" + (j - 3) + "     " + dt.Rows[i][j].ToString() + "<br/>";
                }
            }
            else
            {
                Label ans = new Label();
                ansPanel.Controls.Add(ans);
                ans.Text = "No Answers for this Post as Yet <br/>Be the First one To Answer  <br/>";
            }
        }
    }



    protected void replyButton_Click(object sender, EventArgs e, int i)
    {
        Button btn = (Button)sender;
        int l = btn.ID.Length;
        String cntrl = btn.ID;
        cntrl ="Panel2"+ cntrl[l - 1].ToString();
        Master.FindControl("CPHBox2").FindControl("MainPanel1").FindControl(cntrl).Visible = true;
    }


}