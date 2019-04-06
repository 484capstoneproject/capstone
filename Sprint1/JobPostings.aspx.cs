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


    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    GridViewRow row = GridView1.SelectedRow;
    //    //MessageLabel.Text = "You Selected " + row.Cells[1].Text;
    //    txtJobTitle.Value = row.Cells[2].Text;
    //    dropJobType.Value = row.Cells[3].Text;
    //    dropCareerCluster.Value = row.Cells[4].Text;
    //    txtareaDescription.Value = row.Cells[5].Text;
    //    dropMonth.Value = row.Cells[6].Text;
    //    dropDay.Value = row.Cells[7].Text;
    //    dropYear.Value = row.Cells[8].Text;

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

        Response.Redirect("JobPostings.aspx");
    }

    //protected void BtnUpdate_Click(object sender, EventArgs e)
    //{
    //    int LoginEntityID = (int)Session["EntityID"];
    //    var JobPostingID = GridView1.SelectedRow.Cells[1].Text;
        
    //    con.Open();

    //    SqlCommand cmd = new SqlCommand("UPDATE JobPosting SET JobTitle=@JobTitle, JobType=@JobType, CareerCluster=@CareerCluster, Description=@Description, Month=@Month, Day=@Day, Year=@Year where JobPostingID=@JobPostingID", con);
    //    cmd.CommandType = System.Data.CommandType.Text;
    //    cmd.Connection = con;

    //    cmd.Parameters.AddWithValue("@JobTitle", txtJobTitle.Value);
    //    cmd.Parameters.AddWithValue("@JobType", dropJobType.Value);
    //    cmd.Parameters.AddWithValue("@CareerCluster", dropCareerCluster.Value);
    //    cmd.Parameters.AddWithValue("@Description", txtareaDescription.Value);
    //    cmd.Parameters.AddWithValue("@Month", dropMonth.Value);
    //    cmd.Parameters.AddWithValue("@Day", dropDay.Value);
    //    cmd.Parameters.AddWithValue("@Year", dropYear.Value);
    //    cmd.Parameters.AddWithValue("@JobPostingID", JobPostingID);
    //    cmd.ExecuteNonQuery();

    //    con.Close();

    //    Response.Redirect("JobPostings.aspx");
    //}


    protected void btnClear_Click(object sender, EventArgs e)
    {
        Response.Redirect("JobPostings.aspx");
    }

    protected void BtnSearch_Click(object sender, EventArgs e)
    {

        int LoginEntityID = (int)Session["EntityID"];

        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * from JobPosting where(JobTitle like '%' + @Job + '%') AND BusinessEntityID=@BusinessEntityID", con);
        cmd.Parameters.Add("@Job", SqlDbType.NVarChar).Value = TextSearch.Text;
        cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        SqlDataReader rdr = cmd.ExecuteReader();




        // Fill the list box with the values retrieved
        ListBox1.Items.Clear();
        while (rdr.Read())
        {
            ListBox1.Items.Add(rdr["JobTitle"].ToString());


        }

        // Close data reader object and database connection
        if (rdr != null)
            rdr.Close();

        if (con.State == ConnectionState.Open)
            con.Close();
    }


    protected void typeCheckBoxChanged(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];

        string part = "";
        string full = "";
        string intern = "";

        if (fullTime.Checked)
        {
            full = "Full Time";
        }
        if (partTime.Checked)
        {
            part = "Part-Time";
        }
        if (internship.Checked)
        {
            intern = "Internship";
        }

        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from JobPosting where (JobType like @full OR JobType like @part OR JobType like @intern) AND BusinessEntityID=@BusinessEntityID", con);
        cmd.Parameters.Add("@full", SqlDbType.NVarChar).Value = full;
        cmd.Parameters.Add("@part", SqlDbType.NVarChar).Value = part;
        cmd.Parameters.Add("@intern", SqlDbType.NVarChar).Value = intern;
        cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        SqlDataReader rdr = cmd.ExecuteReader();


        ListBox1.Items.Clear();
        while (rdr.Read())
        {
            ListBox1.Items.Add(rdr["JobTitle"].ToString());
           

        }




        string[] yourHTMLstring = { "<table style=" + "width:100%, " + "> <tr> <th>" + full + "</th> <th>Lastname</th> <th>Age</th> </tr> <tr> <td>Jill</td> <td>Smith</td> <td>50</td> </tr> <tr> <td>Eve</td> <td>Jackson</td> <td>94</td> </tr> </table>" };
        pnlUserdata.Controls.Add(new LiteralControl(yourHTMLstring[0]));
        var target = "table";

        //string results = Array.Find(myArr,
        //               element => element.StartsWith("S",
        //               StringComparison.Ordinal));




        //Div1.InnerText = results;

        // Close data reader object and database connection
        if (rdr != null)
            rdr.Close();

        if (con.State == ConnectionState.Open)
            con.Close();
    }




    protected void BtnDelete_Click(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd = new SqlCommand("Delete from [dbo].[JobPosting] Where JobPostingID=1", con);

        cmd.ExecuteNonQuery();

        con.Close();

    }




    //if (reader.HasRows)
    //{
    //    GridView1.DataSource = reader;
    //    GridView1.DataBind();
    //}
    //else
    //{
    //    LblNoDbOptions.Visible = true; //alert if no activities inserted into database yet
    //    TextSearch.Text = "";
    //    GridView1.DataSource = null; //Bring the gridview to zero
    //    GridView1.DataBind();
    //}

    //con.Close();


    protected void BtnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("JobPostings.aspx");
    }
}