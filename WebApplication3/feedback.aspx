<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="WebApplication3.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #feed
        {
            height: 604px;
            background-color:Gray;
        }
        h2
        {
            font-family:Broadway;
            font-size:large;
            color:Purple;
        height: 113px;
        width: 303px;
    }
                        
        h4
        {
            font-family:Fantasy;
            font-size:xx-large;
            color:Black;
            text-align:center;
            text-indent:10px;
            }
            .text
            {
                font-family:Fantasy;
            font-size:x-large;
            color:Black;
            text-align:center;
           
                
                }
            
    .style18
    {
        width: 301px;
            height: 108px;
        }
            
        .style19
        {
            width: 301px;
            height: 45px;
        }
        .style20
        {
            height: 45px;
        }
        .style21
        {
            width: 301px;
            height: 29px;
        }
        .style22
        {
            height: 29px;
        }
        .style23
        {
            height: 108px;
        }
            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="feed">
   <div id="ban">
       <asp:Image ID="Image2" runat="server" Height="127px" 
           ImageUrl="~/images/feedb.jpg" Width="899px" />
   </div> 
   <div id="form">
   
       <table style="width:100%; height: 389px;">
           <tr>
               <td class="style18">
                <h2>NAME</h2></td>
               <td class="style23">
                   <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="280px"></asp:TextBox>
                   </td>
                          </tr>
           <tr>
               <td class="style21">
                   <h2>EMAIL ID</h2>
                   </td>
               <td class="style22">
                   <asp:TextBox ID="email" runat="server" Height="40px" Width="280px"></asp:TextBox>
                   </td>
                          </tr>
           <tr>
               <td class="style19">
                   
               <h2>FEEDBACK</h2></td>
               <td class="style20">
                   <asp:TextBox ID="TextBox4" runat="server" Height="81px" TextMode="MultiLine" 
                       Width="323px"></asp:TextBox>
               </td>
               
           </tr>
           <tr>
           <td>
               <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
           </td>
           <td>
               







               <asp:Label ID="msg" runat="server" CssClass="text"></asp:Label>
               







               <br />
               </td>
           </tr>
       </table>
   
   </div>
</div>
</asp:Content>
