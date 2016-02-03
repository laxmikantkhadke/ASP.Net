using System;
using System.Net.Mail;

public partial class Pages_ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("testsoftware.mdb@gmail.com");
                mailMessage.To.Add("testsoftware.mdb@gmail.com");
                mailMessage.Subject = txtSubject.Text;


                mailMessage.Body = "<b>Sender Name :</b>" + txtName.Text + "<br />"
                    + "<b>Sender Email :</b>" + txtEmail.Text + "<br />"
                    + "<b>Sender Mobile :</b>" + txtMobile.Text + "<br />"
                    + "<b>Description :</b>" + txtComments.Text;
                mailMessage.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials =
                    new System.Net.NetworkCredential("testsoftware.mdb@gmail.com", "namoarihant");
                smtpClient.Send(mailMessage);

                Label1.ForeColor = System.Drawing.Color.Blue;
                Label1.Text = "Thank you for contacting us";

                txtName.Enabled = false;
                txtEmail.Enabled = false;
                txtSubject.Enabled = false;
                txtComments.Enabled = false;
                Button1.Enabled = false;
            }
           
        }
        catch (Exception ex)
        {
            // Log - Event viewer or table
            Label1.ForeColor = System.Drawing.Color.Blue;
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "There is an unknown problem. Please try later";

        }
    }
}
