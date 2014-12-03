using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
namespace WebApplication3
{
    public partial class feedback : System.Web.UI.Page
    {
        public void sendmail()
        
                    {
            
            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(email.Text);
                mail.From = new MailAddress(email.Text);
                mail.Subject = "Shikshya-Feedback ";


                mail.Body = "Thank you so much for your feedback.Thanks again for visiting our page";

                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com"; 
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential
                     ("mnive93@gmail.com", "greenmist");
               
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
                msg.Text=ex.Message;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            msg.Text = "Thank for your feedback";
         sendmail();           
            }

        }
    }

