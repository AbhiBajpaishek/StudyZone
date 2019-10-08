using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static int count;
    DBAdmin db = new DBAdmin();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataReader dr = db.readData("select Ans_count from Tbl_Discuss where Thread = ");
        count = Int32.Parse(dr[0].ToString());
    }


    protected void rply_Click(object sender, EventArgs e)
    {

    }
}