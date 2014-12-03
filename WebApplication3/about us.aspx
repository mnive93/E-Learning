<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about us.aspx.cs" Inherits="WebApplication3.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #bod
        {
            background-color:Silver;
            height: 600px;
        }
        h2
        {
            font-family:Broadway;
            font-size:large;
            color:Purple;
            }
            
        h4
        {
            font-family:Lucida Console;
            font-size:large;
            color:Black;
            text-align:center;
            text-indent:10px;
            }
            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="bod">
    
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl="~/images/el.jpg" 
                        Width="300px" />
                    </td>
            <td><h2>SHIKSHYA E-LEARNING</h2></td>    
            </tr>
                   </table>
                   <div id="con">
                   <h4>
                       Shikshya is an e-learning portal which offers you a variety of courses in the 
                       dynamic field of computer science.It offers courses on computer programming 
                       languages web design and also from networks.You get very good course materials 
                       for all these areas. You will also be assisted by well experienced faculty.You 
                       can visit them in the faculty page. Hence this is a great opportunity for 
                       everyone.To enroll in this program just register then go to the course page and 
                       register for the course you wish to join.

                   </h4>
</div>    
</div>
</asp:Content>
