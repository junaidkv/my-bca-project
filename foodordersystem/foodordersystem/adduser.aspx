<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adduser.aspx.cs" Inherits="foodordersystem.adduser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 39px;
        }
        .auto-style4 {
            height: 36px;
        }
        .auto-style5 {
            height: 51px;
        }
        .auto-style6 {
            height: 39px;
            text-align: center;
            font-size: medium;
            font-family: "MV Boli";
        }
        .auto-style7 {
            height: 51px;
            text-align: center;
            font-size: medium;
            font-family: "MV Boli";
        }
        .auto-style8 {
            height: 36px;
            text-align: center;
            font-size: medium;
            font-family: "MV Boli";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2"><strong>CREATE NEW ACCOUNT</strong></td>
        </tr>
        <tr>
            <td class="auto-style6">NAME</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtname" runat="server" Height="26px" Width="158px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">EMAIL</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtemailid" runat="server" Height="26px" Width="158px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemailid" ErrorMessage="enter email address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">PHONE</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtphone" runat="server" Height="26px" Width="158px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphone" ErrorMessage="enter phone no" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">PHOTO</td>
            <td class="auto-style5">
                <asp:FileUpload ID="photo" runat="server" Height="26px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="photo" ErrorMessage="enter photo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">USER NAME</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtusername" runat="server" Height="26px" Width="158px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtusername" ErrorMessage="enter valid username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">PASSWORD</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtpassword" runat="server" Height="26px" Width="158px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpassword" ErrorMessage="enter password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3">
                <asp:Button ID="registor" runat="server" OnClick="registor_Click" Text="REGISTER" Height="36px" />
            </td>
        </tr>
    </table>
</asp:Content>
