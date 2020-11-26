<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="editmanager.aspx.cs" Inherits="foodordersystem.admin.editmanager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            color: #00FF00;
        }
        .newStyle1 {
            font-family: "Charlemagne Std";
        }
        .newStyle9 {
            font-family: Gabriola;
        }
        .auto-style12 {
            color: #FFFF00;
        }
        .auto-style15 {
            font-family: "MV Boli";
            text-align: left;
            width: 358px;
            font-size: medium;
        }
        .auto-style4 {
            height: 33px;
            text-align: left;
            width: 801px;
        }
        .auto-style7 {
            text-align: left;
            width: 801px;
        }
        .auto-style16 {
            font-family: "MV Boli";
            text-align: left;
            height: 35px;
            width: 358px;
            font-size: medium;
        }
        .auto-style17 {
            text-align: left;
            height: 35px;
            width: 801px;
        }
        .auto-style13 {
            font-family: "MV Boli";
            height: 39px;
            text-align: left;
            width: 358px;
            font-size: medium;
        }
        .newStyle8 {
            font-family: "Lithos Pro Regular";
            font-size: large;
        }
        .auto-style14 {
            text-align: left;
            height: 39px;
            width: 801px;
        }
        .auto-style8 {
            font-family: "Charlemagne Std";
            font-size: 19px;
            text-align: left;
        }
        .auto-style18 {
            font-size: medium;
        }
        .auto-style19 {
            font-size: medium;
            font-family: "MV Boli";
        }
        .auto-style20 {
            font-family: "MV Boli";
        }
        .auto-style21 {
            font-weight: normal;
        }
        .auto-style22 {
            font-family: "Charlemagne Std";
            font-weight: normal;
        }
        .auto-style23
        {
            font-family: "MV Boli";
            text-align: left;
            width: 358px;
            font-size: medium;
            height: 33px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #CC0000">
        <tr>
            <td class="auto-style20" colspan="2"><span class="auto-style18">&nbsp; </span> <span class="auto-style10"><span class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </span><strong class="auto-style22"><span class="auto-style20"><span class="auto-style12"><span class="auto-style18">EDIT MANAGER </span></span><span class="auto-style18">&nbsp;</span></span></strong></td>
            <td class="auto-style20">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23"><strong class="auto-style21">NAME</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="txtname" runat="server" BorderStyle="Solid" style="text-align: center"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="enter the name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">
                <asp:Image ID="Image1" runat="server" Width="58px" Height="65px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong class="auto-style21">RESTAURANT NAME</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txtrname" runat="server" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtrname" ErrorMessage="enter restaurant name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style7">
                Chose updated Photo</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong class="auto-style21">ADDRESS</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txtaddr" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddr" ErrorMessage="enter address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style7">
                <asp:FileUpload ID="photo" runat="server" BorderStyle="Solid" />
                </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong class="auto-style21">PHONE</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="txtphone" runat="server" BorderStyle="Solid"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="enter valid phone number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="OK" CausesValidation="false" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong class="auto-style21">PINCODE</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txtpincode" runat="server" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpincode" ErrorMessage="enter pincode" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"><strong class="auto-style21">EMAIL ID</strong></td>
            <td class="auto-style17">
                <asp:TextBox ID="txtemailid" runat="server" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemailid" ErrorMessage="enter email id" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemailid" ErrorMessage="enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style17">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="registor" runat="server" BorderStyle="Solid" Text="UPDATE" OnClick="registor_Click" CssClass="auto-style19" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                <br class="auto-style19" />
                <span class="auto-style19">
                <br />
                <br /></span></td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
