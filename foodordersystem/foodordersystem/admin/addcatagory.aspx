<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addcatagory.aspx.cs" Inherits="foodordersystem.admin.addcatagory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2"><strong>ADD CATAGORY</strong></td>
        </tr>
        <tr>
            <td>CATAGORY NAME<asp:TextBox ID="txtcatagoryname" runat="server" OnTextChanged="txtcatagoryname_TextChanged" style="text-align: left; margin-left: 31px" Width="238px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcatagoryname" ErrorMessage="Please enter the category name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" style="height: 35px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
