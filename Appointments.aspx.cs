using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class Appointments : System.Web.UI.Page
{
    SqlConnection c = ConnectionString.getConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
        {
            Path = "~/Scripts/jquery-3.6.0.min.js",
            DebugPath = "~/Scripts/jquery-3.6.0.js",
            CdnPath = "https://code.jquery.com/jquery-3.6.0.min.js",
            CdnDebugPath = "https://code.jquery.com/jquery-3.6.0.js"
        });
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        string fromAddress = "cditbokaro@gmail.com";
        string toAddress = "abhishekkumar9908c@gmail.com";
        string toAddress1 = txtEmail.Text;

        string smtpAddress = "smtp.gmail.com";
        int portNumber = 587;
        string password = "qybx fume lqxb nsuz";
        using (MailMessage mail = new MailMessage())
        {
            mail.From = new MailAddress(fromAddress, "Company Name");
            mail.To.Add(toAddress);
            mail.Subject = "Query received.";
            mail.Body = "We have received your Query. Your query is: "
            + "<br/> Query: " + txtQuery.Text;
            mail.IsBodyHtml = true;
            using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
            {
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential(fromAddress, password);
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
        }

        lblMessage.Text = "Appointment request received!";
        lblMessage.Visible = true;
        lblMessage.CssClass = "message-label success";

    }
}