<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master_page.master" AutoEventWireup="true" CodeFile="view_bill.aspx.cs" Inherits="view_bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>View Bill</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
        Text="View Bill"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="BillId" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="BillId" HeaderText="BillId" InsertVisible="False" 
                ReadOnly="True" SortExpression="BillId" />
            <asp:BoundField DataField="TotalKm" HeaderText="TotalKm" 
                SortExpression="TotalKm" />
            <asp:BoundField DataField="offer_id" HeaderText="offer_id" 
                SortExpression="offer_id" />
            <asp:BoundField DataField="registration_id" HeaderText="registration_id" 
                SortExpression="registration_id" />
            <asp:BoundField DataField="TotalAmt" HeaderText="TotalAmt" 
                SortExpression="TotalAmt" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:online_cab_booking_systemConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_bill]"></asp:SqlDataSource>
    <br />

</asp:Content>

