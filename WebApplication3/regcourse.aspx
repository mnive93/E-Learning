<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="regcourse.aspx.cs" Inherits="WebApplication3.regcourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #con
        {
            height: 602px;
            background-color:Gray;
        }
        .style18
        {
            width: 548px;
        }
        .msg
        {
            font-size:xx-large;
            font-family:Fantasy;
            
            }
        h6
        
        {
            font-family:Fantasy;
            font-size:x-large;
            color:Black;
            
            }
        h5
        {
            font-family:Fantasy;
            font-size:larger;
            color:Black;
            
            }
                
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="con">
<table style="width: 895px; height: 315px">
<tr>
<td>
    <h5>USERNAME</h5></td>
<td class="style18">
    <asp:TextBox ID="uname" runat="server" Width="265px"></asp:TextBox>
    <asp:Label ID="msg" runat="server" CssClass="msg"></asp:Label>
</td>

</tr>
<tr>
<td>
  <h5>  PASSWORD</h5></td>
<td class="style18">
    <asp:TextBox ID="pass" TextMode="Password" runat="server" Width="265px"></asp:TextBox>
    <asp:Label ID="msg2" runat="server" CssClass="msg"></asp:Label>
</td>

</tr>
<tr>
<td>
   <h5> COURSE</h5></td>
<td class="style18">
                        <asp:DropDownList ID="stream" runat="server">
                                    <asp:ListItem>INTRO TO COMPUTER SCIENCE</asp:ListItem>
                                    <asp:ListItem>WEB DESIGN</asp:ListItem>
                                    <asp:ListItem>NETWORKS AND COMMUNICATION</asp:ListItem>
                                </asp:DropDownList>
        
</td>

</tr>

</table>
    <h6>You are just one step away!<asp:ImageButton ID="ImageButton8" runat="server" 
            Height="55px" ImageUrl="~/images/rc.png" 
            onmouseover="this.src='../hover/rc2.png';" 
            onmouseout="this.src='../images/rc.png';" Width="198px" 
            onclick="ImageButton8_Click" />
       
        <asp:Label ID="msg3" runat="server" CssClass="msg"></asp:Label>
       
    </h6>
    <h6>You are not a member..Nothing to worry then register your details here...<asp:ImageButton 
            ID="ImageButton9" runat="server" ImageUrl="~/images/re.png" onmouseover="this.src='../hover/re2.png';" onmouseout="this.src='../images/re.png';"/>
    </h6>
</div>
</asp:Content>
