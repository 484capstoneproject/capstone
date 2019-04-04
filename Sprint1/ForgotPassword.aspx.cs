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
        if (!String.IsNullOrEmpty(txtEmail.Value))
        {
            SendEmail();
        }
        else if (!String.IsNullOrEmpty(txtUsername.Value))

        {
            SendUsername();
        }
        else
        {
            lbl_msg.Text = "Please enter either an Email Address or Username";
        }
    }

    public void SendEmail()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Password where Email=@email", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@email", txtEmail.Value);
        SqlDataReader entityReader = cmd.ExecuteReader();

        if (entityReader.HasRows)
        {
            Session.Add("Email", txtEmail.Value);

            MailMessage mail = new MailMessage();
            mail.To.Add(txtEmail.Value); //adding the email to send to
            mail.From = new MailAddress("cuedinnextstepgo@gmail.com");
            mail.Subject = "Password Recovery"; //subject of the meeting

            string Body = "Please click the link to <a href=\"http://nextstepgo-dev.us-east-1.elasticbeanstalk.com/ResetPassword.aspx\">Reset Password</a>";
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
            lbl_msg.Visible = true;
            lbl_msg.Text = "Email is incorrect. Please enter a valid email address";
        }
    }

    public void SendUsername()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select Email from Password where username=@username", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@username", txtUsername.Value);
        SqlDataReader entityReader = cmd.ExecuteReader();

        if (entityReader.HasRows)
        {
            while (entityReader.Read())
            {
                string email = entityReader["Email"].ToString();

                Session.Add("Email", email);

                MailMessage mail = new MailMessage();
                mail.To.Add(email); //adding the email to send to
                mail.From = new MailAddress("cuedinnextstepgo@gmail.com");
                mail.Subject = "Password Recovery"; //subject of the meeting

                string Body = "Please click the link to <a href=\"http://nextstepgo-dev.us-east-1.elasticbeanstalk.com/ResetPassword.aspx\">Reset Password</a>";
                mail.Body = Body; //adding content to the body of the message

                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient(); //establishing the simple mail transfer protocol
                smtp.Host = "smtp.gmail.com"; //Whatever SMTP address, set to gmail but might need to change it to multiple like aol etc
                smtp.Credentials = new System.Net.NetworkCredential
                        ("cuedinnextstepgo@gmail.com", "08NextStepGo!");
                //Or your Smtp Email ID and Password
                smtp.EnableSsl = true;
                smtp.Send(mail);

                lbl_msg.Text = "Link to reset password sent to username's email. Please follow instructions to reset your password";
            }
        }
        else
        {
            lbl_msg.Text = "Username is incorrect. Please enter a valid username";
        }
    }

}
