<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master_page.master" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Text="View Booking"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="booking_id" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="booking_id" HeaderText="booking_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="booking_id" />
            <asp:BoundField DataField="taxi_name" HeaderText="taxi_name" 
                SortExpression="taxi_name" />
            <asp:BoundField DataField="pplace" HeaderText="pplace" 
                SortExpression="pplace" />
            <asp:BoundField DataField="dplace" HeaderText="dplace" 
                SortExpression="dplace" />
            <asp:BoundField DataField="ptime" HeaderText="ptime" SortExpression="ptime" />
            <asp:BoundField DataField="taxi_number" HeaderText="taxi_number" 
                SortExpression="taxi_number" />
            <asp:BoundField DataField="driver_name" HeaderText="driver_name" 
                SortExpression="driver_name" />
            <asp:BoundField DataField="driver_number" HeaderText="driver_number" 
                SortExpression="driver_number" />
            <asp:BoundField DataField="registration_id" HeaderText="registration_id" 
                SortExpression="registration_id" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:online_cab_booking_systemConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_booking]"></asp:SqlDataSource>
    <br />
</asp:Content>

