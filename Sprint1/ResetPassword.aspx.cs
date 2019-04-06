using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResetPassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSaveChanges_Click(object sender, EventArgs e)
    {
        string email = (string)Session["Email"];

        PasswordRegister resetPassword = new PasswordRegister(txtConfirmPassword.Value, email);

        con.Open();

        SqlCommand cmd = new SqlCommand("Update Password set password=@password Where Email = @Email", con);
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Parameters.AddWithValue("@password", PasswordHash.HashPassword(resetPassword.GetPassword()));
        cmd.Parameters.AddWithValue("@Email", email);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Default.aspx");

    }
}