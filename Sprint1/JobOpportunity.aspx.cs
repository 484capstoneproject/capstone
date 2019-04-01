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

public partial class Default3 : System.Web.UI.Page
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

        JobOpportunity newJobOpportunity = new JobOpportunity(TxtJobTitle.Text, TxtCareerCluster.Text, TxtPaymentType.Text, TxtDescription.Text,
            TxtJobType.Text, TxtAge.Text, TxtApplyBefore.Text);

        String sqlString = "";

        // Inserts into student table using parameterized query 
        sqlString = "INSERT INTO [dbo].[JobPosting] values (@JobTitle, @CareerCluster, @PaymentType, @Description, @JobType, @Age, @ApplyBefore)";

        insert.Parameters.AddWithValue("@JobTitle", newJobOpportunity.getJobTitle());
        insert.Parameters.AddWithValue("@CareerCluster", newJobOpportunity.getCareerCluster());
        insert.Parameters.AddWithValue("@PaymentType", newJobOpportunity.getPaymentType());
        insert.Parameters.AddWithValue("@Description", newJobOpportunity.getDescription());
        insert.Parameters.AddWithValue("@JobType", newJobOpportunity.getJobType());
        insert.Parameters.AddWithValue("@Age", newJobOpportunity.getAge());
        insert.Parameters.AddWithValue("@ApplyBefore", newJobOpportunity.getApplyBefore());


        insert.CommandText = sqlString;
        insert.ExecuteNonQuery();
        con.Close();

    }


    protected void EDIT_Click(object sender, EventArgs e)
    {

        int LoginEntityID = (int)Session["EntityID"];


        UpdateJob updateUser = new UpdateJob(TxtJobTitle.Text, TxtCareerCluster.Text, TxtPaymentType.Text, TxtDescription.Text,
            TxtJobType.Text, TxtAge.Text, TxtApplyBefore.Text);

        con.Open();
        SqlCommand cmd = new SqlCommand("Update [dbo].[JobPosting] Set JobTitle=@JobTitle, CareerCluster=@CareerCluster, " +
            "PaymentType=@PaymentType, Description=@Description, JobType=@JobType, Age=@Age, ApplyBefore=@ApplyBefore Where OpportunityID=@BusinessEntityID", con);
        cmd.CommandType = CommandType.Text;

        cmd.Parameters.AddWithValue("@EntityID", LoginEntityID);
        cmd.Parameters.AddWithValue("@JobTitle", updateUser.getJobTitle() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@CareerCluster", updateUser.getCareerCluster() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@PaymentType", updateUser.getPaymentType() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Description", updateUser.getDescription() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@JobType", updateUser.getJobType() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Age", updateUser.getAge() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@jobTitle", updateUser.getJobTitle() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@ApplyBefore", updateUser.getApplyBefore() ?? (object)DBNull.Value);
        cmd.ExecuteNonQuery();

        con.Close();

    }
}