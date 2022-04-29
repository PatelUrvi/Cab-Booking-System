<%@ Page Title="" Language="C#" MasterPageFile="~/Driver_master_page.master" AutoEventWireup="true" CodeFile="d_f.aspx.cs" Inherits="d_f" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
    Text="View Feedback"></asp:Label>
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
    CellPadding="3" DataKeyNames="feedback_id" DataSourceID="SqlDataSource1" 
    ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="feedback_id" HeaderText="feedback_id" 
            InsertVisible="False" ReadOnly="True" SortExpression="feedback_id" />
        <asp:BoundField DataField="feedback" HeaderText="feedback" 
            SortExpression="feedback" />
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
    SelectCommand="SELECT * FROM [tbl_feedback]"></asp:SqlDataSource>
<br />
</asp:Content>

