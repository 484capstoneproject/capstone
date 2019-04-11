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
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BusinessPortal : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["EntityID"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        int LoginEntityID = (int)Session["EntityID"];
        int total = 0;
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
                    BusinessName.InnerText = reader["BusinessName"].ToString();
                }
            }
            reader.Close();

            //Counting Jobs 

            SqlCommand job = new SqlCommand("select count(*) from JobPosting where BusinessEntityID=@BusinessEntityID", con);
            job.CommandType = CommandType.Text;
            job.Parameters.AddWithValue("BusinessEntityID", LoginEntityID);
            int jobCount = Convert.ToInt32(job.ExecuteScalar());
            lblJob.Text = jobCount.ToString();


            //Counting Scholarships 
           
            SqlCommand scholarship = new SqlCommand("select count(*) from ScholarshipPosting where BusinessEntityID=@BusinessEntityID", con);
            scholarship.CommandType = CommandType.Text;
            scholarship.Parameters.AddWithValue("BusinessEntityID", LoginEntityID);
            int scholarshipCount = Convert.ToInt32(scholarship.ExecuteScalar());
            lblScolarship.Text = scholarshipCount.ToString();

            //Counting Learning 
         
            SqlCommand learning = new SqlCommand("select count(*) from LearningPosting where BusinessEntityID=@BusinessEntityID", con);
            learning.CommandType = CommandType.Text;
            learning.Parameters.AddWithValue("BusinessEntityID", LoginEntityID);
            int learningCount = Convert.ToInt32(learning.ExecuteScalar());

            lblLearning.Text = learningCount.ToString();

            total = jobCount + learningCount + scholarshipCount;
            lblTotal.Text = total.ToString();

            con.Close();

        }

    }
    protected void SignOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }
}