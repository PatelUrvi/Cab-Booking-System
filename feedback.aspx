<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master_page.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>view feedback</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
        Text="Feedback"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="feedback_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="feedback_id" HeaderText="feedback_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="feedback_id" />
            <asp:BoundField DataField="feedback" HeaderText="feedback" 
                SortExpression="feedback" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:online_cab_booking_systemConnectionString %>" 
    SelectCommand="SELECT * FROM [tbl_feedback]"></asp:SqlDataSource>
    <br />

</asp:Content>

