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

public partial class Default2 : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);


    protected void Page_Load(object sender, EventArgs e)
    {
       // TxtApplyBefore.Text = DateTime.Now.ToString();

    }

    protected void ADD_Click(object sender, EventArgs e)
    {
        
        con.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = con;

        LearningOpportunity newLearningOpportunity = new LearningOpportunity(TxtLearningTitle.Text, TxtCareerCluster.Text, TxtDescription.Text, 
             TxtLearningType.Text, TxtApplyBefore.Text);
    
        String sqlString = "";

        // Inserts into student table using parameterized query 
        sqlString = "INSERT INTO [dbo].[LearningPosting] values (@LearningTitle, @CareerCluster, @Description , @LearningType, @ApplyBefore)";

        insert.Parameters.AddWithValue("@LearningTitle", newLearningOpportunity.getLearningTitle());
        insert.Parameters.AddWithValue("@CareerCluster", newLearningOpportunity.getCareerCluster());
        insert.Parameters.AddWithValue("@Description", newLearningOpportunity.getDescription());
        insert.Parameters.AddWithValue("@LearningType", newLearningOpportunity.getLearningType());
        insert.Parameters.AddWithValue("@ApplyBefore", newLearningOpportunity.getApplyBefore());


        insert.CommandText = sqlString;
        insert.ExecuteNonQuery();
        con.Close();
    }


    protected void EDIT_Click(object sender, EventArgs e)
    {

        int LoginEntityID = (int)Session["EntityID"];


        UpdateLearning updateUser = new UpdateLearning(TxtLearningTitle.Text, TxtCareerCluster.Text, TxtDescription.Text,
             TxtLearningType.Text, TxtApplyBefore.Text);


        con.Open();
        SqlCommand cmd = new SqlCommand("Update [dbo].[LearningPosting] Set LearningTitle=@LearningTitle, CareerCluster=@CareerCluster, " +
            "Description=@Description, LearningType=@LearningType, ApplyBefore=@ApplyBefore Where OpportunityID=@BusinessEntityID", con);
        cmd.CommandType = CommandType.Text;

        cmd.Parameters.AddWithValue("@EntityID", LoginEntityID);
        cmd.Parameters.AddWithValue("@LearningTitle", updateUser.getLearningTitle() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@CareerCluster", updateUser.getCareerCluster() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Description", updateUser.getDescription() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@LearningType", updateUser.getLearningType() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@ApplyBefore", updateUser.getApplyBefore() ?? (object)DBNull.Value);
        cmd.ExecuteNonQuery();

        con.Close();


    }


}