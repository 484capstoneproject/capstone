using OfficeOpenXml;
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

public partial class Analytics : System.Web.UI.Page
{
    public static int rowStart = 7;
    public static int srowStart = 7;
    public static int jRowStart = 7;
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

    public void ExportToExcel(object sender, EventArgs e)
    {

        String LearningPostingID;
        String LearningTitle;
        String LearningType;
        String Description;
        String Month;
        String Day;
        String Year;
        String BusinessEntityID;
        String CareerID;
        String Published;


        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.CommandText = "SELECT * FROM LearningPosting";
        SqlDataReader dr = cmd.ExecuteReader();
        List<String> learning = new List<String>();

        ExcelPackage pck = new ExcelPackage();
        ExcelWorksheet ws = pck.Workbook.Worksheets.Add("Learning Report");

        ws.Cells["A1"].Value = "Table:";
        ws.Cells["B1"].Value = "Learning Posting";

        ws.Cells["A3"].Value = "Date:";
        ws.Cells["B3"].Value = string.Format("{0:dd MMMM yyyy} at {0:H: mm tt}", DateTime.Now);

        ws.Cells["A6"].Value = "LearningPostingID";
        ws.Cells["B6"].Value = "LearningTitle";
        ws.Cells["C6"].Value = "LearningType";
        ws.Cells["D6"].Value = "Description";
        ws.Cells["E6"].Value = "Month";
        ws.Cells["F6"].Value = "Day";
        ws.Cells["G6"].Value = "Year";
        ws.Cells["H6"].Value = "BusinessEntityID";
        ws.Cells["I6"].Value = "CareerID";
        ws.Cells["J6"].Value = "Published";

        if (dr.HasRows)
        {
            while (dr.Read())
            {

                LearningPostingID = dr["LearningPostingID"].ToString();
                learning.Insert(0, LearningPostingID);
                ws.Cells[string.Format("A{0}", rowStart)].Value = learning[0];

                LearningTitle = dr["LearningTitle"].ToString();
                learning.Insert(1, LearningTitle);
                ws.Cells[string.Format("B{0}", rowStart)].Value = learning[1];

                LearningType = dr["LearningType"].ToString();
                learning.Insert(2, LearningType);
                ws.Cells[string.Format("C{0}", rowStart)].Value = learning[2];

                Description = dr["Description"].ToString();
                learning.Insert(3, Description);
                ws.Cells[string.Format("D{0}", rowStart)].Value = learning[3];

                Month = dr["Month"].ToString();
                learning.Insert(4, Month);
                ws.Cells[string.Format("E{0}", rowStart)].Value = learning[4];

                Day = dr["Day"].ToString();
                learning.Insert(5, Day);
                ws.Cells[string.Format("F{0}", rowStart)].Value = learning[5];

                Year = dr["Year"].ToString();
                learning.Insert(6, Year);
                ws.Cells[string.Format("G{0}", rowStart)].Value = learning[6];

                BusinessEntityID = dr["BusinessEntityID"].ToString();
                learning.Insert(7, BusinessEntityID);
                ws.Cells[string.Format("H{0}", rowStart)].Value = learning[7];

                CareerID = dr["CareerID"].ToString();
                learning.Insert(8, CareerID);
                ws.Cells[string.Format("I{0}", rowStart)].Value = learning[8];

                Published = dr["Published"].ToString();
                learning.Insert(9, Published);
                ws.Cells[string.Format("J{0}", rowStart)].Value = learning[9];

                rowStart++;
            }
        }
        dr.Close();
        con.Close();


        String sScholarshipPostingID;
        String sScholarshipName;
        String sAmount;
        String sDescription;
        String sMonth;
        String sDay;
        String sYear;
        String sBusinessEntityID;
        String sCareerID;
        String sPublished;



        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.CommandText = "SELECT * FROM ScholarshipPosting";
        SqlDataReader datar = cmd.ExecuteReader();
        List<String> scholarship = new List<String>();

        ExcelPackage pack = new ExcelPackage();
        ExcelWorksheet WS = pck.Workbook.Worksheets.Add("Scholarship Report");

        WS.Cells["A1"].Value = "Table:";
        WS.Cells["B1"].Value = "Scholarship Posting";

        WS.Cells["A3"].Value = "Date:";
        WS.Cells["B3"].Value = string.Format("{0:dd MMMM yyyy} at {0:H: mm tt}", DateTime.Now);

        WS.Cells["A6"].Value = "ScholarshipPostingID";
        WS.Cells["B6"].Value = "ScholarshipName";
        WS.Cells["C6"].Value = "Amount";
        WS.Cells["D6"].Value = "Description";
        WS.Cells["E6"].Value = "Month";
        WS.Cells["F6"].Value = "Day";
        WS.Cells["G6"].Value = "Year";
        WS.Cells["H6"].Value = "BusinessEntityID";
        WS.Cells["I6"].Value = "CareerID";
        WS.Cells["J6"].Value = "Published";

        if (datar.HasRows)
        {
            while (datar.Read())
            {

                sScholarshipPostingID = datar["ScholarshipPostingID"].ToString();
                scholarship.Insert(0, sScholarshipPostingID);
                WS.Cells[string.Format("A{0}", srowStart)].Value = scholarship[0];

                sScholarshipName = datar["ScholarshipName"].ToString();
                scholarship.Insert(1, sScholarshipName);
                WS.Cells[string.Format("B{0}", srowStart)].Value = scholarship[1];

                sAmount = datar["Amount"].ToString();
                scholarship.Insert(2, sAmount);
                WS.Cells[string.Format("C{0}", srowStart)].Value = scholarship[2];

                sDescription = datar["Description"].ToString();
                scholarship.Insert(3, sDescription);
                WS.Cells[string.Format("D{0}", srowStart)].Value = scholarship[3];

                sMonth = datar["Month"].ToString();
                scholarship.Insert(4, sMonth);
                WS.Cells[string.Format("E{0}", srowStart)].Value = scholarship[4];

                sDay = datar["Day"].ToString();
                scholarship.Insert(5, sDay);
                WS.Cells[string.Format("F{0}", srowStart)].Value = scholarship[5];

                sYear = datar["Year"].ToString();
                scholarship.Insert(6, sYear);
                WS.Cells[string.Format("G{0}", srowStart)].Value = scholarship[6];

                sBusinessEntityID = datar["BusinessEntityID"].ToString();
                scholarship.Insert(7, sBusinessEntityID);
                WS.Cells[string.Format("H{0}", srowStart)].Value = scholarship[7];

                sCareerID = datar["CareerID"].ToString();
                scholarship.Insert(8, sCareerID);
                WS.Cells[string.Format("I{0}", srowStart)].Value = scholarship[8];

                sPublished = datar["Published"].ToString();
                scholarship.Insert(9, sPublished);
                WS.Cells[string.Format("J{0}", srowStart)].Value = scholarship[9];

                srowStart++;
            }
        }
        datar.Close();
        con.Close();

        String jJobPostingID;
        String jJobTitle;
        String jJobType;
        String jDescription;
        String jMonth;
        String jDay;
        String jYear;
        String jBusinessEntityID;
        String jCareerID;
        String jPublished;



        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.CommandText = "SELECT * FROM JobPosting";
        SqlDataReader DR = cmd.ExecuteReader();
        List<String> job = new List<String>();

        ExcelPackage jpck = new ExcelPackage();
        ExcelWorksheet jws = pck.Workbook.Worksheets.Add("Job Report");

        jws.Cells["A1"].Value = "Table:";
        jws.Cells["B1"].Value = "Job Posting";

        jws.Cells["A3"].Value = "Date:";
        jws.Cells["B3"].Value = string.Format("{0:dd MMMM yyyy} at {0:H: mm tt}", DateTimeOffset.Now);

        jws.Cells["A6"].Value = "JobPostingID";
        jws.Cells["B6"].Value = "JobTitle";
        jws.Cells["C6"].Value = "JobType";
        jws.Cells["D6"].Value = "Description";
        jws.Cells["E6"].Value = "Month";
        jws.Cells["F6"].Value = "Day";
        jws.Cells["G6"].Value = "Year";
        jws.Cells["H6"].Value = "BusinessEntityID";
        jws.Cells["I6"].Value = "CareerID";
        jws.Cells["J6"].Value = "Published";

        if (DR.HasRows)
        {
            while (DR.Read())
            {

                jJobPostingID = DR["JobPostingID"].ToString();
                job.Insert(0, jJobPostingID);
                jws.Cells[string.Format("A{0}", jRowStart)].Value = job[0];

                jJobTitle = DR["JobTitle"].ToString();
                job.Insert(1, jJobTitle);
                jws.Cells[string.Format("B{0}", jRowStart)].Value = job[1];

                jJobType = DR["JobType"].ToString();
                job.Insert(2, jJobType);
                jws.Cells[string.Format("C{0}", jRowStart)].Value = job[2];

                jDescription = DR["Description"].ToString();
                job.Insert(3, jDescription);
                jws.Cells[string.Format("D{0}", jRowStart)].Value = job[3];

                jMonth = DR["Month"].ToString();
                job.Insert(4, jMonth);
                jws.Cells[string.Format("E{0}", jRowStart)].Value = job[4];

                jDay = DR["Day"].ToString();
                job.Insert(5, jDay);
                jws.Cells[string.Format("F{0}", jRowStart)].Value = job[5];

                jYear = DR["Year"].ToString();
                job.Insert(6, jYear);
                jws.Cells[string.Format("G{0}", jRowStart)].Value = job[6];

                jBusinessEntityID = DR["BusinessEntityID"].ToString();
                job.Insert(7, jBusinessEntityID);
                jws.Cells[string.Format("H{0}", jRowStart)].Value = job[7];

                jCareerID = DR["CareerID"].ToString();
                job.Insert(8, jCareerID);
                jws.Cells[string.Format("I{0}", jRowStart)].Value = job[8];

                jPublished = DR["Published"].ToString();
                job.Insert(9, jPublished);
                jws.Cells[string.Format("J{0}", jRowStart)].Value = job[9];

                jRowStart++;
            }
        }
        dr.Close();
        con.Close();

        WS.Cells["A:AZ"].AutoFitColumns();
        Response.Clear();
        Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        Response.AddHeader("content-disposition", "attachment; filename=ExcelReports.xlsx");
        Response.BinaryWrite(pck.GetAsByteArray());
        Response.End();

    }



}