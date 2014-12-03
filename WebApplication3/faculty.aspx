<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="faculty.aspx.cs" Inherits="WebApplication3.faculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #left
        {
            float:left;
            height: 595px;
            width: 649px;
            background-color:White;
        }
        #right
        {
            float:right;
            height: 599px;
            width: 251px;
            background-color:White;
        }
        .style18
        {
            width: 211px;
        }
     h6
     {
         font-family:Garamond;
         color:Black;
         font-size:larger;
         
        
         }  
         h5
         {
             font-family:Broadway;
             color:Teal;
             font-size:x-large;
             
             
             }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="left">
<table style="border-style: none; border-color: inherit; border-width: 5; width: 635px; height: 559px; ">
<tr>
<td class="style18">

    <asp:Image ID="Image4" runat="server" Height="143px" 
        ImageUrl="~/images/David BeckerField.jpg" />
</td>
<td>
<h5>DAVID BECKERFIELD</h5>
<h6>MS graduate from University of Southern California in systems and programming.His main field of interest is
Computer organisation and architecture.Very much interested in Machine learning and 
also advanced programming languages.
</h6>
</td>
</tr>
<tr>
<td class="style18">
    <asp:Image ID="Image2" runat="server" Height="154px" ImageUrl="~/images/Punith Malhothra.jpg" 
        Width="206px" />

</td>
<td>
<h5>PUNITH MALHOTHRA</h5>
<h6>MS Graduate from Rutgers School Of Design in software engineering.He has built many websites
invloving faster access of database.He has a good knowledge about web design.
And he will be handling your WEB DESIGN course.
</h6>
</td>
</tr>
<tr>
<td class="style18">

    <asp:Image ID="Image3" runat="server" Height="174px" 
        ImageUrl="~/images/Ian Seinfield.jpg" Width="209px" />
</td>
<td>
<h5>IAN SEINFIELD</h5>
<h6>MS Graduate from North Carolina State University in Networks and programming.He is currently working 
on a project which deals with securing network sockets.Any queries in networks subject he will be right there to help you.</h6>
</td>
</tr>

</table>
</div>
<div id="right">
    <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="Teal" 
        BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
        Font-Size="0.8em" ForeColor="#333333" Height="278px" Width="244px" 
        onauthenticate="Login1_Authenticate">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="Teal" BorderColor="Teal" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="Teal" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:Login>
</div>
</asp:Content>
