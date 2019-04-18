using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Archive : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(BusinessRead) from StudentMessage where BusinessRead=@BusinessRead", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("BusinessRead", 1);
        int inboxCount = Convert.ToInt32(cmd.ExecuteScalar());
        sidebarMessages.InnerText = "       " + inboxCount.ToString();
        con.Close();
    }
}