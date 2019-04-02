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
public partial class LearningOpportunity : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void ADD_Click(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];
        con.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = con;

        LearningPostings newLearningOpportunity = new LearningPostings(TxtLearningTitle.Text, TxtCareerCluster.Text, TxtDescription.Text,
             TxtLearningType.Text, TxtMonth.Text, TxtDay.Text, TxtYear.Text, LoginEntityID);

        String sqlString = "";

        // Inserts into student table using parameterized query 
        sqlString = "INSERT INTO [dbo].[LearningPosting] values (@LearningTitle, @CareerCluster, @Description, @LearningType, @month, @day, @year, @BusinessEntityID)";

        insert.Parameters.AddWithValue("@LearningTitle", newLearningOpportunity.getLearningTitle());
        insert.Parameters.AddWithValue("@CareerCluster", newLearningOpportunity.getCareerCluster());
        insert.Parameters.AddWithValue("@Description", newLearningOpportunity.getDescription());
        insert.Parameters.AddWithValue("@LearningType", newLearningOpportunity.getLearningType());
        insert.Parameters.AddWithValue("@month", newLearningOpportunity.getMonth());
        insert.Parameters.AddWithValue("@day", newLearningOpportunity.getDay());
        insert.Parameters.AddWithValue("@year", newLearningOpportunity.getYear());
        insert.Parameters.AddWithValue("@BusinessEntityID", newLearningOpportunity.GetBusinessID());


        insert.CommandText = sqlString;
        insert.ExecuteNonQuery();
        con.Close();
    }


    protected void EDIT_Click(object sender, EventArgs e)
    {

        int LoginEntityID = (int)Session["EntityID"];


        UpdateLearning updateUser = new UpdateLearning(TxtLearningTitle.Text, TxtCareerCluster.Text, TxtDescription.Text,
             TxtLearningType.Text, TxtMonth.Text, TxtDay.Text, TxtYear.Text, LoginEntityID);


        con.Open();
        SqlCommand cmd = new SqlCommand("Update [dbo].[LearningPosting] Set LearningTitle=@LearningTitle, CareerCluster=@CareerCluster, " +
            "Description=@Description, LearningType=@LearningType, month=@month, day=@day, year=@year Where LearningID=1", con);
        cmd.CommandType = CommandType.Text;

        cmd.Parameters.AddWithValue("@LearningTitle", updateUser.getLearningTitle() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@CareerCluster", updateUser.getCareerCluster() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Description", updateUser.getDescription() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@LearningType", updateUser.getLearningType() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@month", updateUser.GetMonth() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@day", updateUser.GetDay() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@year", updateUser.GetYear() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@BusinessEntityID", updateUser.GetBusinessID());
        cmd.ExecuteNonQuery();

        con.Close();


    }


}