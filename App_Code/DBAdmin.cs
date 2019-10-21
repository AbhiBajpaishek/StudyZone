using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Web;

/// <summary>
/// Summary description for DBAdmin
/// </summary>
public class DBAdmin
{
    SqlConnection con;
    SqlTransaction trans;
    public DBAdmin()
    {
        //initializing sql connection with conn string from web.config
        con= new SqlConnection(connectionString: System.Configuration.ConfigurationManager.ConnectionStrings["StudyZoneConnectionString"].ConnectionString);
        trans = null;
    }

    // The UserRegistration fn calls the Stored Procedure in the database which via transaction transmits data in
    // ImageTable, OrgTable, LoginTable,UserDataTable

    public bool UserRegistration(string UserName, char Gender, string OrganisationName,char UserType, string Image, string Password, string EmailId,char Status,string DateOfBirth)
    {
        con.Open();
        trans = con.BeginTransaction();
        SqlCommand cmd = new SqlCommand("InsertUserSP",con);
        cmd.CommandType = CommandType.StoredProcedure;
        
        cmd.Parameters.AddWithValue("@UserName", UserName);
        cmd.Parameters.AddWithValue("@EmailId", EmailId);
        cmd.Parameters.AddWithValue("@Password", Password);
        cmd.Parameters.AddWithValue("@Gender", Gender);
        cmd.Parameters.AddWithValue("@OrganisationName", OrganisationName);
        cmd.Parameters.AddWithValue("@UserType", UserType);
        cmd.Parameters.AddWithValue("@Status", Status);
        cmd.Parameters.AddWithValue("@DateOfBirth", DateOfBirth);
        cmd.Parameters.AddWithValue("@RegistrationDate", DateTime.Now.ToString());
        cmd.Parameters.AddWithValue("@Image", Image);
        int res = cmd.ExecuteNonQuery();
        con.Close();
        if (res>0)
            return true;
        return false;

    }


    public bool IUD(string command)
    {
        SqlCommand cmd = new SqlCommand(command, con);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        int res = cmd.ExecuteNonQuery();
        con.Close();
        if (res > 0)
            return true;
        else
            return false;
    }


    public DataTable ReadBulkData(string command)
    {
        SqlDataAdapter da = new SqlDataAdapter(command, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public SqlDataReader readData(string command)
    {
        SqlCommand cmd = new SqlCommand(command, con);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        return cmd.ExecuteReader();
    }

    //Stored procedure for registration submit

    public bool callingStoredProcedure(string name, string gender, string clg_name, string course_name, string year, string contact,string pic, string pass, string mail)
    {
        SqlCommand cmd = new SqlCommand("register", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@gender", gender);
        cmd.Parameters.AddWithValue("@clg_name",clg_name);
        cmd.Parameters.AddWithValue("@course",course_name);
        cmd.Parameters.AddWithValue("@year",year);
        cmd.Parameters.AddWithValue("@mail", mail);
        cmd.Parameters.AddWithValue("@contact",contact);
        cmd.Parameters.AddWithValue("@pic", pic);
        cmd.Parameters.AddWithValue("@pass",pass);
        cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString());
        
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        int res = cmd.ExecuteNonQuery();
        con.Close();
        if (res > 0)
            return true;
        else
            return false;
    }

    //Stored Procedure for Discussion Board 
    public bool reply(String name,String msg,String thread,int count)
    {
        SqlCommand cmd = new SqlCommand("discussRply", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@msg", msg);
        cmd.Parameters.AddWithValue("@thread", thread);
        cmd.Parameters.AddWithValue("@count", count);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        int res = cmd.ExecuteNonQuery();
        con.Close();
        if (res > 0)
            return true;
        else
            return false;
    }



}