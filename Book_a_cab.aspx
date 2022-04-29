<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_master_page.master" AutoEventWireup="true" CodeFile="Book_a_cab.aspx.cs" Inherits="Book_a_cab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Book A Cab</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Candara" 
        Font-Size="XX-Large" Text="Book A Cab"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Choose City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="com_city" runat="server" Height="24px" Width="204px" 
        AppendDataBoundItems="True" AutoPostBack="True" 
        onselectedindexchanged="com_city_SelectedIndexChanged">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Charges Summary"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Choose Cab Type"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="com_type" 
        runat="server" Height="24px" Width="204px" 
        onselectedindexchanged="com_type_SelectedIndexChanged">
        <asp:ListItem Value="-1">select type</asp:ListItem>
        <asp:ListItem>Lux</asp:ListItem>
        <asp:ListItem>Kaali-Peeli</asp:ListItem>
        <asp:ListItem>Micro</asp:ListItem>
        <asp:ListItem>Mini</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Min Bill Charge"></asp:Label>
    <asp:Label ID="lbl_min" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Pickup Area"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="com_parea" runat="server" Height="24px" Width="204px" 
        AppendDataBoundItems="True" AutoPostBack="True">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Free Kms"></asp:Label>
    <asp:Label ID="lbl_free" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Drop Area"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_darea" runat="server" Width="204px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Waiting Charge"></asp:Label>
    <asp:Label ID="lbl_waiting" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Pickup Date"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_date" runat="server" Height="24px" TextMode="Date" 
        Width="204px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Extra Per Km"></asp:Label>
&nbsp;<asp:Label ID="lbl_extra" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Drop Date"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_ddate" runat="server" Height="24px" TextMode="Date" 
        Width="204px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Pickup Time"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_time" runat="server" Height="24px" TextMode="Time" 
        Width="204px"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_mess" runat="server"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_detail" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        Font-Names="Cambria" Font-Size="Medium" onclick="btn_detail_Click" 
        Text="Traveller's Detail" Height="36px" Width="150px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Reset1" 
        style="font-size: medium; font-weight: bold; background-color: #CCCCCC; width: 75px; height: 36px;" 
        type="reset" value="Reset" /><br />
    <br />

</asp:Content>

