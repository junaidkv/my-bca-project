<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="foodordersystem.user.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
        OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="964px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("photo","~/manager/upload/{0}") %>'
                            height="200px" Width="200px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td style="margin-left: 120px">
                        <asp:Label ID="txtname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Description</td>
                    <td style="margin-left: 120px" class="auto-style2">
                        <asp:Label ID="txtdescription" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td style="margin-left: 120px">
                        <asp:Label ID="txtprice" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Restaurant_Name"></asp:Label>
                    </td>
                    <td style="margin-left: 120px">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("restaurantname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="addtocart" runat="server" 
                            CommandArgument='<%# Eval("pid") %>' OnClick="Button1_Click" Text="Add  to Cart" />
                    </td>
                    <td style="margin-left: 120px">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
