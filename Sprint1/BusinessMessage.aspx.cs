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

    
}