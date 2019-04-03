/// NextStepGo System (Business/Employer Focus) - Sprint1
/// File Constructed By: Austin Choi, Igor Goryachev, Nathan Lam, Brian Petersen, Austin Volpi, Addison Wittkamp
/// Submitted: 3/19/19

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using OfficeOpenXml;

// OFFICIAL

public partial class Default : System.Web.UI.Page
{
    public static string userLogin;

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Register_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void Login_Click(object sender, EventArgs e)
    {
        usernameHelp.InnerText = "We'll never share your username with anyone else";
        passwordHelp.InnerText = "Forgot Password?";
        Login commitUsername = new Login(txtUsername.Text);

        con.Open();
        SqlCommand cmd = new SqlCommand("Select BusinessEntityID from Business where username=@username", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@username", commitUsername.GetUsername());
        SqlDataReader entityReader = cmd.ExecuteReader();

        if (entityReader.HasRows)
        {
            while (entityReader.Read())
            {
                int BusinessID = Convert.ToInt32(entityReader["BusinessEntityID"].ToString());
                Session.Add("EntityID", BusinessID); //get the username of the current user to use across pages
            }
        }
        con.Close();


        con.Open();
        SqlCommand findPass = new SqlCommand();
        findPass.Connection = con;
        findPass.CommandText = "Select password from Password where username = @username";
        findPass.Parameters.Add(new SqlParameter(("@username"), commitUsername.GetUsername()));
        findPass.ExecuteNonQuery();

        SqlDataReader reader = findPass.ExecuteReader();

        if (reader.HasRows) // if the username exists, it will continue
        {
            while (reader.Read()) // will read the single record that matches the entered username
            {
                string storedPass = reader["password"].ToString(); // store the database password into this variable

                if (PasswordHash.ValidatePassword(txtPassword.Text, storedPass)) // if the entered password matches what is stored, it will show success
                {
                    Response.Redirect("BusinessPortal.aspx");

                }
                else
                    passwordHelp.InnerText = "Incorrect Password.";
            }
        }
        else
        {
            usernameHelp.InnerText = "Incorrect Username.";
        }


        con.Close();
    }

    public class EmployeeViewModel
    {
        public string BusinessEntityID { get; set; }
        public string BusinessName { get; set; }
        public string EmailAddress { get; set; }
        public string PhoneNumber { get; set; }
        public string FirstName { get; set; }
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