using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JobPostings : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        TxtDatePosted.Text = DateTime.Now.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        JobPostingsClass newPost = new JobPostingsClass(TxtJobTitle.Text, TxtCareerCluster.Text, TxtJobExplain.Value, TxtRequirements.Value, DateTime.Now);

        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into JobPostings values(@JobTitle, @CareerCluster, @JobExplanation, @Requirements, @DatePosted)", con);
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = con;

        cmd.Parameters.AddWithValue("@JobTitle", newPost.GetJobTitle());
        cmd.Parameters.AddWithValue("@CareerCluster", newPost.GetCareerCluster());
        cmd.Parameters.AddWithValue("@JobExplanation", newPost.GetJobExplanation());
        cmd.Parameters.AddWithValue("@Requirements", newPost.GetRequirements());
        cmd.Parameters.AddWithValue("@DatePosted", newPost.GetPostedDate());
        cmd.ExecuteNonQuery();

        con.Close();

    }

    protected void Back_Button_Click(object sender, EventArgs e)
    {
        Response.Redirect("BusinessPortal.aspx");
        //Testing
    }
}