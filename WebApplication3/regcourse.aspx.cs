using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class regcourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string GetConnectionString()
        {
            //sets the connection string from your web config file "ConnString" is the name of your Connection String
            return System.Configuration.ConfigurationManager.ConnectionStrings["Elearning"].ConnectionString;
        }


        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                String passw = pass.Text;
                SqlConnection conn = new SqlConnection(GetConnectionString());
                string sql = "select pass from student where uname='" + uname.Text + "'";

                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader rd = cmd.ExecuteReader();
                
                if (rd.Read()&& rd["pass"]!=null)
                {
                    if (rd["pass"].ToString() == passw)
                    {
                        cmd.Cancel();
                        rd.Close();
                        string sql2 = "insert into courses values ('" + uname.Text + "','" + stream.SelectedValue + "')";
                        SqlCommand cmd2 = new SqlCommand(sql2, conn);

                        cmd2.ExecuteNonQuery();
                        msg3.Text = "You have registered successfully";
                    }
                    else
                    {
                        msg2.Text = "INVALID PASSWORD";
                    }


                }
                else
                {
                    msg.Text = "INVALID USER NAME PLEASE CHECK PROPERLY";
                }
               
            }
            catch (SqlException ex)
            {
                msg3.Text = "You have registered already";
            }
        }
    }
}