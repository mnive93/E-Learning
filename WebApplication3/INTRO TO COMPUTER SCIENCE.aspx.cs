﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class INTRO_TO_COMPUTER_SCIENCE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Webform1.aspx?Filename=pdfs/pdf2.pdf");
       
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Webform1.aspx?Filename=pdfs/pdf3.pdf");
       
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Webform1.aspx?Filename=pdfs/pdf4.pdf");
       
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Webform1.aspx?Filename=pdfs/pdf5.pdf");
       
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Webform1.aspx?Filename=pdfs/pdf6.pdf");
       
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Webform1.aspx?Filename=pdfs/pdf7.pdf");
       
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Webform1.aspx?Filename=pdfs/pdf8.pdf");
       
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Webform1.aspx?Filename=pdfs/pdf1.pdf");
        }
    }
}