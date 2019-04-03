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

public partial class LearningOpportunites : System.Web.UI.Page
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

        if (Session["EntityID"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        int LoginEntityID = (int)Session["EntityID"];


        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from LearningPosting where BusinessEntityID=@BusinessEntityID order by LearningPostingID", con);
            cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();

            btnUpdatePost.Enabled = false;
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        //MessageLabel.Text = "You Selected " + row.Cells[1].Text;
        txtLearningTitle.Value = row.Cells[2].Text;
        dropOpportunityType.Value = row.Cells[3].Text;
        dropCareerCluster.Value = row.Cells[4].Text;
        txtareaDescription.Value = row.Cells[5].Text;
        dropMonth.Value = row.Cells[6].Text;
        dropDay.Value = row.Cells[7].Text;
        dropYear.Value = row.Cells[8].Text;

        btnAddPost.Enabled = false;
        btnUpdatePost.Enabled = true;

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

        JobPostingsClass newPost = new JobPostingsClass(txtLearningTitle.Value, dropOpportunityType.Value, dropCareerCluster.Value, txtareaDescription.Value, dropMonth.Value, dropDay.Value, dropYear.Value, LoginEntityID);

        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into LearningPosting values(@LearningTitle, @LearningType, @CareerCluster, @Description, @Month, @Day, @Year, @BusinessEntityID);");
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@LearningTitle", newPost.GetJobTitle());
        cmd.Parameters.AddWithValue("@LearningType", newPost.GetJobType());
        cmd.Parameters.AddWithValue("@CareerCluster", newPost.GetCareerCluster());
        cmd.Parameters.AddWithValue("@Description", newPost.GetDescription());
        cmd.Parameters.AddWithValue("@Month", newPost.GetMonth());
        cmd.Parameters.AddWithValue("@Day", newPost.GetDay());
        cmd.Parameters.AddWithValue("@Year", newPost.GetYear());
        cmd.Parameters.AddWithValue("@BusinessEntityID", newPost.GetBusinessID());
        cmd.ExecuteNonQuery();

        Response.Redirect("LearningOpportunities.aspx");
    }

    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];
        var JobPostingID = GridView1.SelectedRow.Cells[1].Text;

        con.Open();

        SqlCommand cmd = new SqlCommand("UPDATE LearningPosting SET LearningTitle=@LearningTitle, LearningType=@LearningType, CareerCluster=@CareerCluster, Description=@Description, Month=@Month, Day=@Day, Year=@Year where JobPostingID=@JobPostingID", con);
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = con;

        cmd.Parameters.AddWithValue("@LearningTitle", txtLearningTitle.Value);
        cmd.Parameters.AddWithValue("@LearningType", dropOpportunityType.Value);
        cmd.Parameters.AddWithValue("@CareerCluster", dropCareerCluster.Value);
        cmd.Parameters.AddWithValue("@Description", txtareaDescription.Value);
        cmd.Parameters.AddWithValue("@Month", dropMonth.Value);
        cmd.Parameters.AddWithValue("@Day", dropDay.Value);
        cmd.Parameters.AddWithValue("@Year", dropYear.Value);
        cmd.Parameters.AddWithValue("@JobPostingID", JobPostingID);
        cmd.ExecuteNonQuery();

        con.Close();

        Response.Redirect("LearningOpportunities.aspx");
    }


    protected void btnClear_Click(object sender, EventArgs e)
    {
        Response.Redirect("LearningOpportunities.aspx");
    }

    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];

        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * from LearningPosting where(LearningTitle like '%' + @Learn + '%') AND BusinessEntityID=@BusinessEntityID", con);
        cmd.Parameters.Add("@Learn", SqlDbType.NVarChar).Value = TextSearch.Text;
        cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            GridView1.DataSource = reader;
            GridView1.DataBind();
        }
        else
        {
            LblNoDbOptions.Visible = true; //alert if no activities inserted into database yet
            TextSearch.Text = "";
            GridView1.DataSource = null; //Bring the gridview to zero
            GridView1.DataBind();
        }

        con.Close();
    }

    protected void BtnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("LearningOpportunities.aspx");
    }
}