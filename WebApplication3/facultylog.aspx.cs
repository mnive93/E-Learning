using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication3
{
    public partial class facultylog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = Request.QueryString["Name"];
            TIME.Text = DateTime.Now.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String query1 = null;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Elearning"].ConnectionString);
            try
            {
                conn.Open();
                string sql2 = "select query from query where fro='" + stud.Text + "' and stat='unread'";
                SqlCommand cmd2 = new SqlCommand(sql2, conn);
                SqlDataReader rd = cmd2.ExecuteReader();
                while (rd.Read())
                {
                    query1 = rd["query"].ToString();
                }


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conn.Close();
            }
            try
            {
                conn.Open();

                string sql = "insert into reply values('" + stud.Text + "','unread','" + query1 + "','" + rep.Text + "')";

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                msg.Text = "Your reply has been sent ";
                string sql3 = "update query set stat='read' where fro='" + stud.Text + "'";
                SqlCommand cmd3 = new SqlCommand(sql3, conn);
                cmd3.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                msg.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }



        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}