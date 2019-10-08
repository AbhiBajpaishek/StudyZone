using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMINSEGMENT_StudentManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DBAdmin db = new DBAdmin();
        DataTable dt= db.ReadBulkData("select * from Tbl_Registration");
        gviewallrecords.DataSource = dt;
        gviewallrecords.DataBind();

    }
}