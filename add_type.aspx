<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master_page.master" AutoEventWireup="true" CodeFile="add_type.aspx.cs" Inherits="add_type" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Add City Cab Rates</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="Add City Cab Rates"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;<br />
    <br />
          <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" 
              Text="Cab Type"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:DropDownList ID="cmb_cab_type" runat="server" Height="21px" 
        Width="167px">
              <asp:ListItem>Lux</asp:ListItem>
              <asp:ListItem>Kaali-Peeli</asp:ListItem>
              <asp:ListItem>Micro</asp:ListItem>
              <asp:ListItem>Mini</asp:ListItem>
    </asp:DropDownList>
          <br />
    <br />
          <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
              Text="Minimum Bill Charge"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txt_minbill" runat="server" Height="24px" Width="167px" 
        TextMode="Number"></asp:TextBox>
          <br />
    <br />
          <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
              Text="Free Kms"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_free_kms" runat="server" Height="24px" Width="167px" 
        TextMode="Number"></asp:TextBox>
          <br />
    <br />
          <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
              Text="Waiting Charge"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txt_waiting" runat="server" Height="24px" Width="167px" 
        TextMode="Number"></asp:TextBox>
          <br />
    <br />
          <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
              Text="Extra Per KM Charge"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txt_extra_charge" runat="server" Height="24px" 
        Width="167px" TextMode="Number"></asp:TextBox>
          <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button 
            ID="btn_add" runat="server" Font-Bold="True" Font-Size="Medium" Height="36px" 
            Text="ADD TYPE" Width="94px" BackColor="#CCCCCC" 
    onclick="btn_add_Click1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input id="Reset1" 
    style="font-size: medium; color: #000000; font-style: normal; font-weight: bold; background-color: #CCCCCC; height: 36px; width: 90px;" 
    type="reset" value="RESET" /><br />
    <asp:Label ID="lbl_mess" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Text="Already Added City Cab Rates"></asp:Label>
        <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="cab_type_id" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="cab_mode" HeaderText="cab_mode" 
                SortExpression="cab_mode" />
            <asp:BoundField DataField="cab_type" HeaderText="cab_type" 
                SortExpression="cab_type" />
            <asp:BoundField DataField="extra_per_km_charge" 
                HeaderText="extra_per_km_charge" SortExpression="extra_per_km_charge" />
            <asp:BoundField DataField="minimum_bill_charge" 
                HeaderText="minimum_bill_charge" SortExpression="minimum_bill_charge" />
            <asp:BoundField DataField="free_kms" 
                HeaderText="free_kms" SortExpression="free_kms" />
            <asp:BoundField DataField="waiting_charge" HeaderText="waiting_charge" 
                SortExpression="waiting_charge" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:online_cab_booking_systemConnectionString %>" 
        DeleteCommand="DELETE FROM [tbl_cab_type] WHERE [cab_type_id] = @cab_type_id" 
        InsertCommand="INSERT INTO [tbl_cab_type] ([cab_type], [minimum_bill_charge], [free_kms], [waiting_charge], [extra_per_km_charge], [kms]) VALUES (@cab_type, @minimum_bill_charge, @free_kms, @waiting_charge, @extra_per_km_charge, @kms)" 
        SelectCommand="SELECT * FROM [tbl_cab_type]" 
        UpdateCommand="UPDATE [tbl_cab_type] SET [cab_type] = @cab_type, [minimum_bill_charge] = @minimum_bill_charge, [free_kms] = @free_kms, [waiting_charge] = @waiting_charge, [extra_per_km_charge] = @extra_per_km_charge, [kms] = @kms WHERE [cab_type_id] = @cab_type_id">
        <DeleteParameters>
            <asp:Parameter Name="cab_type_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cab_type" Type="String" />
            <asp:Parameter Name="minimum_bill_charge" Type="Double" />
            <asp:Parameter Name="free_kms" Type="Int32" />
            <asp:Parameter Name="waiting_charge" Type="Double" />
            <asp:Parameter Name="extra_per_km_charge" Type="Double" />
            <asp:Parameter Name="kms" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cab_type" Type="String" />
            <asp:Parameter Name="minimum_bill_charge" Type="Double" />
            <asp:Parameter Name="free_kms" Type="Int32" />
            <asp:Parameter Name="waiting_charge" Type="Double" />
            <asp:Parameter Name="extra_per_km_charge" Type="Double" />
            <asp:Parameter Name="kms" Type="Int32" />
            <asp:Parameter Name="cab_type_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>

