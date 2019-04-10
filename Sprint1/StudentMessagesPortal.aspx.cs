using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentMessagesPortal : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];

        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmdGrid = new SqlCommand("SELECT * from BusinessMessage order by BusinessMessageID", con);
            SqlDataReader readerGrid = cmdGrid.ExecuteReader();
            GridView1.DataSource = readerGrid;
            GridView1.DataBind();
            con.Close();

            con.Open();
            SqlCommand cmd = new SqlCommand("select DISTINCT BusinessName from BusinessMessage", con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    dropSendTo.Items.Add(reader["BusinessName"].ToString());
                }
            }
            con.Close();
            reader.Close();


            con.Open();
            cmd = new SqlCommand("select count(StudentRead) from BusinessMessage where StudentRead=@StudentRead", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("StudentRead", 1);
            int inboxCount = Convert.ToInt32(cmd.ExecuteScalar());
            sidebarMessages.InnerText = "       " + inboxCount.ToString();
            con.Close();    
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        var BusinessMessageID = row.Cells[1].Text;

        con.Open();
        SqlCommand cmd = new SqlCommand("Update BusinessMessage set StudentRead=0 where BusinessMessageID = @BusinessMessageID", con);
        cmd.Parameters.AddWithValue("@BusinessMessageID", BusinessMessageID);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        con.Close();

        txtReplyAddress.Visible = true;
        txtReplyAddress.Enabled = false;
        dropSendTo.Visible = false;
        txtReplyAddress.Text = row.Cells[2].Text;

        txtareaOriginal.Visible = true;
        lblOriginalBody.Visible = true;
        txtareaOriginal.Text = row.Cells[4].Text;
        txtareaOriginal.Enabled = false;

        //Response.Redirect("StudentMessagesPortal.aspx");
    }

    protected void btnBusinessMessages_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void SignOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentLogin.aspx");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[1].Visible = false;
        e.Row.Cells[6].Visible = false;
        e.Row.Cells[7].Visible = false;

        //ONE MEANS THAT THE MESSAGE IS UNREAD. 0 MEANS SOMEONE READ IT
        if (Convert.ToInt16(DataBinder.Eval(e.Row.DataItem, "StudentRead")) == 1)
        {
            e.Row.BackColor = System.Drawing.Color.Red;
        }
    }

    protected void btnSendMessage_Click(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];

        GridViewRow row = GridView1.SelectedRow;

        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into StudentMessage values(@StudentName, @StudentBody, @StudentDate, @BusinessEntityID, @BusinessRead);");
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@StudentName", "addison wittkamp"); //change to the login session username when running for presentation
        cmd.Parameters.AddWithValue("@StudentBody", txtBody.Text);
        cmd.Parameters.AddWithValue("@StudentDate", DateTime.Now);
        cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        cmd.Parameters.AddWithValue("@BusinessRead", 1);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentMessagesPortal.aspx");
    }
}