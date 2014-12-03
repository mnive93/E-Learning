<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="WebApplication3.student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
         .style15
         {
             width: 283px;
             height: 402px;
         }
         #image
         {
             height: 170px;
             width: 390px;
         }
         #text
         {
             background-color:Black;
             height: 230px;
             width: 395px;
         }
         h5
         {
             font-family:Leelawadee;
             font-size:medium; 
             color:Silver;
             text-align:justify;
        height: 29px;
        width: 385px;
    }
             #login
             {
                 background-color:Black;
                height:271px;
                width:495px;
                 
                 }
                 #con
                 {
                     background-color:Black;
        width: 497px;
             height: 117px;
         }
        
         #log
         {
             height: 406px;
         }
        
         #bot
         {
             height: 194px;
             
         }
        
     </style>
     </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="log">
<table>
<tr>
<td class="style16">
<div id="image">
    <asp:Image ID="Image1" runat="server" Height="170px" ImageUrl="~/slide1.jpg" 
        Width="391px" />
</div>
<div id ="text">
<h5>
This is a great opportunity for all the students as we give you all 
the right materials and exposure so that u can pursue your career.
You can get any help from the world class faculty.All you have to do is 
login with your user id and password and register for a course.Don't 
have an account then what you waiting for SIGN UP!!Just provide all 
your details along with your academic qualifications.You might be 
asked to submit your transcripts as well.SO be ready with  all your 
materials.Have fun studying.
</h5>
</div>
</td>
<td class="style15">
<div id="con">
    <h5>&nbsp;</h5>
    <asp:ImageButton ID="ImageButton8" runat="server" 
            Height="49px" ImageUrl="~/images/re.png" 
        onmouseover="this.src='../hover/re2.png';" onmouseout="this.src='../images/re.png';"
            PostBackUrl="~/reg.aspx" Width="176px" style="margin-left: 159px" />
    </div>
<div id="login">
    <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="Teal" 
        BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
        Font-Size="0.8em" ForeColor="Teal" Height="261px" TextLayout="TextOnTop" 
        Width="482px" style="margin-top: 0px; margin-left: 3px;" 
        onauthenticate="Login1_Authenticate">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="White" BorderColor="Teal" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="Teal" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:Login>
</div>
 </td>
   </tr>
    </table>
</div>
<div id="bot">

    <asp:Image ID="Image2" runat="server" Height="186px" 
        ImageUrl="~/images/ban2.jpg" Width="898px" />

</div>
</asp:Content>
