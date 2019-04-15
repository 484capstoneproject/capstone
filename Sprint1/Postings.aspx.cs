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

public partial class Postings : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

   

    protected void Page_Load(object sender, EventArgs e)
    {

   

        if (Session["EntityID"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        //int LoginEntityID = (int)Session["EntityID"];

        //if (!IsPostBack)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select BusinessName from Business where BusinessEntityID=@BusinessEntityID", con);
        //    cmd.CommandType = CommandType.Text;
        //    cmd.Parameters.AddWithValue("BusinessEntityID", LoginEntityID);
        //    cmd.ExecuteNonQuery();

        //    SqlDataReader reader = cmd.ExecuteReader();

        //    if (reader.HasRows)
        //    {
        //        while (reader.Read())
        //        {
        //            BusinessName.InnerText = "Welcome Back, ";
        //            BusinessName.InnerText += reader["BusinessName"].ToString();
        //        }
        //    }
        //}

        int LoginEntityID = (int)Session["EntityID"];


        //    if (!IsPostBack)
        //    {
        //        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString);
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("SELECT * from JobPosting where BusinessEntityID=@BusinessEntityID order by JobPostingID", con);
        //        cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        //        SqlDataReader reader = cmd.ExecuteReader();
        //        GridView1.DataSource = reader;
        //        GridView1.DataBind();
        //        con.Close();

        //        btnUpdatePost.Enabled = false;
        //    }

        //    GridView1.Columns[1].Visible = false;
        //    GridView1.Columns[9].Visible = false;
    }

 


    protected void SignOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];

        JobPostingsClass newPost = new JobPostingsClass(txtJobTitle.Value, dropJobType.Value, dropCareerCluster.Value, txtareaDescription.Value, dropMonth.Value, dropDay.Value, dropYear.Value, LoginEntityID);

        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into JobPosting values(@JobTitle, @JobType, @Description, @Month, @Day, @Year, @BusinessEntityID, @CareerID);");
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
        cmd.Parameters.AddWithValue("@CareerID", dropCareerCluster.SelectedIndex);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Postings.aspx");
    }

    //protected void BtnCancel_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Postings.aspx");
    //}

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }


}



