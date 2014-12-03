<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="WebApplication3.courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    h3
    {
        font-family:Broadway;
        font-size:x-large;
        color:Teal;
        
        }
        h6
        {
            font-family:Baskerville Old Face;
            font-size:large;
            color:Black;
            
            }
        #cor
        {
            height: 609px;
        }
        #im
        {
            float:left;
            width: 899px;
            height: 605px;
            background-color:White;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="cor">
<div id="im">
<ul>
<li>
<h3>INTRODUCTION TO COMPUTER SCIENCE<asp:Image ID="Image2" runat="server" 
        Height="64px" ImageUrl="~/images/cs.jpg" style="margin-left: 40px" 
        Width="239px" />
    </h3>
<h6>-Taught by David BeckerField</h6>
<h6>Course that offers an introduction to the computer concepts including all 
all the programming languages and also much more...
    <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/read.png" 
        onmouseover="this.src='../hover/read2.png';" onmouseout="this.src='../images/read.png';"
        Width="104px" onclick="ImageButton8_Click" />
</h6>
</li>
<li>
<h3>INTRODUCTION TO WEB DESIGN</h3>
<h6>-Taught by Punith Malhothra</h6>
<h6>Course that offer materials that covers everything you need to know about web designing
Let it be HTML,CSS,JavaScript etc..you'll know by the end of this course...
<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/read.png" 
        onmouseover="this.src='../hover/read2.png';" onmouseout="this.src='../images/read.png';"
        Width="104px" onclick="ImageButton1_Click" />
    
</li>
<li>
<h3>INTODUCTION TO NETWORKS AND COMMUNICATION</h3>
<h6>-Taught by Ian Seinfield</h6>
<h6>Interested in Networking.Want  to prepare for Cisco exam.Then this is 
the course for you.Everything from TCP to SSH...<asp:ImageButton ID="ImageButton2" 
        runat="server" ImageUrl="~/images/read.png" 
        onmouseover="this.src='../hover/read2.png';" onmouseout="this.src='../images/read.png';"
        Width="104px" onclick="ImageButton2_Click" />
    
</h6>
</li>
</ul>
<asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/images/rc.png" 
         onmouseover="this.src='../hover/rc2.png';" 
            onmouseout="this.src='../images/rc.png';"   Width="227px" 
            PostBackUrl="~/regcourse.aspx" />

        </div>
        </div>
</asp:Content>
