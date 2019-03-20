/// NextStepGo System (Business/Employer Focus) - Sprint1
/// File Constructed By: Austin Choi, Igor Goryachev, Nathan Lam, Brian Petersen, Austin Volpi, Addison Wittkamp
/// Submitted: 3/19/19

 
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BusinessProfile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];

        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Business where BusinessEntityID = @EntityID", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@EntityID", LoginEntityID);
            cmd.ExecuteNonQuery();

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    //TxtOrgName.Text = reader["BusinessName"].ToString();
                    TxtFirstName.Text = reader["FirstName"].ToString();
                    TxtLastName.Text = reader["LastName"].ToString();
                    TxtEmailAddress.Text = reader["EmailAddress"].ToString();
                    // TxtUserName.Text = reader["username"].ToString();
                    TxtPhoneNumber.Text = reader["PhoneNumber"].ToString();
                    // TxtJobTitle.Text = reader["JobTitle"].ToString();
                    txtInputAddress.Text = reader["Address"].ToString();
                    txtAddressTwo.Text = reader["Address2"].ToString();
                    txtInputCity.Text = reader["City"].ToString();
                    txtStateCity.Text = reader["State"].ToString();
                    txtInputZip.Text = reader["Zip"].ToString();
                }
            }
            reader.Close();
            con.Close();

            con.Open();

            cmd = new SqlCommand("select BusinessName from Business where BusinessEntityID=@BusinessEntityID", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("BusinessEntityID", LoginEntityID);
            cmd.ExecuteNonQuery();

            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    BusinessName.InnerText = rd["BusinessName"].ToString();
                }
            }
            rd.Close();
            con.Close();
        }
    }

    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("BusinessPortal.aspx");
    }

    protected void BtnSave_Click(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];

        UpdateClass updateUser = new UpdateClass(TxtFirstName.Text, TxtLastName.Text,
            TxtEmailAddress.Text, TxtPhoneNumber.Text, txtInputAddress.Text, txtAddressTwo.Text, txtInputCity.Text, txtStateCity.Text, txtInputZip.Text);

        con.Open();
        SqlCommand cmd = new SqlCommand("Update Business Set FirstName=@firstName, LastName=@lastName, " +
            "EmailAddress=@emailAddress, PhoneNumber=@phoneNumber, Address=@Address, Address2=@Address2, City=@City, State=@State, Zip=@Zip Where BusinessEntityID=@EntityID", con);
        cmd.CommandType = CommandType.Text;

        cmd.Parameters.AddWithValue("@EntityID", LoginEntityID);
        cmd.Parameters.AddWithValue("@businessName", updateUser.GetBusinessName() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@firstName", updateUser.GetFirstName());
        cmd.Parameters.AddWithValue("@lastName", updateUser.GetLastName());
        cmd.Parameters.AddWithValue("@emailAddress", updateUser.GetEmailAddress());
        cmd.Parameters.AddWithValue("@username", updateUser.GetUsername() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@phoneNumber", updateUser.GetPhoneNumber());
        cmd.Parameters.AddWithValue("@jobTitle", updateUser.GetJobTitle() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Address", updateUser.GetAddress() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Address2", updateUser.GetAddress2() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@City", updateUser.GetCity() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@State", updateUser.GetState() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Zip", updateUser.GetZip() ?? (object)DBNull.Value);
        cmd.ExecuteNonQuery();

        con.Close();

        PasswordRegister updatePassword = new PasswordRegister(TxtFirstName.Text);
        con.Open();
        SqlCommand cmdPwd = new SqlCommand("Update Password Set firstname=@firstname Where BusinessEntityID=@EntityID", con);
        cmdPwd.CommandType = CommandType.Text;

        cmdPwd.Parameters.AddWithValue("@EntityID", LoginEntityID);
        //cmdPwd.Parameters.AddWithValue("@username", updatePassword.GetUsername());
        cmdPwd.Parameters.AddWithValue("@firstname", updatePassword.GetFirstName());
        cmdPwd.ExecuteNonQuery();

        con.Close();

        //LblChangesSaved.Visible = true;
    }
}