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



        StringBuilder sbICSFile = new StringBuilder();
        DateTime dtNow = DateTime.Now;

        sbICSFile.AppendLine("BEGIN:VCALENDAR");
        sbICSFile.AppendLine("VERSION:2.0");
        sbICSFile.AppendLine("PRODID:-//AkonaDev/CalendarAppointment");
        sbICSFile.AppendLine("CALSCALE:GREGORIAN");
        sbICSFile.AppendLine("BEGIN:VEVENT");

        //Define time zones.
        //US/Eastern
        sbICSFile.AppendLine("BEGIN:VTIMEZONE");
        sbICSFile.AppendLine("TZID:US/Eastern");
        sbICSFile.AppendLine("BEGIN:STANDARD");
        sbICSFile.AppendLine("DTSTART:20071104T020000");
        sbICSFile.AppendLine("RRULE:FREQ=YEARLY;BYDAY=1SU;BYMONTH=11");
        sbICSFile.AppendLine("TZOFFSETFROM:-0400");
        sbICSFile.AppendLine("TZOFFSETTO:-0500");
        sbICSFile.AppendLine("TZNAME:EST");
        sbICSFile.AppendLine("END:STANDARD");
        sbICSFile.AppendLine("BEGIN:DAYLIGHT");
        sbICSFile.AppendLine("DTSTART:20070311T020000");
        sbICSFile.AppendLine("RRULE:FREQ=YEARLY;BYDAY=2SU;BYMONTH=3");
        sbICSFile.AppendLine("TZOFFSETFROM:-0500");
        sbICSFile.AppendLine("TZOFFSETTO:-0400");
        sbICSFile.AppendLine("TZNAME:EDT");
        sbICSFile.AppendLine("END:DAYLIGHT");
        sbICSFile.AppendLine("END:VTIMEZONE");


        //Define the event
        sbICSFile.Append("DTSTART;TZID=" + ddlStartTZ.Text + ":");
        sbICSFile.Append(calStartDate.SelectedDate.Year.ToString());
        sbICSFile.Append(FormatDateTimeValue(calStartDate.SelectedDate.Month));
        sbICSFile.Append(FormatDateTimeValue(calStartDate.SelectedDate.Day) + "T");
        sbICSFile.AppendLine(ddlStartTime.SelectedValue);

        sbICSFile.Append("DTEND;TZID=" + ddlEndTZ.Text + ":");
        sbICSFile.Append(calEndDate.SelectedDate.Year);
        sbICSFile.Append(FormatDateTimeValue(calEndDate.SelectedDate.Month));
        sbICSFile.Append(FormatDateTimeValue(calEndDate.SelectedDate.Day) + "T");
        sbICSFile.AppendLine(ddlEndTime.SelectedValue);

        sbICSFile.AppendLine("SUMMARY:" + txtEventSummary.Text);
        sbICSFile.AppendLine("DESCRIPTION:" + txtEventDescription.Text);
        sbICSFile.AppendLine("UID:1");
        sbICSFile.AppendLine("SEQUENCE:0");

        sbICSFile.Append("DTSTAMP:" + dtNow.Year.ToString());
        sbICSFile.Append(FormatDateTimeValue(dtNow.Month));
        sbICSFile.Append(FormatDateTimeValue(dtNow.Day) + "T");
        sbICSFile.Append(FormatDateTimeValue(dtNow.Hour));
        sbICSFile.AppendLine(FormatDateTimeValue(dtNow.Minute) + "00");

        sbICSFile.AppendLine("END:VEVENT");
        sbICSFile.AppendLine("END:VCALENDAR");

        Response.ContentType = "text/calendar";
        Response.AddHeader("content-disposition; attachment; filename=CalendarEvent1.ics");
        Response.Write(sbICSFile);
        Response.End();


        Response.Redirect("Calendar.aspx");
    }

    protected void SignOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }

    private string FormatDateTimeValue(int DateValue)
    {
       if (DateValue < 10)
           return "0" + DateValue.ToString();
       else
           return DateValue.ToString();
    }
}