﻿using System;
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
            GridView1.Columns[1].Visible = false;
            GridView1.Columns[5].Visible = false;

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
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;

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
        SqlCommand cmd2 = new SqlCommand("Insert into BusinessMessage values(@BusinessName, @StudentRecipient, @BusinessBody, @BusinessDate, @BusinessEntityID);");
        cmd2.CommandType = System.Data.CommandType.Text;
        cmd2.Connection = con;
        cmd2.Parameters.AddWithValue("@BusinessName", Session["BusinessName"]);
        cmd2.Parameters.AddWithValue("@StudentRecipient", dropSendTo.SelectedValue);
        cmd2.Parameters.AddWithValue("@BusinessBody", txtBody.Text);
        cmd2.Parameters.AddWithValue("@BusinessDate", DateTime.Now);
        cmd2.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        cmd2.ExecuteNonQuery();
        con.Close();

        lblMessageSent.Visible = true;
        lblMessageSent.Text = "Message Sent to " + dropSendTo.SelectedValue;

    }

    protected void btnStudentMessages_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentMessagesPortal.aspx");
    }
}