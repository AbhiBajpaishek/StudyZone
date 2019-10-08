using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class USERSEGMENT_DownloadStudyMaterial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {

        string category = ddlcategory.SelectedItem.Text;
        if(category=="Web Technology")
        {
            MView.SetActiveView(viewWT);
            DBAdmin db = new DBAdmin();
            DataTable dt = db.ReadBulkData("select * from Tbl_Uploadmaterial where category='"+category+"'");
            GviewWT.DataSource = dt;
            GviewWT.DataBind();

        }
        if (category == "Programming")
        {
            MView.SetActiveView(viewPro);
            DBAdmin db = new DBAdmin();
            DataTable dt = db.ReadBulkData("select * from Tbl_Uploadmaterial where category='" + category + "'");
            GviewPro.DataSource = dt;
            GviewPro.DataBind();
        }
        if (category == "Database")
        {
            MView.SetActiveView(viewDB);
            DBAdmin db = new DBAdmin();
            DataTable dt = db.ReadBulkData("select * from Tbl_Uploadmaterial where category='" + category + "'");
            GviewDB.DataSource = dt;
            GviewDB.DataBind();
        }
        if (category == "Operating System")
        {
            MView.SetActiveView(viewOS);
            DBAdmin db = new DBAdmin();
            DataTable dt = db.ReadBulkData("select * from Tbl_Uploadmaterial where category='" + category + "'");
            GviewOS.DataSource = dt;
            GviewOS.DataBind();
        }
        if (category == "Computer Organisation And Architecture")
        {
            MView.SetActiveView(viewCOA);
            DBAdmin db = new DBAdmin();
            DataTable dt = db.ReadBulkData("select * from Tbl_Uploadmaterial where category='" + category + "'");
            GviewCOA.DataSource = dt;
            GviewCOA.DataBind();
        }

        if (category == "Fundamental of Computers")
        {
            MView.SetActiveView(viewFOC);
            DBAdmin db = new DBAdmin();
            DataTable dt = db.ReadBulkData("select * from Tbl_Uploadmaterial where category='" + category + "'");
            GviewFOC.DataSource = dt;
            GviewFOC.DataBind();
        }



    }

}