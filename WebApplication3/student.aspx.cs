using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class student : System.Web.UI.Page
    {
        private void connect(string user, string pass)
        {
            try
            {
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Elearning"].ConnectionString);
                string sql = "select pass,fname,lname from student where uname='" + user + "'";
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader rd = cmd.ExecuteReader();
                while(rd.Read())
                {
                    if (rd["pass"].ToString() == pass)
                    {
                        string fn = rd["fname"].ToString();
                        string ln = rd["lname"].ToString();
                        Response.Redirect("studentlog.aspx?Fname=" +fn + "&Lname=" +ln+"&Uname="+user);
                    }
                    else
                    {
                        Response.Write("Invalid user name and password");
                        Response.Redirect("student.aspx");
                    }
                }
            }
            catch (Exception ex1)
            {
                Response.Write(ex1.Message);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            TextBox user = (TextBox)Login1.FindControl("UserName");
            TextBox pwd = (TextBox)Login1.FindControl("Password");
          
            string username = user.Text;
            string pass = pwd.Text;
            connect(username, pass);

        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}