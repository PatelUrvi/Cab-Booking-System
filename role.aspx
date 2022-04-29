<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master_page.master" AutoEventWireup="true" CodeFile="role.aspx.cs" Inherits="role" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
        Text="Add Role"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Role Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="cmb_name" runat="server" Height="25px" Width="147px">
        <asp:ListItem Value="A">Admin</asp:ListItem>
        <asp:ListItem Value="c">Customer</asp:ListItem>
        <asp:ListItem Value="d">Driver</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_add" runat="server" Font-Bold="True" Font-Size="Medium" 
        Height="36px" onclick="btn_add_Click" Text="Add Role" Width="97px" />
    <br />

</asp:Content>

