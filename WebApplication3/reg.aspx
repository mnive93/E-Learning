<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="WebApplication3.reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #reg
    {
        height: 604px;
        margin-left: 2px;
        background-color:Silver;
    }
        .style23
        {
            height: 11px;
            width: 655px;
        }
        .style29
        {
            height: 53px;
            width: 107px;
        }
        .style36
        {
            height: 60px;
            width: 107px;
        }
        .style40
        {
            height: 55px;
            width: 107px;
        }
        .style41
        {
            height: 55px;
            width: 655px;
        }
        .style42
        {
            width: 107px;
            height: 11px;
        }
        .style43
        {
            height: 60px;
            width: 655px;
        }
    </style>
    <script>
        function func() {
            alert("YOU HAVE REGISTERED SUCCESSFULLY");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="reg">

        <table style="width: 100%; height: 581px;">
            <tr>
                <td class="style40">
                    FIRST NAME*</td>
                <td class="style41">
                    <asp:TextBox ID="fname" runat="server" Height="20px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        BackColor="Black" ControlToValidate="fname" 
                        ErrorMessage="Please enter your first name" ForeColor="Teal"></asp:RequiredFieldValidator>
                    </td>
                
            </tr>
            <tr>
                <td class="style40">
                    LAST NAME</td>
                <td class="style41">
                    <asp:TextBox ID="lname" runat="server" Height="20px" Width="300px"></asp:TextBox>
                    </td>
                
            </tr>
            <tr>
                <td class="style29">
                    USERNAME*</td>
                <td class="style41">
                    <asp:TextBox ID="uname" runat="server" Height="20px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        BackColor="Black" ControlToValidate="uname" 
                        ErrorMessage="Please enter a valid user name" ForeColor="Teal"></asp:RequiredFieldValidator>
                    </td>
                            </tr>
                            <tr>
                <td class="style40">
                    PASSWORD*</td>
                <td class="style41">
                                <asp:TextBox ID="pass" TextMode="Password" runat="server" Height="20px" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    BackColor="Black" ControlToValidate="pass" ErrorMessage="Please enter password" 
                                    ForeColor="Teal"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                <td class="style36">
                    CONFIRM* PASSWORD</td>
                <td class="style43">
                    <asp:TextBox ID="conpass" TextMode="Password" runat="server" Height="20px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        BackColor="Black" ControlToValidate="conpass" 
                        ErrorMessage="Please enter your password again" ForeColor="Teal"></asp:RequiredFieldValidator>
                    </td>
                            </tr>
                            <tr>
                <td class="style36">
                    COLLEGE* NAME</td>
                <td class="style41">
                    <asp:TextBox ID="coll" runat="server" Height="20px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        BackColor="Black" ControlToValidate="coll" 
                        ErrorMessage="College name is necessary" ForeColor="Teal"></asp:RequiredFieldValidator>
                    </td>
                            </tr>
                            <tr>
                            <td class="style9">
                                DEGREE*</td>
                            <td class="style41">
                                <asp:DropDownList ID="deg" runat="server">
                                    <asp:ListItem>BE</asp:ListItem>
                                    <asp:ListItem>B-Tech</asp:ListItem>
                                    <asp:ListItem>M.SC</asp:ListItem>
                                    <asp:ListItem>B.ED</asp:ListItem>
                                    <asp:ListItem>B.Sc</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    BackColor="Black" ControlToValidate="deg" ErrorMessage="Enter a valid degree" 
                                    ForeColor="Teal"></asp:RequiredFieldValidator>
                            </td>
                            </tr>
                            <tr>
                            <td class="style9">
                                STREAM*</td>
                            <td class="style41">
                                <asp:DropDownList ID="stream" runat="server">
                                    <asp:ListItem>COMPUTER SCIENCE</asp:ListItem>
                                    <asp:ListItem>ECE</asp:ListItem>
                                    <asp:ListItem>EEE</asp:ListItem>
                                    <asp:ListItem>BME</asp:ListItem>
                                    <asp:ListItem>MECHANICAL</asp:ListItem>
                                    <asp:ListItem>CIVIL</asp:ListItem>
                                    <asp:ListItem>IT</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    BackColor="Black" ControlToValidate="stream" 
                                    ErrorMessage="Enter your stream of study" ForeColor="Teal"></asp:RequiredFieldValidator>
                            </td>
                            </tr>
                            <tr>
                            <td class="style9">EMAIL-ID*</td>
                            <td class="style41"><asp:TextBox ID="email" runat="server" Height="20px" 
                                    Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    BackColor="Black" ControlToValidate="email" 
                                    ErrorMessage="enter your email eddress" ForeColor="Teal"></asp:RequiredFieldValidator>
                    </td>
                            </tr>

<tr>
                            <td class="style42">PHONE NO</td>
                            <td class="style23"><asp:TextBox ID="phno" runat="server" Height="20px" 
                                    Width="300px"></asp:TextBox>
                    </td>
                            </tr>

<tr>
<td class="style9">
    <asp:Button ID="regbut" runat="server" Text="REGISTER" Width="149px" 
        onclick="Button1_Click" OnClientClick="func()"   />
</td>
</tr>


        </table>

</div>
</asp:Content>
