using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BusinessMessage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];

        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select FirstName, LastName from Student", con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    dropSendTo.Items.Add(reader["FirstName"].ToString() + " " + reader["LastName"].ToString());
                }
            }
            con.Close();
            reader.Close();

            con.Open();
            SqlCommand cmdGrid = new SqlCommand("SELECT * from StudentMessage where BusinessEntityID=@BusinessEntityID order by StudentMessageID", con);
            cmdGrid.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
            SqlDataReader readerGrid = cmdGrid.ExecuteReader();
            GridView1.DataSource = readerGrid;
            GridView1.DataBind();
            con.Close();

            con.Open();
            cmd = new SqlCommand("select count(BusinessRead) from StudentMessage where BusinessRead=@BusinessRead", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("BusinessRead", 1);
            int inboxCount = Convert.ToInt32(cmd.ExecuteScalar());
            sidebarMessages.InnerText = "       " + inboxCount.ToString();
            con.Close();
            
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    { //if a message is selected bring up the reply boxes
        GridViewRow row = GridView1.SelectedRow;
        var StudentMessageID = row.Cells[1].Text;


        con.Open();
        SqlCommand cmd = new SqlCommand("Update StudentMessage set BusinessRead=0 where StudentMessageID = @StudentMessageID", con);
        cmd.Parameters.AddWithValue("@StudentMessageID", StudentMessageID);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        con.Close();


        lblNewMessage.Text = "Reply: ";
        txtReplyAddress.Text = row.Cells[2].Text;
        txtReplyAddress.Visible = true;
        txtReplyAddress.Enabled = false;

        dropSendTo.Visible = false;

        lblOriginalMessage.Visible = true;
        txtareaOriginal.Visible = true;
        txtareaOriginal.Enabled = false;
        txtareaOriginal.Text = row.Cells[3].Text;
        checkFilterNames.Visible = false;
        lblFilter.Visible = false;

        dropSendTo.Items.Add(txtReplyAddress.Text);
        dropSendTo.SelectedValue = row.Cells[2].Text;

        //Response.Redirect("BusinessMessage.aspx");
    }


    protected void btnSendMessage_Click(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];

        con.Open();
        SqlCommand cmd = new SqlCommand("select BusinessName from Business where BusinessEntityID=@BusinessEntityID", con);
        cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            while (reader.Read())
            {
                string BusinessName = reader["BusinessName"].ToString();
                Session.Add("BusinessName", BusinessName);
            }
        }
        con.Close();
        reader.Close();


        con.Open();
        SqlCommand cmd2 = new SqlCommand("Insert into BusinessMessage values(@BusinessName, @StudentRecipient, @BusinessBody, @BusinessDate, @BusinessEntityID, @StudentRead);");
        cmd2.CommandType = System.Data.CommandType.Text;
        cmd2.Connection = con;
        cmd2.Parameters.AddWithValue("@BusinessName", Session["BusinessName"]);
        cmd2.Parameters.AddWithValue("@StudentRecipient", dropSendTo.SelectedValue);
        cmd2.Parameters.AddWithValue("@BusinessBody", txtBody.Text);
        cmd2.Parameters.AddWithValue("@BusinessDate", DateTime.Now);
        cmd2.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        cmd2.Parameters.AddWithValue("@StudentRead", 1);
        cmd2.ExecuteNonQuery();
        con.Close();

        lblMessageSent.Visible = true;
        lblMessageSent.Text = "Message Sent to " + dropSendTo.SelectedValue;

        Response.Redirect("BusinessMessage.aspx");
    }

    protected void btnStudentMessages_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentMessagesPortal.aspx");
    }

    protected void SignOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[1].Visible = false;
        e.Row.Cells[5].Visible = false;
        e.Row.Cells[6].Visible = false;

        //ONE MEANS THAT THE MESSAGE IS UNREAD. 0 MEANS SOMEONE READ IT
        if (Convert.ToInt16(DataBinder.Eval(e.Row.DataItem, "BusinessRead")) == 1)
        {
            e.Row.BackColor = System.Drawing.Color.Red;
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Response.Redirect("BusinessMessage.aspx");
    }

    protected void checkFilterNames_SelectedIndexChanged(object sender, EventArgs e) //if the user selects a filter option
    {
        DropSchoolFilter.Visible = false;
        dropGradeFilter.Visible = false;
        if (checkFilterNames.SelectedValue == "School") //if they selected school, show the school names and populate from the database into a drop down
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Name from School;", con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader reader = cmd.ExecuteReader();
            dropSendTo.Items.Clear();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    DropSchoolFilter.Items.Add(reader["Name"].ToString());
                }
            }
            con.Close();
            reader.Close();

            DropSchoolFilter.Visible = true;
        }

        if (checkFilterNames.SelectedValue == "Grade") //show and populate the grade dropdown if checked
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Distinct Grade from Student order by Grade;", con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader reader = cmd.ExecuteReader();
            dropSendTo.Items.Clear();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    dropGradeFilter.Items.Add(reader["Grade"].ToString());
                }
            }
            con.Close();
            reader.Close();

            dropGradeFilter.Visible = true;
        }
    }

    protected void DropSchoolFilter_SelectedIndexChanged(object sender, EventArgs e)
    {  //if a school is selected, query the name drop down to find those in that school
        con.Open();
        SqlCommand cmd = new SqlCommand("select Student.FirstName, Student.LastName from Student Inner Join School on Student.SchoolID=School.SchoolID where School.Name = @SchoolName;", con);
        cmd.Parameters.AddWithValue("@SchoolName", DropSchoolFilter.SelectedValue);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();

        SqlDataReader reader = cmd.ExecuteReader();
        dropSendTo.Items.Clear();
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                dropSendTo.Items.Add(reader["FirstName"].ToString() + " " + reader["LastName"].ToString());
            }
        }
        con.Close();
        reader.Close();
    }

    protected void dropGradeFilter_SelectedIndexChanged(object sender, EventArgs e)
    { //if a grade is selected, query the names of students in that grade and populate the drop down
        con.Open();
        SqlCommand cmd = new SqlCommand("select FirstName, LastName from Student where Grade = @Grade;", con);
        cmd.Parameters.AddWithValue("@Grade", dropGradeFilter.SelectedValue);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();

        SqlDataReader reader = cmd.ExecuteReader();
        dropSendTo.Items.Clear();
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                dropSendTo.Items.Add(reader["FirstName"].ToString() + " " + reader["LastName"].ToString());
            }
        }
        con.Close();
        reader.Close();

    }


}