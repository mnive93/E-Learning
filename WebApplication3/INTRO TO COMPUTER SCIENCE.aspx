<%@ Page Title="" Language="C#" MasterPageFile="~/course.Master" AutoEventWireup="true" CodeBehind="INTRO TO COMPUTER SCIENCE.aspx.cs" Inherits="WebApplication3.INTRO_TO_COMPUTER_SCIENCE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
        .style3
        {
            width: 137px;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            height: 23px;
            width: 621px;
        }
        .style6
        {
            width: 621px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id=title style="width: 894px; height: 37px">
<h3>INTRO TO COMPUTER SCIENCE</h3>
</div>
<div>
<table style="width: 891px; height: 140px" >
<tr>
<td class="style3">
    <asp:Image ID="Image3" runat="server" Height="153px" 
        ImageUrl="~/images/David BeckerField.jpg" />
</td>
<td>
<h3>PROFESSOR DAVID BECKERFIELD</h3>
</td>

</tr>
</table>
</div>
<div id="content">
<h3>STUDY MATERIALS</h3>
<table style="width: 893px; height: 433px; background-color:Gray">
<tr>
<td class="style5">
<h2>FUNDAMENTALS OF COMPUTER </h2>
</td>
<td class="style4">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton1_Click1"  />
</td>
</tr>
<tr>
<td class="style6">

<h2>GENERATION OF COMPUTERS</h2>
</td>
<td>
<asp:ImageButton ID="ImageButton2" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton2_Click"   />
</td>
</tr>
<tr>
<td class="style6">

<h2>LOOPING STRUCTURE</h2>
</td>
<td>
<asp:ImageButton ID="ImageButton3" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton3_Click" 
          />
</td>
</tr>
<tr>
<td class="style6">

<h2>PROGRAMMING LANGUAGES AND ARCHITECTURE</h2>
</td>
<td>
<asp:ImageButton ID="ImageButton4" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton4_Click"  />
</td>
</tr>
<tr>
<td class="style6">

<h2>POINTERS </h2>
</td>
<td>
<asp:ImageButton ID="ImageButton5" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton5_Click"  />
</td>
</tr>
<tr>
<td class="style6">

<h2>STRUCTURES AND UNIONS </h2>
</td>
<td>
<asp:ImageButton ID="ImageButton6" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton6_Click" 
         />
</td>
</tr>
<tr>
<td class="style6">

<h2>DATATYPES</h2>
</td>
<td>
<asp:ImageButton ID="ImageButton7" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton7_Click"  />
</td>
</tr>
<tr>
<td class="style6">

<h2>THE ART OF DEBUGGING </h2>
</td>
<td>
<asp:ImageButton ID="ImageButton8" runat="server" Height="60px" 
        ImageUrl="~/images/pdf_icon.png" onclick="ImageButton8_Click"  />
</td>
</tr>

</table>

</div>
</asp:Content>
