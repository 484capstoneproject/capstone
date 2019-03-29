using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using OfficeOpenXml;

namespace ExcelExport.Controllers
{
    public class HomeController : Controller
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);
        public ActionResult Index()
        {
           
            return View();
        }

        public void ExportToExcel()
        {
            //List<EmployeeViewModel> emplist = db.EmployeeInfoes.Select(x => new EmployeeViewModel
            //{
            //    EmployeeId = x.EmployeeId,
            //    EmployeeName = x.EmployeeName,
            //    Email = x.Email,
            //    Phone = x.Phone,
            //    Experience = x.Experience
            //}).ToList();

            ExcelPackage pck = new ExcelPackage();
            ExcelWorksheet ws = pck.Workbook.Worksheets.Add("Report");

            ws.Cells["A1"].Value = "Communication";
            ws.Cells["B1"].Value = "Com1";

            ws.Cells["A2"].Value = "Report";
            ws.Cells["B2"].Value = "Report1";

            ws.Cells["A3"].Value = "Date";
            ws.Cells["B3"].Value = string.Format("{0:dd MMMM yyyy} at {0:H: mm tt}", DateTimeOffset.Now);

            ws.Cells["A6"].Value = "EmployeeId";
            ws.Cells["B6"].Value = "EmployeeName";
            ws.Cells["C6"].Value = "Email";
            ws.Cells["D6"].Value = "Phone";
            ws.Cells["E6"].Value = "Experience";

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

            ws.Cells["A:AZ"].AutoFitColumns();
            Response.Clear();
            Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
            Response.AddHeader("content-disposition", "attachment: filename=" + "ExcelReport.xlsx");
            Response.BinaryWrite(pck.GetAsByteArray());
            Response.End();

        }
    }
}