/// NextStepGo System (Business/Employer Focus) - Sprint1
/// File Constructed By: Austin Choi, Igor Goryachev, Nathan Lam, Brian Petersen, Austin Volpi, Addison Wittkamp
/// Submitted: 3/19/19

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        Page.Validate("ValidationSame");
        Page.Validate("RequiredValidation");

        if (Page.IsValid)
        {
            RegisterClass commitRegister = new RegisterClass(TxtOrgName.Text, TxtFirstName.Text, TxtLastName.Text, TxtEmailAddress.Text, TxtUserName.Text, TxtPhoneNumber.Text, TxtJobTitle.Text);

            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Business values(@orgname, @firstname, @lastname, @emailaddress, @username, @phonenumber, @jobtitle, null, null, null, null, null);");
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@orgname", commitRegister.GetBusinessName());
            cmd.Parameters.AddWithValue("@firstname", commitRegister.GetFirstName());
            cmd.Parameters.AddWithValue("@lastname", commitRegister.GetLastName());
            cmd.Parameters.AddWithValue("@emailaddress", commitRegister.GetEmailAddress());
            cmd.Parameters.AddWithValue("@username", commitRegister.GetUsername());
            cmd.Parameters.AddWithValue("@phonenumber", commitRegister.GetPhoneNumber());
            cmd.Parameters.AddWithValue("@jobtitle", commitRegister.GetJobTitle());
            cmd.ExecuteNonQuery();

            PasswordRegister commitPassword = new PasswordRegister(TxtUserName.Text, TxtFirstName.Text, TxtPassword.Text, TxtEmailAddress.Text);

            SqlCommand pass = new SqlCommand("insert into Password values((select max(BusinessEntityID) from Business), @username, @firstname, @password, @email);");
            pass.CommandType = System.Data.CommandType.Text;
            pass.Connection = con;
            pass.Parameters.Add(new SqlParameter("@username", commitPassword.GetUsername()));
            pass.Parameters.AddWithValue("@firstname", commitPassword.GetFirstName());
            pass.Parameters.Add(new SqlParameter("@password", PasswordHash.HashPassword(commitPassword.GetPassword())));
            pass.Parameters.AddWithValue("@email", commitPassword.GetEmail());
            pass.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Default.aspx");
            //LblSuccessfulRegister.Visible = true;
        }
    }

    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}