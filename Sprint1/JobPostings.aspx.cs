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

    protected void BtnSaveChanges_Click(object sender, EventArgs e)
    {
        if (radioJob.Checked==true)
        {

            JobPostingsClass newPost = new JobPostingsClass(txtJobTitle.Value, JobTypeDropDown.Value, CareerClusterDropDown.Value, txtareaDescription.Value, Convert.ToInt32(monthDropDown.Value), Convert.ToInt32(dayDropDown.Value), Convert.ToInt32(YearDropDown.Value));

        }
        else if (radioLearning.Checked==true)
        {

        }
        else if(radioScholarship.Checked==true)
        {

        }
    }
}