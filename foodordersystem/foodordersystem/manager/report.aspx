<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="foodordersystem.manager.report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td><span class="auto-style2"><strong>Order Details</strong></span><br />
            <br />
                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                <br />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                 Height="314px" Width="1149px">
                <Columns>
                    <asp:BoundField DataField="oid" HeaderText="order id" />
                    <asp:BoundField DataField="name" HeaderText="product name" />
                    <asp:TemplateField HeaderText="photo">
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("photo","~/manager/upload/{0}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="quantity" HeaderText="quantity" />
                    <asp:BoundField DataField="price" HeaderText="price" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
    <br />
    <br />
    <br />
    <br />
    <span class="auto-style2"><strong>Order Assigned</strong></span><br />
    <br />
                <asp:Literal ID="Literal3" runat="server"></asp:Literal>
    <br />
    <br />
<br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                 Height="314px" Width="1149px">
                <Columns>
                    <asp:BoundField DataField="oid" HeaderText="order id" />
                    <asp:BoundField DataField="prdname" HeaderText="product name" />
                    <asp:TemplateField HeaderText="photo">
                        <ItemTemplate>
                            <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("photo","~/manager/upload/{0}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="quantity" HeaderText="quantity" />
                    <asp:BoundField DataField="price" HeaderText="price" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                    <asp:BoundField DataField="name" HeaderText="Assigned To" />
                </Columns>
            </asp:GridView>
<br />
<br />
</asp:Content>
