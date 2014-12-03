using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
namespace WebApplication3
{
   
    public partial class studentlog : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Elearning"].ConnectionString);
        protected void Page_PreInit(object sender, EventArgs e)
        {
            string theme;
            theme = (string)Session["theme"];
            if ((theme != null) && (theme.Length != 0))
            {
                Page.Theme = theme;
               
            }
            else
            {
                Page.Theme = "classic";
            }
        }

        private String connect(string user)
        {
            string course=null;
               
            try
            {
                 string sql = "select course from courses where uname='" + user + "'";
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    course = rd["course"].ToString();
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
            return course;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string course;
            time.Text = DateTime.Now.ToString();
            Name.Text = Request.QueryString["Fname"];
            Name.Text += Request.QueryString["Lname"];
            string user = Request.QueryString["Uname"];
            course=connect(user);
            cou.Text = course;
            

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            conn.Open();
            try
            {
                string sql = "insert into query values('"+Request.QueryString["Uname"]+"','"+fac.SelectedValue+"','"+query.Text+"','unread')";
               
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                msg.Text = "Your Query has been posted successfully.You'll be informed very soon";
            }
            catch (Exception ex)
            {
                msg.Text = ex.Message;
            }

        }

        protected void theme_Click(object sender, EventArgs e)
        {
          
            Session["theme"] = ddlTheme.SelectedItem.Value;
            Server.Transfer(Request.FilePath);
       
        }

        protected void dv_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
           try
           {
               TextBox stat = (TextBox)dv.FindControl("stat");
               sd.UpdateParameters["stat"].DefaultValue = stat.Text;
        
           }
	catch (Exception ex1)
	{
        Response.Write(ex1.Message);
	}
}

        protected void dv_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            String cou1 = cou.Text;
            cou1 += ".aspx";
            Response.Redirect(cou1);

        }

       
                
        
    }
}