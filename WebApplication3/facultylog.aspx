<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facultylog.aspx.cs" Inherits="WebApplication3.facultylog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
     <style type="text/css">
    body
    {
        height:1000px;
        background-color:Purple;
        
        }
        .text
        {
            font-family:Fantasy;
            color:Teal;
            font-size:xx-large;
            text-align:center;
            
            }
        .text2
        {
            font-family:Fantasy;
            color:Black;
            font-size:large;
            
            
            }
                
            #wrapper
{
    background-color:White;
    margin-left:200px;
    width:900px;
    height:900px;
    }
        #title
        {
            background-color:black;
            text-align:center;
            height: 124px;
            width: 656px;
        }
        #footer
        {
                margin-left:0px;

            width:900px;
            background-color:Black;
            text-align:center;
            font-family:Gentium Basic;
            color:White;
            height: 73px;
        }
                   
        h2
        {
            font-family:Broadway;
            color:Teal;
            font-size:large;
            text-align:center;
            }
            
           
        h4
        {
            font-family:Broadway;
            color:Teal;
            font-size:xx-large;
            text-align:center;
            
            }
            
        #dash
        {
        background-color:Black;
            height: 280px;
        }
            
        .style1
        {
            width: 242px;
            height: 96px;
        }
            
        .style2
        {
            width: 242px;
            height: 133px;
        }
        .style3
        {
            height: 133px;
        }
        .style4
        {
            height: 96px;
        }
            
        .style5
        {
            width: 325px;
        }
            
         .style6
         {
             width: 181px;
         }
            
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div id=wrapper>
    <div id="name">
    <table style="height: 125px">
<tr>
<td class="style17">
    <asp:Image ID="Image1" runat="server" Height="112px" 
        ImageUrl="~/images/images.jpg" Width="232px" />
    </td>
<td class="style16"><div id="title"><h4>SHIKSHYA E-LEARNING</h4>
<h2>
-An Educational Journey ahead-
</h2>
</div></td>
</tr>
</table>

    </div>
    <div id="content">
        <table style="width:100%; height: 70px;">
            <tr>
                <td class="style5">
                   <h2>WELCOME</h2> <asp:Label ID="name" runat="server" CssClass="text"></asp:Label>
                    </td>
                <td class="style6">

                    <asp:Label ID="TIME" runat="server" CssClass="text2"></asp:Label>

                    </td>
                    <td>
                    
                        <asp:Button ID="Button3" runat="server" Height="40px" 
                            PostBackUrl="~/faculty.aspx" style="margin-left: 6px" Text="LOGOUT" 
                            Width="190px" />
                    
                    </td>

            </tr>
        </table>
        
    </div>
      <div id="dash">
    <h2>
        DASH BOARD        </h2>

        <asp:WebPartManager ID="WebPartManager1" runat="server">
        </asp:WebPartManager>
        <asp:WebPartZone ID="WebPartZone1" runat="server" Height="182px" Width="900px" 
              BorderColor="#CCCCCC" Font-Names="Verdana" Padding="6" 
              PartChromeType="TitleAndBorder">
            <ZoneTemplate>
                <asp:DetailsView ID="DetailsView1" title="DASH BOARD" runat="server" 
    Height="127px" Width="880px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" 
                    AllowPaging="True" style="margin-bottom: 0px" 
                    EmptyDataText="NO MESSAGES TO BE DISPLAYED" 
                    onpageindexchanging="DetailsView1_PageIndexChanging" CssClass="text2">
                    <Fields>
                        <asp:BoundField DataField="fro" HeaderText="fro" SortExpression="fro" />
                        <asp:BoundField DataField="query" HeaderText="query" SortExpression="query" />
                    </Fields>
                </asp:DetailsView>
                            </ZoneTemplate>
            <MenuLabelHoverStyle ForeColor="#E2DED6" />
            <MenuLabelStyle ForeColor="White" />
            <MenuPopupStyle BackColor="#5D7B9D" BorderColor="#CCCCCC" BorderWidth="1px" 
                Font-Names="Verdana" Font-Size="0.6em" />
            <MenuVerbHoverStyle BackColor="#F7F6F3" BorderColor="#CCCCCC" 
                BorderStyle="Solid" BorderWidth="1px" ForeColor="#333333" />
            <MenuVerbStyle BorderColor="#5D7B9D" BorderStyle="Solid" BorderWidth="1px" 
                ForeColor="White" />
            <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" />
            <EmptyZoneTextStyle Font-Size="0.8em" />
            <HeaderStyle Font-Size="0.7em" ForeColor="#CCCCCC" HorizontalAlign="Center" />
            <PartChromeStyle BackColor="#F7F6F3" BorderColor="#E2DED6" Font-Names="Verdana" 
                ForeColor="White" />
            <PartStyle Font-Size="0.8em" ForeColor="#333333" />
            <PartTitleStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.8em" 
                ForeColor="White" />
        </asp:WebPartZone>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:elearningConnectionString %>" 
                    
              SelectCommand="SELECT fro, query FROM query WHERE (too = @too) AND (stat = @stat)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="too" QueryStringField="name" Type="String" />
                        <asp:Parameter DefaultValue="unread" Name="stat" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
          
    </div>
        <div id="reply form">
          <h2>REPLY FORM</h2>
          <table style="width:100%;">
              <tr>
                  <td class="style1">
                      <h2>STUDENT USERNAME</h2></td>
                  <td class="style4">
                  
                      <asp:TextBox ID="stud" runat="server" Width="400px"></asp:TextBox>
                  
              </tr>
              <tr>
                  <td class="style2">
                <h2>  REPLY </h2>
                      </td>
                  <td class="style3">
                      <asp:TextBox ID="rep" runat="server" Height="88px" TextMode="MultiLine" 
                          Width="400px"></asp:TextBox>
                  </td>
              </tr>
          <tr>
          <td>
          <asp:Button ID="Button2" runat="server" Text="REPLY" onclick="Button2_Click" />
          </td>
          <td>
          <asp:Label ID="msg" runat="server" CssClass="text2"></asp:Label></td>
          </tr>
              </table>
          
          </div>
    
    </div>
    </form>
</body>
</html>
