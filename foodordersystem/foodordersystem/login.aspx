<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="foodordersystem.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
            text-align: center;
            color: #FFFF00;
            text-decoration: underline;
            height: 52px;
        }
        .newStyle1 {
            font-family: 8514oem;
        }
        .newStyle2 {
            font-size: 25px;
        }
        .auto-style3 {
            font-size: 25px;
            font-weight: bold;
            height: 39px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-size: 25px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style6 {
            font-size: medium;
            font-weight: bold;
            text-align: center;
        }
        .auto-style7 {
            height: 39px;
        }
        .auto-style8 {
            font-size: medium;
            font-weight: bold;
            text-align: center;
            height: 36px;
        }
        .auto-style9 {
            text-align: center;
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #FFFFFF; font-family: 'Nirmala UI'">
        <tr>
            <td class="auto-style2" colspan="2"><strong>Login Page</strong></td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">USER NAME</td>
            <td class="auto-style9">
                &nbsp;&nbsp;
                <asp:TextBox ID="txtusername" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtusername" ErrorMessage="username is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9">
                <asp:HiddenField ID="HiddenField2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">PASSWORD</td>
            <td class="auto-style4" style="margin-left: 40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtpassword" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forgotpassword.aspx">forgote password</asp:HyperLink>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpassword" ErrorMessage="password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4" style="margin-left: 40px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4" style="margin-left: 40px">
                <asp:Button ID="txtlogin" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="34px" OnClick="txtlogin_Click" Text="login" Width="104px" />
&nbsp; </td>
            <td class="auto-style4" style="margin-left: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4" style="margin-left: 40px">
                <asp:HyperLink ID="createaccount" runat="server" NavigateUrl="~/adduser.aspx">create account ?</asp:HyperLink>
            </td>
            <td class="auto-style4" style="margin-left: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td style="margin-left: 40px" class="auto-style7"></td>
            <td style="margin-left: 40px" class="auto-style7"></td>
        </tr>
    </table>
</asp:Content>
