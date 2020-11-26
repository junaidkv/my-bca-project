<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="Cartadd.aspx.cs" Inherits="foodordersystem.user.Cartadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6
        {
            width: 65%;
            height: 39px;
        }
        .auto-style10
        {
            height: 84px;
        }
        .auto-style11
        {
            width: 284px;
            height: 84px;
        }
        .auto-style12
        {
            width: 819px;
            height: 84px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    
    <table class="auto-style6">
        <tr>
            <td class="auto-style10">
                <asp:Image ID="photo" runat="server" Height="70px" Width="80px" />
            </td>
            <td class="auto-style11">
                <asp:Label ID="Label1" runat="server" Text="Name=" Font-Bold="True"></asp:Label>
                <asp:Label ID="txtname" runat="server"></asp:Label>
                <br />

                <asp:Label ID="Label2" runat="server" Text="Price=" Font-Bold="True"></asp:Label>
                <asp:Label ID="price" runat="server"></asp:Label> 
                <br />
                <asp:Label ID="Label3" runat="server" Text="Description=" Font-Bold="True"></asp:Label>
                <asp:Label ID="description" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="Button1_Click" CausesValidation="false" />
                

            </td>
            <td class="auto-style12">
                <asp:Label ID="Label5" runat="server" Text="Choose delivery location:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">
                </td>
            <td class="auto-style12">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="mycart" runat="server" Text="My cart" style="font-weight: 700"></asp:Label>
                <br />
                <br />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="margin-right: 76px" Height="106px" Width="706px" DataKeyNames="cartid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:CheckBoxList ID="CheckBoxList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList2_SelectedIndexChanged">
                                    <asp:ListItem>select all</asp:ListItem>
                                </asp:CheckBoxList>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBoxList ID="CheckBoxList3" runat="server">
                                    <asp:ListItem></asp:ListItem>
                                </asp:CheckBoxList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="cartid" HeaderText="Cartid" />
                        <asp:TemplateField HeaderText="Photo">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" 
                                    ImageUrl='<%# Eval("photo","~/manager/upload/{0}") %>'  Height="51px" Width="76px"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:Label ID="Label4" runat="server" Text="choose delivery date" Visible="False"></asp:Label>
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter the delivery date" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Purchase" OnClick="Button2_Click" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="myordr" runat="server" Text="My Orders" Visible="False" style="font-weight: 700"></asp:Label>
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="419px" Height="282px">
                    <Columns>
                        <asp:BoundField DataField="oid" HeaderText="order id" />
                        <asp:BoundField DataField="name" HeaderText="product name" />
                        <asp:TemplateField HeaderText="photo">
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server"  Height="51px" Width="76px"  ImageUrl='<%# Eval("photo","~/manager/upload/{0}") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="quantity" HeaderText="quantity" />
                        <asp:BoundField DataField="price" HeaderText="price" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
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
            <td class="auto-style10">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style10"></td>
        </tr>
    </table>
</asp:Content>
