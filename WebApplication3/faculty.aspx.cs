using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication3
{
    public partial class faculty : System.Web.UI.Page
    {
        
            private void connect(string user, string pass)
        {
            try
            {
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Elearning"].ConnectionString);
                string sql = "select * from faculty where name='" + user + "'";
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader rd = cmd.ExecuteReader();
                while(rd.Read())
                {
                    if (rd["pass"].ToString() == pass)
                    {
                        string sub = rd["sub"].ToString();
                       string name = rd["name"].ToString();
                        Response.Redirect("facultylog.aspx?subject="+sub+" &Name="+name+"");
                    }
                    else
                    {
                        Response.Write("Invalid user name and password");
                        Response.Redirect("home.aspx");
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
    }
}