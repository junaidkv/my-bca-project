<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="edituser.aspx.cs" Inherits="foodordersystem.admin.edituser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1
        {
            height: 47px;
        }
        .auto-style2
        {
            width: 86px;
        }
        .auto-style4
        {
            width: 159px;
        }
        .auto-style5
        {
            width: 86px;
            font-weight: bold;
        }
        .auto-style7
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">Edit User Profile</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">&nbsp;</td>
            <td class="auto-style2">
                <asp:Image ID="Image1" runat="server" Height="100PX" Width="100PX"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">NAME</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="enter name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td>
                Choose Update Photo</td>
        </tr>
        <tr>
            <td class="auto-style4">EMAIL</td>
            <td>
                <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemailid" ErrorMessage="enter email address" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailid" ErrorMessage="enter valid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </td>
            <td>
                <asp:FileUpload ID="photo" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">PHONE</td>
            <td>
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphone" ErrorMessage="enter valid phone number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="OK" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="registor" runat="server" OnClick="registor_Click" Text="REGISTER" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
