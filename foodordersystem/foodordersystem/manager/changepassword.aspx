<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="foodordersystem.manager.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #FFFFFF">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style5" colspan="2" rowspan="2" style="color: #800000; background-color: #FFFFCC"><strong>Change Password</strong></td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style9">Current Password</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtcpswd" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style9">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcnpswd" ErrorMessage="Current password required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style32">New PassWord</td>
        <td class="auto-style32">
            <asp:TextBox ID="txtnpswd" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnpswd" ErrorMessage="New password required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7"><strong>Confirm Password</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="txtcnpswd" runat="server"  TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtcnpswd" ControlToValidate="txtnpswd" ErrorMessage="Password missmathcning"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"></td>
        <td class="auto-style7"></td>
        <td class="auto-style7"></td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style31"></td>
        <td class="auto-style8">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change" Width="106px" />
        </td>
        <td class="auto-style8"></td>
    </tr>
</table>
</asp:Content>
