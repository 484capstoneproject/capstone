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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        Session.Add("Email", txt_email.Text);

        MailMessage mail = new MailMessage();
        mail.To.Add(txt_email.Text);
        mail.From = new MailAddress("cuedinnextstepgo@gmail.com");
        mail.Subject = "Password Recovery";

        string Body = "Please click the link to <a href=\"http://localhost:53131/ResetPassword.aspx\">Reset Password</a>";
        mail.Body = Body;

        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
        smtp.Credentials = new System.Net.NetworkCredential
             ("cuedinnextstepgo@gmail.com", "08NextStepGo!");
        //Or your Smtp Email ID and Password
        smtp.EnableSsl = true;
        smtp.Send(mail);

        lbl_msg.Text = "Link to reset password sent to email. Please follow instructions to reset your password";

    }
}
