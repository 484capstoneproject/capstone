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

        //con.Open();
        //SqlCommand cmd = new SqlCommand("select * from Business", con);
        //cmd.CommandType = CommandType.Text;
        ////cmd.Parameters.AddWithValue("@EntityID", LoginEntityID);
        ////cmd.ExecuteNonQuery();

        //SqlDataReader reader = cmd.ExecuteReader();
        //String FirstName = "";

        //if (reader.HasRows)
        //{
        //    while (reader.Read())
        //    {

        //        FirstName = reader["FirstName"].ToString();
        //    }
        //}
        //reader.Close();
        //con.Close();


        //ExcelPackage pck = new ExcelPackage();
        //ExcelWorksheet ws = pck.Workbook.Worksheets.Add("Report");

        ////ws.Cells["A1"].Value = "Communication";
        ////ws.Cells["B1"].Value = "Com1";

        //ws.Cells["A2"].Value = "Report";
        //ws.Cells["B2"].Value = "Report1";

        //ws.Cells["A3"].Value = "Date";
        //ws.Cells["B3"].Value = string.Format("{0:dd MMMM yyyy} at {0:H: mm tt}", DateTimeOffset.Now);

        //ws.Cells["A6"].Value = "[BusinessEntityID]";
        //ws.Cells["B6"].Value = "[BusinessName]";
        //ws.Cells["C6"].Value = "[EmailAddress]";
        //ws.Cells["D6"].Value = "[PhoneNumber]";
        //ws.Cells["E6"].Value = "[FirstName]";
        //ws.Cells["E7"].Value = FirstName;

        //int rowStart = 7;
        //foreach (var item in emplist)
        //{
        //    if (item.Experience < 5)
        //    {
        //        ws.Row(rowStart).Style.Fill.PatternType = OfficeOpenXml.Style.ExcelFillStyle.Solid;
        //        ws.Row(rowStart).Style.Fill.BackgroundColor.SetColor(ColorTranslator.FromHtml(string.Format("pink")));

        //    }

        //    ws.Cells[string.Format("A{0}", rowStart)].Value = item.EmployeeId;
        //    ws.Cells[string.Format("B{0}", rowStart)].Value = item.EmployeeName;
        //    ws.Cells[string.Format("C{0}", rowStart)].Value = item.Email;
        //    ws.Cells[string.Format("D{0}", rowStart)].Value = item.Phone;
        //    ws.Cells[string.Format("E{0}", rowStart)].Value = item.Experience;
        //    rowStart++;
        //}

        //ws.Cells["A:AZ"].AutoFitColumns();
        //Response.Clear();
        //Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        //Response.AddHeader("content-disposition", "attachment; filename=ExcelReport.xlsx");
        //Response.BinaryWrite(pck.GetAsByteArray());
        //Response.End();

        Response.Clear();
        Response.ContentType = "application/octet-stream";
        Response.AddHeader("Content-Disposition", "attachment; filename=ExcelReport.xlsx");
        Response.WriteFile(Server.MapPath("~/Excel/ExcelReport.xlsx"));
        Response.End();

    }



}