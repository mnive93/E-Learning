<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentlog.aspx.cs" Inherits="WebApplication3.studentlog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script runat="server">
        
        public static String GetTime(HttpContext context)
        {
            return DateTime.Now.ToString();
        }
        </script>
    <style type="text/css">

            #wrapper
{
    background-color:White;
    margin-left:200px;
    width:900px;
    height:1213px;
    margin-right: 0px;
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
                margin-left:200px;

            width:900px;
            background-color:Black;
            text-align:center;
            font-family:Gentium Basic;
            color:White;
            height: 73px;
        }
                   
        
        .style1
        {
            width: 412px;
            height: 93px;
        }
        .style2
        {
            width: 314px;
            height: 93px;
        }
        
        .style3
        {
            width: 250px;
        }
        
        .style8
        {
            width: 185px;
        }
        
        #the
        {
            height: 145px;
            margin-top: 0px;
        }
        
        #dashboard
        {
            height: 275px;
            background-color:Black;
        }
        
        .style9
        {
            width: 250px;
            height: 75px;
        }
        .style10
        {
            height: 75px;
        }
        
        .style11
        {
            width: 250px;
            height: 90px;
        }
        .style12
        {
            height: 90px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div id="wrapper">
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
<table>
<tr>
<td class="style2">
    <h4>WELCOME!!!!</h4><asp:Label ID="Name" runat="server" ></asp:Label>
</td>
<td class="style1">
    <asp:Label ID="time" runat="server" ></asp:Label>
    
</td>
<td class="style8">
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text" 
        PostBackUrl="~/student.aspx">LOGOUT</asp:LinkButton>
</td>
</tr>
</table>
<asp:Label ID="cou" runat="server" ></asp:Label>
<h2>
STUDY MATERIAL
<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cli.png" onmouseover="this.src='../hover/cli2.png';" 
                        onmouseout="this.src='../images/cli.png';" 
        onclick="ImageButton1_Click" />

</h2>    

<div id="dashboard">
<h2>DASHBOARD</h2>
    <asp:WebPartManager ID="WebPartManager1" runat="server" 
        ViewStateMode="Enabled" >
    </asp:WebPartManager>
<table>
<tr>
<td>
            <asp:DetailsView  Title="MESSAGES" ID="dv" runat="server" AutoGenerateEditButton="True" 
                AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" 
                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                CssClass="text" DataSourceID="sd" 
                EmptyDataText="You have no messages to be displayed" ForeColor="Black" 
                Height="92px" OnItemUpdating="dv_ItemUpdating" 
                onpageindexchanging="dv_PageIndexChanging" style="margin-top: 0px" 
                Width="877px" AllowPaging="True">
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
                    <asp:BoundField DataField="query" HeaderText="query" SortExpression="query" />
                    <asp:BoundField DataField="stat" HeaderText="stat" SortExpression="stat" />
                    <asp:BoundField DataField="too" HeaderText="too" SortExpression="too" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
            </asp:DetailsView>
    </td>
    </tr>
    </table>
    <asp:SqlDataSource ID="sd" runat="server" 
        ConnectionString="<%$ ConnectionStrings:elearningConnectionString2 %>" 
        SelectCommand="SELECT [ans], [query], [stat], [too] FROM [reply] WHERE (([too] = @too) AND ([stat] = @stat))"
         UpdateCommand="Update reply SET stat= @stat WHERE too=@too"
        >
        <SelectParameters>
            <asp:QueryStringParameter Name="too" QueryStringField="Uname" Type="String" />
            <asp:Parameter DefaultValue="unread" Name="stat" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="stat" />
            <asp:Parameter Name="too" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>    
<div id"query">
<h4>QUERY FORM</h4>
<table style="width: 895px; height: 232px">
<tr>
<td class="style11">
<h2>
FACULTY NAME:
</h2>
</td>
<td class="style12">
                       <asp:DropDownList ID="fac" runat="server" Height="60px" Width="319px">
                                    <asp:ListItem>David BeckerField</asp:ListItem>
                                    <asp:ListItem>Punith Malhothra</asp:ListItem>
                                    <asp:ListItem>Ian Seinfield</asp:ListItem>
                                </asp:DropDownList>
         
</td>
</tr>
<tr>
<td class="style9">
<h2>
POST YOUR QUERY HERE:
</h2>
</td>
<td class="style10">
    <asp:TextBox ID="query" TextMode="MultiLine" runat="server" Height="79px" 
        Width="453px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style3">
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/sub.png" 
        Width="120px"  onmouseover="this.src='../hover/sub2.png';" 
                        onmouseout="this.src='../images/sub.png';" 
        onclick="ImageButton2_Click" />
</td>
<td>

    <asp:Label ID="msg" runat="server" ></asp:Label>

</td>
</tr>

</table>
</div>
<div id="the">
<h2 style="height: 28px; margin-top: 55px">PERSONALIZE YOUR WORKSPACE HERE BY SELECTING YOUR FAVOURITE THEME</h2>
        <table>
        <tr>
        <td>
        
                       <asp:DropDownList ID="ddlTheme" runat="server" Height="64px" 
        Width="313px">
                                    <asp:ListItem>classic</asp:ListItem>
                                    <asp:ListItem>graffiti</asp:ListItem>
                                     <asp:ListItem>sunshine</asp:ListItem>
                                     <asp:ListItem>atlantis</asp:ListItem>
                                      <asp:ListItem>quidditch</asp:ListItem>

                                     </asp:DropDownList> 
            </td>
            <td>
                            <asp:Button ID="theme" runat="server" onclick="theme_Click" Text="CHANGE" 
                                Width="139px" />
                </td>
                           </tr>



               </table>        

</div>

    


</div>
<div id="footer">
All rights reserved to @Shikshya
</div>
    </form>
</body>
</html>
