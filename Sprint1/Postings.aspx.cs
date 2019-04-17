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
                    BusinessName.InnerText = reader["BusinessName"].ToString();
                }
            }
        }

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
        SqlCommand cmd = new SqlCommand("Insert into JobPosting values(@JobTitle, @JobType, @Description, @Month, @Day, @Year, @BusinessEntityID, @CareerID, @Published);");
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
        cmd.Parameters.AddWithValue("@Published", "Y");
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


    protected void ListViewJob_ItemUpdating(object sender, ListViewUpdateEventArgs e)
    {
        TextBox editJobTitle = ListViewJob.Items[e.ItemIndex].FindControl("JobTitle") as TextBox;
        TextBox editJobType = ListViewJob.Items[e.ItemIndex].FindControl("JobType") as TextBox;
        TextBox editDescription = ListViewJob.Items[e.ItemIndex].FindControl("Description") as TextBox;
        Label editJobPostingID = ListViewJob.Items[e.ItemIndex].FindControl("JobPostingID") as Label;

        con.Open();
        SqlCommand cmd = new SqlCommand("UPDATE JobPosting Set [JobTitle]=@JobTitle, [JobType]=@JobType, [Description]=@Description WHERE [JobPostingID]=@JobPostingID;");
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@JobTitle", editJobTitle.Text);
        cmd.Parameters.AddWithValue("@JobType", editJobType.Text);
        cmd.Parameters.AddWithValue("@Description", editDescription.Text);
        cmd.Parameters.AddWithValue("@JobPostingID", editJobPostingID.Text);
        cmd.ExecuteNonQuery();
        con.Close();


        Response.Redirect("Postings.aspx");
    }
}



