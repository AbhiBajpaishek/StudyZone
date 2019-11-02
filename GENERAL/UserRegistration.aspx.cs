using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GENERAL_UserRegistration : System.Web.UI.Page
{

   
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        DateOfBirthFill();
    }

    public void DateOfBirthFill()
    {
        dropDownYear.DataSource = GetYear();
        dropDownYear.DataBind();
        dropDownMonth.DataSource = GetMonths();
        dropDownMonth.DataBind();
        dropDownDate.DataSource = GetDays(1905,GetMonths(),"Jan");
        dropDownDate.DataBind();
        dropDownOrganisation.DataSource = GetOrganisations();
        dropDownOrganisation.DataBind();
    }

    private List<int> GetYear()
    {
        List<int> year = new List<int>();
        for (int i = 1905; i <= 2019; i++)
            year.Add(i);
        return year;
    }

    private List<string> GetMonths()
    {
        string[] month = { "Jan", "Feb", "March", "April", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec" };
        return month.ToList<string>();
    }

    private List<int> GetDays(int year,List<string> month,string mon)
    {
        int[] days = { 31, IsLeapYear(year), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
        int index = month.IndexOf(mon);
        List<int> day = new List<int>();
        for (int i = 1; i <= days[index]; i++)
            day.Add(i);
        return day;
    }

    private int IsLeapYear(int year)
    {
        if (year % 4 == 0)
        {
            if (year % 100 == 0)
            {
                if (year % 400 == 0)
                    return 29;
                else
                    return 28;
            }
            else
                return 29;
        }
        else
            return 28;
    }


    private List<string> GetOrganisations()
    {
        DBAdmin db = new DBAdmin();
        return db.ReadOrganisations();
    }

    protected void dropDownOrganisation_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(dropDownOrganisation.SelectedValue=="Others")
        {
            textBoxOtherOrganisations.Enabled = true;
        }
        else
        {
            textBoxOtherOrganisations.Enabled = false;
        }
    }

    protected void dropDownMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        dropDownDate.DataSource = GetDays(Convert.ToInt32(dropDownYear.SelectedValue), GetMonths(), dropDownMonth.SelectedValue);
        dropDownDate.DataBind();
    }

    protected void textBoxName_TextChanged(object sender, EventArgs e)
    {
        if (textBoxName.Text == "") ;
            
    }
}