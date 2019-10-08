using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ADMINSEGMENT_UploadStudyMaterial : System.Web.UI.Page
{
    DBAdmin db = new DBAdmin();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = db.ReadBulkData("select * from tbl_UploadMaterial");
        GridView1.DataBind();
    }

    protected void BtnSave_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            string fname, q;
            fname = FileUpload1.FileName;
            string category = DropDownList1.SelectedItem.Text;
            if(category=="Web Technology")
            {
                FileUpload1.SaveAs(MapPath("~/MATERIAL/Web Technology/" + fname));
            }
            else if (category == "Computer Organisation And Architecture")
            {
                FileUpload1.SaveAs(MapPath("~/MATERIAL/Computer Organisation And Architecture/" + fname));
            }
            else if (category == "Programming")
            {
                FileUpload1.SaveAs(MapPath("~/MATERIAL/Programming/" + fname));
            }
            else if (category == "Database")
            {
                FileUpload1.SaveAs(MapPath("~/MATERIAL/Database/" + fname));
            }
            else if (category == "Fundamental of Computers")
            {
                FileUpload1.SaveAs(MapPath("~/MATERIAL/Fundamental of Computers/" + fname));
            }
            else if (category == "Operating System")
            {
                FileUpload1.SaveAs(MapPath("~/MATERIAL/Operating System/" + fname));
            }


            q = "insert into tbl_UploadMaterial values('" + txtSubjectName.Text + "','" + fname + "','"+category+ "','" + DateTime.Now + "')";
            DBAdmin dm = new DBAdmin();
            bool j = dm.IUD(q);
            if (j == true)
            {
                GridView1.DataSource = db.ReadBulkData("select * from tbl_UploadMaterial");
                GridView1.DataBind();
                //jaise hi upload ho waise hi show ho jaye...
                Response.Write("<script>alert('Study Material uploaded successfully')</script>");
            }
        }
        txtSubjectName.Text = "";
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = db.ReadBulkData("select * from tbl_UploadMaterial");
        GridView1.DataBind();
    }
}