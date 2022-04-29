<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_master_page.master" AutoEventWireup="true" CodeFile="bookcab.aspx.cs" Inherits="bookcab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Book Cab</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Text="Cab Booking"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="From"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_from" runat="server" Height="24px" Width="167px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="To"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_to" runat="server" Height="24px" Width="167px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Check Availability"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_low" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        Height="30px" onclick="btn_low_Click" Text="LOW COST" Width="109px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_high" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        Height="30px" onclick="btn_high_Click" Text="HIGH COST" Width="109px" />
&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Taxi Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_number" runat="server" Height="24px" Width="167px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Driver Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_dname" runat="server" Height="24px" Width="167px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Taxi Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_name" runat="server" Height="24px" Width="167px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Driver Number"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_no" runat="server" Height="24px" Width="167px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Taxi Location"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_location" runat="server" Height="24px" Width="167px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Pickup Time"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_time" runat="server" Height="24px" TextMode="Time" 
        Width="167px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_mess" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btn_book_cab" runat="server" BackColor="#CCCCCC" 
        Font-Bold="True" Height="30px" onclick="btn_book_cab_Click" Text="BOOK CAB" 
        Width="144px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_cancel" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        Height="30px" Text="CANCEL" Width="109px" />
    <br />

</asp:Content>

