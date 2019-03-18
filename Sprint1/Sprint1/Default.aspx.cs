using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

// OFFICIAL

public partial class Default : System.Web.UI.Page
{
    public static string userLogin;

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Register_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void Login_Click(object sender, EventArgs e)
    {
        usernameHelp.InnerText = "We'll never share your username with anyone else";
        passwordHelp.InnerText = "Forgot Password?";
        Login commitUsername = new Login(txtUsername.Text);

        con.Open();
        SqlCommand cmd = new SqlCommand("Select BusinessEntityID from Business where username=@username", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@username", commitUsername.GetUsername());
        SqlDataReader entityReader = cmd.ExecuteReader();

        if (entityReader.HasRows)
        {
            while (entityReader.Read())
            {
                int BusinessID = Convert.ToInt32(entityReader["BusinessEntityID"].ToString());
                Session.Add("EntityID", BusinessID); //get the username of the current user to use across pages
            }
        }
        con.Close();


        con.Open();
        SqlCommand findPass = new SqlCommand();
        findPass.Connection = con;
        findPass.CommandText = "Select password from Password where username = @username";
        findPass.Parameters.Add(new SqlParameter(("@username"), commitUsername.GetUsername()));
        findPass.ExecuteNonQuery();

        SqlDataReader reader = findPass.ExecuteReader();

        if (reader.HasRows) // if the username exists, it will continue
        {
            while (reader.Read()) // will read the single record that matches the entered username
            {
                string storedPass = reader["password"].ToString(); // store the database password into this variable

                if (PasswordHash.ValidatePassword(txtPassword.Text, storedPass)) // if the entered password matches what is stored, it will show success
                {
                    Response.Redirect("BusinessPortal.aspx");

                }
                else
                    passwordHelp.InnerText = "Incorrect Password.";
            }
        }
        else
        {
            usernameHelp.InnerText = "Incorrect Username.";
        }


        con.Close();
    }


}