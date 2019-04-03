using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JobPostings : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["EntityID"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        int LoginEntityID = (int)Session["EntityID"];

        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select BusinessName from Business where BusinessEntityID=@BusinessEntityID", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("BusinessEntityID", LoginEntityID);
            cmd.ExecuteNonQuery();

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    BusinessName.InnerText = "Welcome Back, ";
                    BusinessName.InnerText += reader["BusinessName"].ToString();
                }
            }
        }
    }

    protected void BtnSaveChanges_Click1(object sender, EventArgs e)
    {

        int LoginEntityID = (int)Session["EntityID"];

        if (radioJob.Checked)
        {
            JobPostingsClass newPost = new JobPostingsClass(txtJobTitle.Value, dropJobType.Value, dropCareerCluster.Value, txtareaDescription.Value, dropMonth.Value, dropDay.Value, dropYear.Value, LoginEntityID);

            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into JobPosting values(@JobTitle, @JobType, @CareerCluster, @Description, @Month, @Day, @Year, @BusinessEntityID);");
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@JobTitle", newPost.GetJobTitle());
            cmd.Parameters.AddWithValue("@JobType", newPost.GetJobType());
            cmd.Parameters.AddWithValue("@CareerCluster", newPost.GetCareerCluster());
            cmd.Parameters.AddWithValue("@Description", newPost.GetDescription());
            cmd.Parameters.AddWithValue("@Month", newPost.GetMonth());
            cmd.Parameters.AddWithValue("@Day", newPost.GetDay());
            cmd.Parameters.AddWithValue("@Year", newPost.GetYear());
            cmd.Parameters.AddWithValue("@BusinessEntityID", newPost.GetBusinessID());
            cmd.ExecuteNonQuery();
        }
        else if (radioLearning.Checked)
        {
            //learning opportunity inserts
        }
        else
        {
            //scholarship inserts
        }

    }

    protected void BtnEditChanges_Click1(object sender, EventArgs e)
    {

        int LoginEntityID = (int)Session["EntityID"];


        UpdateJob updatePost = new UpdateJob(txtJobTitleEdit.Value, dropJobTypeEdit.Value, dropCareerClusterEdit.Value,
            txtareaDescriptionEdit.Value, dropMonthEdit.Value, dropDayEdit.Value, dropYearEdit.Value, LoginEntityID);

        con.Open();
        SqlCommand cmd = new SqlCommand("Update [dbo].[JobPosting] Set JobTitle=@JobTitle, JobType=@JobType, " +
            "CareerCluster=@CareerCluster, Description=@Description, Month=@Month, Day=@Day, Year=@Year Where JobPostingID=1", con);
        cmd.CommandType = CommandType.Text;

        cmd.Parameters.AddWithValue("@JobTitle", updatePost.GetJobTitle() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@JobType", updatePost.GetJobType() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@CareerCluster", updatePost.GetCareerCluster() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Description", updatePost.GetDescription() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Month", updatePost.GetMonth() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Day", updatePost.GetDay() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@Year", updatePost.GetYear() ?? (object)DBNull.Value);
        cmd.Parameters.AddWithValue("@BusinessEntityID", updatePost.GetBusinessID());
        cmd.ExecuteNonQuery();

        con.Close();


    }

    protected void BtnDeleteChanges_Click1(object sender, EventArgs e)
    {



        con.Open();
        SqlCommand cmd = new SqlCommand("Delete from [dbo].[JobPosting] Where JobPostingID=1", con);

        cmd.ExecuteNonQuery();

        con.Close();


    }



    protected void SignOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }
}