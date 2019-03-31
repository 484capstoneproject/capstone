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
    DateTime ApplyDate = DateTime.Now;

    protected void Page_Load(object sender, EventArgs e)
    {
       // TxtApplyBefore.Text = DateTime.Now.ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = con;

        LearningOpportunity newLearningOpportunity = new LearningOpportunity(TxtLearningTitle.Text, TxtCareerCluster.Text, TxtDescription.Text, 
            TxtDuration.Text, TxtLearningType.Text, ApplyDate);

        String sqlString = "";

        // Inserts into student table using parameterized query 
        sqlString = "INSERT INTO [dbo].[LearningPostings] values (@LearningTitle, @CareerCluster, @Description ,@Duration , @ApplyDate)";

        insert.Parameters.AddWithValue("@LearningTitle", newLearningOpportunity.getLearningTitle());
        insert.Parameters.AddWithValue("@CareerCluster", newLearningOpportunity.getCareerCluster());
        insert.Parameters.AddWithValue("@Description", newLearningOpportunity.getDescription());
        insert.Parameters.AddWithValue("@Duration", newLearningOpportunity.getDuration());
        insert.Parameters.AddWithValue("@ApplyDate", newLearningOpportunity.getApplyBefore());


        insert.CommandText = sqlString;
        insert.ExecuteNonQuery();
        con.Close();



    }
}