<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addmanager.aspx.cs" Inherits="foodordersystem.admin.addmanager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 106%;
        }
        .auto-style2 {
            color: #FF0000;
            text-align: center;
            height: 47px;
        }
        .newStyle1 {
            font-family: "Charlemagne Std";
        }
        .newStyle2 {
            font-family: "Charlemagne Std";
        }
        .newStyle3 {
            font-size: 41px;
        }
        .newStyle4 {
            font-family: "Charlemagne Std";
        }
        .newStyle5 {
            font-family: "Charlemagne Std";
            font-size: 22px;
            font-weight: bold;
        }
        .newStyle6 {
            font-family: "Charlemagne Std";
            font-size: 19px;
        }
        .auto-style8 {
            font-family: "Charlemagne Std";
            font-size: 19px;
            text-align: center;
        }
        .newStyle7 {
            font-family: "Lithos Pro Regular";
        }
        .newStyle8 {
            font-family: "Lithos Pro Regular";
            font-size: large;
        }
        .newStyle9 {
            font-family: Gabriola;
        }
        .auto-style10 {
            color: #00FF00;
        }
        .auto-style11 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style12 {
            color: #000000;
        }
        .auto-style20 {
            font-family: MV;
            height: 50px;
            text-align: center;
            font-style: normal;
            width: 667px;
            font-size: medium;
        }
        .auto-style21 {
            text-align: center;
            height: 20px;
        }
        .auto-style25 {
            font-weight: normal;
        }
        .auto-style28 {
            text-align: left;
            height: 50px;
            font-size: medium;
        }
        .auto-style29 {
            font-family: "MV Boli";
            height: 50px;
            text-align: center;
            font-size: medium;
            width: 667px;
        }
        .auto-style30 {
            font-family: "MV Boli";
            height: 20px;
            text-align: center;
            font-size: medium;
            width: 667px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #FFFFFF">
        <tr>
            <td class="auto-style2" colspan="2">&nbsp; <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><strong class="newStyle1"><span class="newStyle9"><span class="auto-style12"><span class="auto-style11">MANAGER REGISTRATION</span></span>&nbsp;</span></strong></td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20"><em>NAME</em></td>
            <td class="auto-style28">
                <asp:TextBox ID="txtname" runat="server" BorderStyle="Solid" style="text-align: center" Height="31px" Width="195px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter the  Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><strong class="auto-style25">RESTAURANT NAME</strong></td>
            <td class="auto-style28">
                <asp:TextBox ID="txtrname" runat="server" BorderStyle="Solid" Height="31px" Width="195px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtrname" ErrorMessage="   Enter the Restaurant name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><strong class="auto-style25">ADDRESS</strong></td>
            <td class="auto-style28">
                <asp:TextBox ID="txtaddr" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" TextMode="MultiLine" Height="31px" Width="195px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddr" ErrorMessage="Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;
            </td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><strong class="auto-style25">PHONE</strong></td>
            <td class="auto-style28">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter Phone number" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtphone" runat="server" BorderStyle="Solid" Height="31px" TextMode="Phone" Width="195px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter Valid  Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><strong class="auto-style25">PINCODE</strong></td>
            <td class="auto-style28">
                <asp:TextBox ID="txtpincode" runat="server" BorderStyle="Solid" Height="31px" Width="195px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpincode" ErrorMessage="Enter Pin" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><strong class="auto-style25">EMAIL ID</strong></td>
            <td class="auto-style28">
                <asp:TextBox ID="txtemailid" runat="server" BorderStyle="Solid" Height="31px" TextMode="Email" Width="195px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemailid" ErrorMessage="Enter email id" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemailid" ErrorMessage="Enter Valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><strong class="auto-style25">USER NAME</strong></td>
            <td class="auto-style28">
                <asp:TextBox ID="txtusername" runat="server" BorderStyle="Solid" Height="31px" Width="195px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><strong class="auto-style25">PASSWORD</strong></td>
            <td class="auto-style28">
                <asp:TextBox ID="txtpassword" runat="server" BorderStyle="Solid" TextMode="Password" Height="31px" Width="195px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">CONFIRM PASSWORD</td>
            <td class="auto-style28">
                <asp:TextBox ID="Txtconformpassword" runat="server" BorderStyle="Solid" Height="31px" Width="195px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Txtconformpassword" ErrorMessage="Confirm Password" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="Txtconformpassword" ErrorMessage="Both Password must be same" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"><strong class="auto-style25">PHOTO</strong></td>
            <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="text-left">
                <asp:FileUpload ID="photo" runat="server" BorderStyle="Solid" Height="31px" Width="333px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="photo" ErrorMessage="Photo is  required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </div>
            </td>
            <td class="auto-style21">
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                <br />
                <asp:Button ID="registor" runat="server" BorderStyle="Solid" Text="REGISTER" OnClick="registor_Click" ForeColor="Black" Height="46px" Width="165px" />
                <br />
                <br />
            </td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
