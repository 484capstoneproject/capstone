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

public partial class PostingToScholarship : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["EntityID"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(BusinessRead) from StudentMessage where BusinessRead=@BusinessRead", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("BusinessRead", 1);
            int inboxCount = Convert.ToInt32(cmd.ExecuteScalar());
            sidebarMessages.InnerText = "       " + inboxCount.ToString();
            con.Close();
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


        //if (!IsPostBack)
        //{
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString);
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("SELECT * from ScholarshipPosting where BusinessEntityID=@BusinessEntityID order by ScholarshipPostingID", con);
        //    cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        //    SqlDataReader reader = cmd.ExecuteReader();
        //    GridView1.DataSource = reader;
        //    GridView1.DataBind();
        //    con.Close();

        //    btnUpdatePost.Enabled = false;
        //}
        //GridView1.Columns[1].Visible = false;
        //GridView1.Columns[8].Visible = false;
    }


    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    GridViewRow row = GridView1.SelectedRow;
    //    //MessageLabel.Text = "You Selected " + row.Cells[1].Text;
    //    txtScholarshipName.Value = row.Cells[2].Text;
    //    txtAmountName.Value = row.Cells[3].Text;
    //    txtareaDescription.Value = row.Cells[4].Text;
    //    dropMonth.Value = row.Cells[5].Text;
    //    dropDay.Value = row.Cells[6].Text;
    //    dropYear.Value = row.Cells[7].Text;

    //    btnAddPost.Enabled = false;
    //    btnUpdatePost.Enabled = true;

    //}

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

        //JobPostingsClass newPost = new JobPostingsClass(txtJobTitle.Value, dropJobType.Value,txtareaDescription.Value, dropMonth.Value, dropDay.Value, dropYear.Value, LoginEntityID);

        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into ScholarshipPosting values(@ScholarshipName, @Amount, @Description, @Month, @Day, @Year, @BusinessEntityID, @CareerID);");
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@ScholarshipName", txtScholarshipName.Value);
        cmd.Parameters.AddWithValue("@Amount", txtAmountName.Value);
        cmd.Parameters.AddWithValue("@Description", txtareaDescription.Value);
        cmd.Parameters.AddWithValue("@Month", dropMonth.Value);
        cmd.Parameters.AddWithValue("@Day", dropDay.Value);
        cmd.Parameters.AddWithValue("@Year", dropYear.Value);
        cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        cmd.Parameters.AddWithValue("@CareerID", dropCareerCluster.SelectedIndex);
        cmd.ExecuteNonQuery();

        Response.Redirect("Postings.aspx");
    }

    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Postings.aspx");
    }

    //protected void BtnUpdate_Click(object sender, EventArgs e)
    //{
    //    int LoginEntityID = (int)Session["EntityID"];
    //    var ScholarshipID = GridView1.SelectedRow.Cells[1].Text;

    //    con.Open();

    //    SqlCommand cmd = new SqlCommand("UPDATE ScholarshipPosting SET ScholarshipName=@ScholarshipName, Amount=@Amount, Description=@Description, Month=@Month, Day=@Day, Year=@Year where ScholarshipPostingID=@ScholarshipPostingID", con);
    //    cmd.CommandType = System.Data.CommandType.Text;
    //    cmd.Connection = con;

    //    cmd.Parameters.AddWithValue("@ScholarshipName", txtScholarshipName.Value);
    //    cmd.Parameters.AddWithValue("@Amount", txtAmountName.Value);
    //    cmd.Parameters.AddWithValue("@Description", txtareaDescription.Value);
    //    cmd.Parameters.AddWithValue("@Month", dropMonth.Value);
    //    cmd.Parameters.AddWithValue("@Day", dropDay.Value);
    //    cmd.Parameters.AddWithValue("@Year", dropYear.Value);
    //    cmd.Parameters.AddWithValue("@ScholarshipPostingID", ScholarshipID);
    //    cmd.ExecuteNonQuery();

    //    con.Close();

    //    Response.Redirect("Scholarships.aspx");
    //}


    //protected void btnClear_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Scholarships.aspx");
    //}

    //protected void BtnSearch_Click(object sender, EventArgs e)
    //{
    //    int LoginEntityID = (int)Session["EntityID"];

    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("SELECT * from ScholarshipPosting where(ScholarshipName like '%' + @Scholarship + '%') AND BusinessEntityID=@BusinessEntityID", con);
    //    cmd.Parameters.Add("@Scholarship", SqlDbType.NVarChar).Value = TextSearch.Text;
    //    cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
    //    SqlDataReader reader = cmd.ExecuteReader();

    //    if (reader.HasRows)
    //    {
    //        GridView1.DataSource = reader;
    //        GridView1.DataBind();
    //    }
    //    else
    //    {
    //        LblNoDbOptions.Visible = true; //alert if no activities inserted into database yet
    //        TextSearch.Text = "";
    //        GridView1.DataSource = null; //Bring the gridview to zero
    //        GridView1.DataBind();
    //    }

    //    con.Close();
    //}

    //protected void BtnReset_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Scholarships.aspx");
    //}
}