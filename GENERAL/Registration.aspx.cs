using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GENERAL_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            CaptchaCode_Generator captchaCode_Generator = new CaptchaCode_Generator();
            Captcha_lbl.Text = captchaCode_Generator.codeGenerator();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        ValidationClass validationClass = new ValidationClass();
        if (picUploader.HasFile == true)
        {
            if (validationClass.imageCheck(picUploader.FileName, picUploader.PostedFile.ContentLength) == true)
            {
                Image1.ImageUrl = "~/GENERAL/User Pics/ " + picUploader.FileName;
                picUploader.SaveAs(MapPath("~/GENERAL/User Pics/ " + picUploader.FileName));
                lblpicup.Text = "Pic Uploaded!!";               
            }
            else
                lblpicup.Text = "Image Size must exceed not 1Mb and only .jpg files are allowed";
         }
    }

    protected void Refresh_Captcha_Click(object sender, EventArgs e)
    {
        CaptchaCode_Generator captchaCode_Generator = new CaptchaCode_Generator();
        Captcha_lbl.Text = captchaCode_Generator.codeGenerator();
    }

    protected void course_dropdown_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Submit_btn_Click(object sender, EventArgs e)
    {
        DBAdmin db = new DBAdmin();
        if (Captcha_lbl.Text.Trim() == captcha_text.Text.Trim())
        {            
            if (db.callingStoredProcedure(Name_txt.Text, Gender_list.SelectedValue, clg_name_txt.Text, course_dropdown.SelectedValue, year_list.SelectedValue, contact_txt.Text, picUploader.FileName, pass_text.Text, mail_txt.Text) == true)
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            else
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Try again')", true);
        }
        else
            Captcha_error.Text = "Please Enter Correct Captcha Code";
    }
  
}