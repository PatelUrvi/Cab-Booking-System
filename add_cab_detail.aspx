<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master_page.master" AutoEventWireup="true" CodeFile="add_cab_detail.aspx.cs" Inherits="add_cab_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Text="Cab Detail"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Cab Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_name" runat="server" Height="24px" Width="170px"></asp:TextBox>
    <br>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Please Enter Valid cab Name" ControlToValidate="txt_name" 
                    ToolTip="Please Enter Valid  Cab Name" 
                    ValidationExpression="^[a-zA-Z ][a-zA-Z ]{1,30}$"></asp:RegularExpressionValidator>
    <br>
    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Cab Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_number" runat="server" Height="24px" 
        Width="170px"></asp:TextBox>
    <br />
    
    <br />
    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Charge per km"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_km" runat="server" Height="24px" TextMode="Number" 
        Width="170px"></asp:TextBox>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Please enter valid cab number" ControlToValidate="txt_km" 
                    ToolTip="Please enter valid address" 
                    ValidationExpression="^[0-9][0-9 ]{1,10}$"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Cab Location"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="area_name" 
        DataValueField="area_name" Height="23px" Width="147px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:online_cab_booking_systemConnectionString %>" 
        SelectCommand="SELECT [area_name] FROM [tbl_area]"></asp:SqlDataSource>
    <br />
    
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_cab" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        Font-Size="Medium" Height="36px" Text="Add Detail" Width="90px" 
        onclick="btn_add_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Reset2" 
        style="font-size: medium; font-weight: bold; background-color: #CCCCCC; height: 34px; width: 90px;" 
        type="reset" value="Reset" /><br />
    <asp:Label ID="lbl_mess" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Text="List Of Cab"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="cab_id" DataSourceID="SqlDataSource3" 
        ForeColor="Black" GridLines="Vertical" onrowdeleted="GridView1_RowDeleted" 
        onrowupdated="GridView1_RowUpdated">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="cab_id" HeaderText="cab_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="cab_id" />
            <asp:BoundField DataField="cab_number" HeaderText="cab_number" 
                SortExpression="cab_number" />
            <asp:BoundField DataField="cab_name" HeaderText="cab_name" 
                SortExpression="cab_name" />
            <asp:BoundField DataField="cab_location" HeaderText="cab_location" 
                SortExpression="cab_location" />
            <asp:BoundField DataField="cab_per_km" HeaderText="cab_per_km" 
                SortExpression="cab_per_km" />
            <asp:BoundField DataField="cab_status" HeaderText="cab_status" 
                SortExpression="cab_status" />
            <asp:BoundField DataField="driver_name" HeaderText="driver_name" 
                SortExpression="driver_name" />
            <asp:BoundField DataField="driver_no" HeaderText="driver_no" 
                SortExpression="driver_no" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:online_cab_booking_systemConnectionString %>" 
        DeleteCommand="DELETE FROM [cab_detail] WHERE [cab_id] = @cab_id" 
        InsertCommand="INSERT INTO [cab_detail] ([cab_number], [cab_name], [cab_location], [cab_per_km], [cab_status], [driver_name], [driver_no]) VALUES (@cab_number, @cab_name, @cab_location, @cab_per_km, @cab_status, @driver_name, @driver_no)" 
        SelectCommand="SELECT * FROM [cab_detail]" 
        UpdateCommand="UPDATE [cab_detail] SET [cab_number] = @cab_number, [cab_name] = @cab_name, [cab_location] = @cab_location, [cab_per_km] = @cab_per_km, [cab_status] = @cab_status, [driver_name] = @driver_name, [driver_no] = @driver_no WHERE [cab_id] = @cab_id">
        <DeleteParameters>
            <asp:Parameter Name="cab_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cab_number" Type="String" />
            <asp:Parameter Name="cab_name" Type="String" />
            <asp:Parameter Name="cab_location" Type="String" />
            <asp:Parameter Name="cab_per_km" Type="Int32" />
            <asp:Parameter Name="cab_status" Type="String" />
            <asp:Parameter Name="driver_name" Type="String" />
            <asp:Parameter Name="driver_no" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cab_number" Type="String" />
            <asp:Parameter Name="cab_name" Type="String" />
            <asp:Parameter Name="cab_location" Type="String" />
            <asp:Parameter Name="cab_per_km" Type="Int32" />
            <asp:Parameter Name="cab_status" Type="String" />
            <asp:Parameter Name="driver_name" Type="String" />
            <asp:Parameter Name="driver_no" Type="String" />
            <asp:Parameter Name="cab_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
</asp:Content>

