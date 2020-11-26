<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="foodordersystem.admin.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <b>Managers List</b></p>
<table class="auto-style1">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="lid" OnRowDeleting="GridView1_RowDeleting" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="117px" Width="703px">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="NAME" />
                    <asp:BoundField DataField="restaurantname" HeaderText="RESTAURANT NAME" />
                    <asp:BoundField DataField="address" HeaderText="ADDRESS" />
                    <asp:BoundField DataField="phone" HeaderText="PHONE" />
                    <asp:BoundField DataField="pincode" HeaderText="PINCODE" />
                    <asp:BoundField DataField="emailid" HeaderText="EMAIL" />
                    <asp:TemplateField HeaderText="PHOTO">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server"  Height="57px" Width="76px" ImageUrl='<%# Eval("photo","~/admin/upload/{0}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("mid") %>' OnClick="LinkButton1_Click">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
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
    <tr>
        <td><b>User List</b>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="lid" OnRowDeleting="GridView2_RowDeleting" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="699px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="167px">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="NAME" />
                    <asp:BoundField DataField="emailid" HeaderText="EMAIL" />
                    <asp:BoundField DataField="phone" HeaderText="PHONE" />
                    <asp:TemplateField HeaderText="PHOTO">
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="57px" Width="76px" ImageUrl='<%# Eval("photo","~/user/upload/{0}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("cid") %>' OnClick="LinkButton2_Click">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
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
    <tr>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
