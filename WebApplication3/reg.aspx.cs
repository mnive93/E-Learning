using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
namespace WebApplication3
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void sendmail(string email)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(email);
                mail.From = new MailAddress(email);
                mail.Subject = "Shikshya-Registration ";


                mail.Body = "You have succefully registered for Shikshya E-learning portal,An educational Journey ahead";

                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential
                     ("mnive93@gmail.com", "ILoveMyFamily");
                //Or your Smtp Email ID and Password
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                Response.Redirect("student.aspx");
            }
            }
        private void execute(string fname, string lname, string uname, string pass, string coll, string deg,string stream,string email,int phn)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "INSERT INTO student VALUES ('" + fname + "','" + lname + "','" + uname + "','" + pass + "','" + coll + "','" + deg + "','" + stream + "','" + email + "'," + phn + ")";
                      

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
               
                cmd.ExecuteNonQuery();
                sendmail(email);              
                Response.Redirect("student.aspx");
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                conn.Close();
            }
        }
        public string GetConnectionString()
        {
            //sets the connection string from your web config file "ConnString" is the name of your Connection String
            return System.Configuration.ConfigurationManager.ConnectionStrings["Elearning"].ConnectionString;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
             
            if (pass.Text == conpass.Text)
            {
                int phn;
                int.TryParse(phno.Text, out phn);
                execute(fname.Text, lname.Text, uname.Text, pass.Text, coll.Text, deg.SelectedItem.Value, stream.SelectedItem.Value, email.Text, phn);
                clear(Page);
            }
            else
            {
                Response.Write("Password did not match");
                pass.Focus();
            }
            }
            catch(Exception e1)
            {

            Response.Write(e1.Message);
            }
        }
        public static void clear(Control Parent)
        {

            if (Parent is TextBox)
            { (Parent as TextBox).Text = string.Empty; }
            else
            {
                foreach (Control c in Parent.Controls)
                    clear(c);
            }
        }
    }

}