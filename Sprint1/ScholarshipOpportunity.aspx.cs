using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class Default4 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ADD_Click(object sender, EventArgs e)
    {

        con.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = con;

        ScholarshipOpportunity newScholarshipOpportunity = new ScholarshipOpportunity(TxtScholarshipName.Text, TxtDescription.Text, TxtAmount.Text, TxtApplyBefore.Text);

        String sqlString = "";

        // Inserts into student table using parameterized query 
        sqlString = "INSERT INTO [dbo].[ScholarshipPosting] values (@ScholarshipName, @Description, @Amount, @ApplyBefore)";

        insert.Parameters.AddWithValue("@ScholarshipName", newScholarshipOpportunity.getScholarshipName());
        insert.Parameters.AddWithValue("@Description", newScholarshipOpportunity.getDescription());
        insert.Parameters.AddWithValue("@Amount", newScholarshipOpportunity.getAmount());
        insert.Parameters.AddWithValue("@ApplyBefore", newScholarshipOpportunity.getApplyBefore());


        insert.CommandText = sqlString;
        insert.ExecuteNonQuery();
        con.Close();
    }


    protected void EDIT_Click(object sender, EventArgs e)
    {

        int LoginEntityID = (int)Session["EntityID"];


        UpdateScholarship updateUser = new UpdateScholarship(TxtScholarshipName.Text, TxtDescription.Text, TxtAmount.Text, TxtApplyBefore.Text);


        con.Open();
        SqlCommand cmd = new SqlCommand("Update [dbo].[ScholarshipPosting] Set ScholarshipName=@ScholarshipName, Description=@Description, " +
            "Amount=@Amount, ApplyBefore=@ApplyBefore Where OpportunityID=@BusinessEntityID", con);
        cmd.CommandType = CommandType.Text;

        cmd.Parameters.AddWithValue("@EntityID", LoginEntityID);
        cmd.Parameters.AddWithValue("@ScholarshipName", updateUser.getScholarshipName() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Description", updateUser.getDescription() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Amount", updateUser.getAmount() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@ApplyBefore", updateUser.getApplyBefore() ?? (object)DBNull.Value);
        cmd.ExecuteNonQuery();

        con.Close();


    }
}