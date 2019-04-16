using OpenPop.Mime;
using OpenPop.Pop3;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Pop3Client pop3Client = (Pop3Client)Session["Pop3Client"];
            int messageNumber = int.Parse(Request.QueryString["MessageNumber"]);
            Message message = pop3Client.GetMessage(messageNumber);
            MessagePart messagePart = message.MessagePart.MessageParts[0];
            lblFrom.Text = message.Headers.From.Address;
            lblSubject.Text = message.Headers.Subject;
            lblBody.Text = messagePart.BodyEncoding.GetString(messagePart.Body);

        }
    }

    protected void btnReply_Click(object sender, EventArgs e)
    {
        lblSubjectSend.Visible = true;
        txtSubjectSend.Visible = true;
        lblBodySend.Visible = true;
        txtareaBodySend.Visible = true;
        btnSendEmail.Visible = true;
    }
    protected void btnSendEmail_Click(object sender, EventArgs e)
    {
        string email = (string)Session["EmailMessage"];
        string password = (string)Session["Password"];

        MailMessage mail = new MailMessage();
        mail.To.Add(lblFrom.Text); //adding the email to send to
        mail.From = new MailAddress(email);

        mail.Subject = txtSubjectSend.Text;
        mail.Body = txtareaBodySend.InnerText;

        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient(); //establishing the simple mail transfer protocol
        smtp.Host = "smtp.gmail.com"; //Whatever SMTP address, set to gmail but might need to change it to multiple like aol etc
        smtp.Credentials = new System.Net.NetworkCredential(email, password);
        //Or your Smtp Email ID and Password
        smtp.EnableSsl = true;

        smtp.Send(mail);
        lblSuccessfulSent.Visible = true;

    }
}