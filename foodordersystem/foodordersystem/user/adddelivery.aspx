<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="adddelivery.aspx.cs" Inherits="foodordersystem.user.adddelivery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 763px;
        }
        .auto-style2 {
            width: 246px;
            height: 32px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 327px;
            height: 30px;
        }
        .auto-style8 {
            height: 32px;
        }
        .auto-style9 {
            width: 327px;
            height: 32px;
        }
        .auto-style10 {
            height: 33px;
        }
        .auto-style11 {
            width: 327px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="2">ADD DELIVERY&nbsp; ADDRESS</td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="items" runat="server" Text="ITEM"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:Label ID="txtitem" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">
            <asp:Label ID="totalprice" runat="server" Text="TOTAL PRICE"></asp:Label>
        </td>
        <td class="auto-style11">
            <asp:Label ID="txttotalprice" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            </td>
        <td class="auto-style7">
            </td>
    </tr>
    <tr>
        <td class="auto-style6">NAME</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtname" runat="server" Height="25px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="enter name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">ADDRESS</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress" ErrorMessage="enter address" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
 <%--   <tr>
        <td class="auto-style6">LOCATION</td>
        <td class="auto-style7">
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </td>
    </tr>--%>
    <tr>
        <td class="auto-style6">PINCODE</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpincode" ErrorMessage="enter pincode" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">PHONE</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtphone" ErrorMessage="enter contact number" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="enter valid Contact number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">EMAIL</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemailid" ErrorMessage="enter email" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemailid" ErrorMessage="enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7">
            <asp:Button ID="add" runat="server" OnClick="add_Click" Text="ADD" />
        </td>
    </tr>
</table>
</asp:Content>
