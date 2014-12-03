<%@ Page Title="" Language="C#" MasterPageFile="~/course.Master" AutoEventWireup="true" CodeBehind="WEB DESIGN.aspx.cs" Inherits="WebApplication3.WEB_DESIGN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 239px;
        }
                h3
        {
            font-family:Broadway;
            color:Teal;
            font-size:xx-large;
            
            }
            h2
            {
                font-family:Gentium Basic;
                color:Black;
                font-size:x-large;
                
                }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id=title style="width: 894px; height: 37px">
<h3>WEB DESIGN</h3>
</div>
<div>
<table style="width: 891px; height: 140px" >
<tr>
<td class="style2">
    <asp:Image ID="Image3" runat="server" Height="153px" 
        ImageUrl="~/images/Punith Malhothra.jpg"  />
</td>
<td>
<h3>PROFESSOR PUNITH MALHOTHRA</h3>
</td>

</tr>
</table>
</div>
<div id="content">
<h3>STUDY MATERIALS</h3>
<table style="width: 893px; height: 433px; background-color:Gray">
<tr>
<td class="style5">
<h2>INTRODUCTION TO WEB DESIGN </h2>
</td>
<td class="style4">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton1_Click"  />
</td>
</tr>
<tr>
<td class="style6">

<h2>WEB SERVER CONTROLS</h2>
</td>
<td>
<asp:ImageButton ID="ImageButton2" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton2_Click" />
</td>
</tr>
<tr>
<td class="style6">

<h2>HTML CONTROLS</h2>
</td>
<td>
<asp:ImageButton ID="ImageButton3" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton3_Click" 
         />
</td>
</tr>
<tr>
<td class="style6">

<h2>HTML AND CSS</h2>
</td>
<td>
<asp:ImageButton ID="ImageButton4" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton4_Click"  />
</td>
</tr>
<tr>
<td class="style6">

<h2>AN INTRO TO JAVASCRIPT </h2>
</td>
<td>
<asp:ImageButton ID="ImageButton5" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton5_Click"  />
</td>
</tr>
<tr>
<td class="style6">

<h2>JQUERY PLUGINS </h2>
</td>
<td>
<asp:ImageButton ID="ImageButton6" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton6_Click" 
         />
</td>
</tr>
<tr>
<td class="style6">

<h2>HTML MEDIA</h2>
</td>
<td>
<asp:ImageButton ID="ImageButton7" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton7_Click"  />
</td>
</tr>
<tr>
<td class="style6">

<h2>HTML REFERENCES </h2>
</td>
<td>
<asp:ImageButton ID="ImageButton8" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton8_Click"  />
</td>
</tr>

</table>

</div>

</asp:Content>
