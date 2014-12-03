<%@ Page Title="" Language="C#" MasterPageFile="~/course.Master" AutoEventWireup="true" CodeBehind="NETWORKS AND COMMUNICATION.aspx.cs" Inherits="WebApplication3.NETWORKS_AND_COMMUNICATION" %>
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
<h3>NETWORKS AND COMMUNICATION</h3>
</div>
<div>
<table style="width: 891px; height: 140px" >
<tr>
<td class="style2">
    <asp:Image ID="Image3" runat="server" Height="153px" 
        ImageUrl="~/images/Ian Seinfield.jpg" />
</td>
<td>
<h3>PROFESSOR IAN SEINFIELD</h3>
</td>

</tr>
</table>
</div>
<div id="content">
<h3>STUDY MATERIALS</h3>
<table style="width: 893px; height: 433px; background-color:Gray">
<tr>
<td class="style5">
<h2>INTRODUCTION TO NETWORKS</h2>
</td>
<td class="style4">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton1_Click"  />
</td>
</tr>
<tr>
<td class="style6">

<h2>TCP/IP PROTOCOL</h2>
</td>
<td>
<asp:ImageButton ID="ImageButton2" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton2_Click"  />
</td>
</tr>
<tr>
<td class="style6">

<h2>OSI LAYERS</h2>
</td>
<td>
<asp:ImageButton ID="ImageButton3" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton3_Click" 
        />
</td>
</tr>
<tr>
<td class="style6">

<h2>FTP</h2>
</td>
<td>
<asp:ImageButton ID="ImageButton4" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton4_Click"  />
</td>
</tr>
<tr>
<td class="style6">

<h2>EMAIL(SMTP,POP3,IMAP4) </h2>
</td>
<td>
<asp:ImageButton ID="ImageButton5" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton5_Click"  />
</td>
</tr>
<tr>
<td class="style6">

<h2>SSH AND PGP </h2>
</td>
<td>
<asp:ImageButton ID="ImageButton6" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton6_Click" 
         />
</td>
</tr>
<tr>
<td class="style6">

<h2>TCP AND UDP</h2>
</td>
<td>
<asp:ImageButton ID="ImageButton7" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton7_Click" />
</td>
</tr>
<tr>
<td class="style6">

<h2>CONGESTION CONTROL </h2>
</td>
<td>
<asp:ImageButton ID="ImageButton8" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton8_Click" />
</td>
</tr>

</table>

</div>

</asp:Content>
