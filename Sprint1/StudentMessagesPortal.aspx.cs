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
            GridView1.Columns[1].Visible = false;
            GridView1.Columns[5].Visible = false;

            con.Open();
            SqlCommand cmdGrid = new SqlCommand("SELECT * from BusinessMessage order by BusinessMessageID", con);
            SqlDataReader readerGrid = cmdGrid.ExecuteReader();
            GridView1.DataSource = readerGrid;
            GridView1.DataBind();
            con.Close();

            con.Open();
            SqlCommand cmd = new SqlCommand("select BusinessName from BusinessMessage", con);
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
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;

       

    }

    protected void btnBusinessMessages_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void SignOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentLogin.aspx");
    }
}