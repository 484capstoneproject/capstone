using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Calendar : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);
    public static ArrayList MyColllection;

    public struct My_Date
    {
        public DateTime Cal_Date;
        public string Cal_Type;
        public string Cal_Title;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        ListBox1.Visible = false;
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
            con.Close();
            reader.Close();

            con.Open();
            cmd = new SqlCommand("select count(BusinessRead) from StudentMessage where BusinessRead=@BusinessRead", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("BusinessRead", 1);
            int inboxCount = Convert.ToInt32(cmd.ExecuteScalar());
            sidebarMessages.InnerText = "       " + inboxCount.ToString();
            con.Close();

        }
        if (!Page.IsPostBack)
        {
            MyColllection = Get_Event();
        }
    }
    public ArrayList Get_Event()
    {
        int LoginEntityID = (int)Session["EntityID"];

        SqlCommand cmd = new SqlCommand("SELECT * FROM calendar where BusinessEntityID = @BusinessEntityID", con);
        cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        SqlDataReader myDataReader;
        try
        {
            con.Open();
            myDataReader = cmd.ExecuteReader();
            MyColllection = new ArrayList();
            My_Date temp;
            //Iterate through the data reader

            while (myDataReader.Read())
            {
                temp.Cal_Title = myDataReader.GetValue(1).ToString();
                temp.Cal_Date = Convert.ToDateTime(myDataReader.GetValue(3));
                temp.Cal_Type = myDataReader.GetValue(4).ToString();
                MyColllection.Add(temp);
            }
            myDataReader.Close();

        }
        catch
        { }

        finally
        {
            con.Close();
        }
        return MyColllection;

    }



    protected void getDesc_Click(object sender, EventArgs e)
    {

        ListBox1.Items.Clear();
        int LoginEntityID = (int)Session["EntityID"];
        DateTime Event_Date = Calendar1.SelectedDate;
        ListBox1.Visible = true;


        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT Event_Description FROM calendar where Event_Date = @Event_Date AND BusinessEntityID = @BusinessEntityID", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@Event_Date", Event_Date);
        cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        cmd.ExecuteNonQuery();

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            while (reader.Read())
            {

                ListBox1.Items.Add(reader["Event_Description"].ToString());


            }
        }
        reader.Close();
        con.Close();



    }

    public void Calendar1_DayRender(object o, DayRenderEventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];

        string FontColor;
        string compDate = "01/01/1900"; // Date to compare initially
        DateTime DayVal = Convert.ToDateTime(compDate);
        bool mItemDay = false;
        bool dayTextChanged = false;
        StringBuilder strTemp = new StringBuilder();
        foreach (My_Date temp_dt in MyColllection)
        {
            if ("01/01/1900" != temp_dt.Cal_Date.ToShortDateString())
            {
                if (dayTextChanged == true)
                {
                    break;
                }
                mItemDay = false;
                DayVal = temp_dt.Cal_Date;
            }
            else
            {
                mItemDay = true;
            }

            if (e.Day.Date == Convert.ToDateTime(temp_dt.Cal_Date.ToString("d")))
            {
                switch (temp_dt.Cal_Type)
                {
                    case "1":
                        FontColor = "Blue";
                        break;
                    case "2":
                        FontColor = "Red";
                        break;
                    default:
                        FontColor = "Black";
                        break;
                }
                if (mItemDay == false)
                {
                    strTemp = new StringBuilder();
                }
                else
                {
                    strTemp.Append("<br>");
                }
                strTemp.Append("<span style='font-family:verdana;font-size:10px;font-weight:bold;color'");
                strTemp.Append(FontColor);
                strTemp.Append("'><br>");
                strTemp.Append(temp_dt.Cal_Title.ToString());
                strTemp.Append("</span>");
                e.Cell.BackColor = System.Drawing.Color.RoyalBlue;
                dayTextChanged = true;
            }
        }
        if (dayTextChanged == true)
        {
            e.Cell.Controls.Add(new LiteralControl(strTemp.ToString()));
        }
    }

    protected void btnAddEvent_Click(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];

        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into Calendar values(@Event_Title, @Event_Description, @Event_Date, @Event_Type, @BusinessEntityID);", con);
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Parameters.AddWithValue("@Event_Title", txtAddEventName.Text);
        cmd.Parameters.AddWithValue("@Event_Description", txtEventDescription.Text);
        DateTime calendarDate = Convert.ToDateTime(DropYear.Text + "/" + dropDay.Text + "/" + DropMonth.Text);
        cmd.Parameters.AddWithValue("@Event_Date", calendarDate);
        cmd.Parameters.AddWithValue("@Event_Type", 2);
        cmd.Parameters.AddWithValue("@BusinessEntityID", LoginEntityID);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Calendar.aspx");
    }

    protected void SignOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }

}