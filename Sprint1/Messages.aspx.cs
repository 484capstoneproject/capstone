using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OpenPop.Pop3;
using OpenPop.Mime;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Messages : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        lblincorrectPwd.Visible = false;
    }
    protected void Read_Emails(object sender, EventArgs e)
    {
        int LoginEntityID = (int)Session["EntityID"];

        con.Open();
        SqlCommand cmd = new SqlCommand("select EmailAddress from Business where BusinessEntityID=@BusinessEntityID", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("BusinessEntityID", LoginEntityID);
        cmd.ExecuteNonQuery();

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            while (reader.Read())
            {
                string emailAddress = reader["EmailAddress"].ToString();
                Session.Add("EmailMessage", emailAddress);
            }
        }
        reader.Close();

        //try
        //{
            string emailID = (string)Session["EmailMessage"];

            Pop3Client pop3Client;
            Session["Pop3Client"] = null;
            if (Session["Pop3Client"] == null)
            {

                pop3Client = new Pop3Client();
                pop3Client.Connect("pop.gmail.com", 995, chkSSL.Checked);
                pop3Client.Authenticate(emailID, txtPassword.Text);
                Session["Pop3Client"] = pop3Client;
                Session.Add("Password", txtPassword.Text);

            }
            else
            {
                pop3Client = (Pop3Client)Session["Pop3Client"];
            }
            int count = pop3Client.GetMessageCount();
            DataTable dtMessages = new DataTable();
            dtMessages.Columns.Add("MessageNumber");
            dtMessages.Columns.Add("From");
            dtMessages.Columns.Add("Subject");
            dtMessages.Columns.Add("DateSent");
            int counter = 0;
            for (int i = count; i >= 1; i--)
            {
                Message message = pop3Client.GetMessage(i);
                dtMessages.Rows.Add();
                dtMessages.Rows[dtMessages.Rows.Count - 1]["MessageNumber"] = i;
                dtMessages.Rows[dtMessages.Rows.Count - 1]["From"] = message.Headers.From;
                dtMessages.Rows[dtMessages.Rows.Count - 1]["Subject"] = message.Headers.Subject;
                dtMessages.Rows[dtMessages.Rows.Count - 1]["DateSent"] = message.Headers.DateSent;
                counter++;
                if (counter > 5)
                {
                    break;
                }
            }
            gvEmails.DataSource = dtMessages;
            gvEmails.DataBind();
        //}
        //catch
        //{
        //    lblincorrectPwd.Visible = true;
        //}
    }


}