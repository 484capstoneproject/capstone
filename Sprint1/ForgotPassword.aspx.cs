using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Net.Mail;
using System.Diagnostics;

public partial class ForgotPassword : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Password where Email=@email", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("email", TxtEmail.Text);
        SqlDataReader entityReader = cmd.ExecuteReader();

        if (entityReader.HasRows)
        {
            Session.Add("Email", TxtEmail.Text);

            MailMessage mail = new MailMessage();
            mail.To.Add(TxtEmail.Text); //adding the email to send to
            mail.From = new MailAddress("cuedinnextstepgo@gmail.com");
            mail.Subject = "Password Recovery"; //subject of the meeting

            string Body = "Please click the link to <a href=\"http://localhost:53131/ResetPassword.aspx\">Reset Password</a>";
            mail.Body = Body; //adding content to the body of the message

            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient(); //establishing the simple mail transfer protocol
            smtp.Host = "smtp.gmail.com"; //Whatever SMTP address, set to gmail but might need to change it to multiple like aol etc
            smtp.Credentials = new System.Net.NetworkCredential
                    ("cuedinnextstepgo@gmail.com", "08NextStepGo!");
            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);

            lbl_msg.Text = "Link to reset password sent to email. Please follow instructions to reset your password";
        }
        else
        {
            lbl_msg.Text = "Email is incorrect. Please enter a valid email address";
        }
    }

}
