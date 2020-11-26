<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="editproduct.aspx.cs" Inherits="foodordersystem.manager.editproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="text-justify">NAME<br /></td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Height="28px" Width="154px" BorderColor="#999999"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="enter the name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>PRICE<br /></td>
        <td>
            <asp:TextBox ID="txtprice" runat="server" Height="28px" Width="154px" BorderColor="#999999"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtprice" ErrorMessage="enter prize" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">DESCRIPTION<br /></td>
        <td class="auto-style3">
            <asp:TextBox ID="txtdescription" runat="server" TextMode="MultiLine" Width="154px" BorderColor="#999999"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdescription" ErrorMessage="enter description" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
    <%--<form id="form2" runat="server">--%>
        <table class="auto-style1">
    <tr style="page-break-inside: avoid;">
        <td>CATEGORY<br /></td>
        <td>
            <asp:DropDownList ID="txtcategory" runat="server" OnSelectedIndexChanged="txtcategory_SelectedIndexChanged" Height="43px" Width="154px">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcategory" ErrorMessage="enter category" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
</table>
    <div>
    
    </div>
   <%-- </form>--%>
            <br /></td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="registor" runat="server" OnClick="registor_Click" Text="REGISTER" Height="38px" BorderColor="#333333" />
        </td>
    </tr>
</table>
<table class="nav-justified">
    <tr>
        <td>photo</td>
        <td>
            <asp:FileUpload ID="photo" runat="server" BorderColor="#999999" />
            <asp:Image ID="Image1" runat="server" Width="41px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="OK" />
            </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
</table>
</asp:Content>
