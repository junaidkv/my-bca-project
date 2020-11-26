
<%@ Page Title="" Language="C#" MasterPageFile="~/mealdelivery/mealdelivery.Master" AutoEventWireup="true" CodeBehind="pendingorder.aspx.cs" Inherits="foodordersystem.mealdelivery.pendingorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-decoration: underline;
    }
        .auto-style3
        {
            height: 20px;
        }
        .auto-style4
        {
            height: 302px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2"><strong>Pending Orders<br />
            <br />
                <asp:Literal ID="Literal3" runat="server"></asp:Literal>
            <br />
            <br />
            </strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                 Height="244px" Width="1147px" DataKeyNames="oid" OnRowDeleting="GridView3_RowDeleting" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="oid" HeaderText="order id" />
                    <asp:BoundField DataField="name" HeaderText="product name" />
                    <asp:TemplateField HeaderText="photo">
                        <ItemTemplate>
                            <asp:Image ID="Image3" runat="server" Height="51px" Width="76px"  ImageUrl='<%# Eval("photo","~/manager/upload/{0}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="quantity" HeaderText="quantity" />
                    <asp:BoundField DataField="price" HeaderText="price" />
                    <asp:BoundField DataField="name" HeaderText="Delivery name" />
                    <asp:BoundField DataField="deliveryid" HeaderText="Delivery id" />
                    <asp:BoundField DataField="address" HeaderText="Delivery address" />
                    <asp:BoundField DataField="deliverydate" HeaderText="Delivery date" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <br />
        </td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style3">
            <strong>
            <br />
            Pending orders that are not order delivered(Expire)<br />
            <br />
                <asp:Literal ID="Literal4" runat="server"></asp:Literal>
            </strong></td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 Height="244px" Width="1147px" DataKeyNames="oid"  OnSelectedIndexChanged="GridView3_SelectedIndexChanged" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="oid" HeaderText="order id" />
                    <asp:BoundField DataField="name" HeaderText="product name" />
                    <asp:TemplateField HeaderText="photo">
                        <ItemTemplate>
                            <asp:Image ID="Image3" runat="server" Height="51px" Width="76px"  ImageUrl='<%# Eval("photo","~/manager/upload/{0}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="quantity" HeaderText="quantity" />
                    <asp:BoundField DataField="price" HeaderText="price" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
