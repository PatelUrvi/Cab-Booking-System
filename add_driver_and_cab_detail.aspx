<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master_page.master" AutoEventWireup="true" CodeFile="add_driver_and_cab_detail.aspx.cs" Inherits="add_driver_and_cab_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Add Driver Detail</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
        Text="Add Driver Details"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Driver Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_dname" runat="server" Height="24px" Width="170px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Please Enter Valid Name" ControlToValidate="txt_dname" 
                    ToolTip="Please Enter Valid Name" 
                    ValidationExpression="^[a-zA-Z ][a-zA-Z ]{1,20}$"></asp:RegularExpressionValidator>
    <br>
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Address"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_address" runat="server" Height="24px" TextMode="MultiLine" 
        Width="172px"></asp:TextBox>
&nbsp;
    <br />
     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="Please enter valid address" ControlToValidate="txt_address" 
                    ToolTip="Please enter valid address" 
                    ValidationExpression="^[a-zA-Z ][a-zA-Z0-9 -_\.]{1,50}$"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Email Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_emailid" runat="server" Height="24px" TextMode="Email" 
        Width="170px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Phone No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_phno" runat="server" Height="24px" TextMode="Phone" 
        Width="170px"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Phone number with 6-9 and remaing 9 digit with 0-9" 
                    ControlToValidate="txt_phno" 
                    ToolTip="Phone number with 6-9 and remaing 9 digit with 0-9" 
                    ValidationExpression="[6-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Upload Driver Photo"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" Width="248px" />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_cab" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        Font-Size="Medium" Height="36px" Text="Add Detail" Width="90px" 
        onclick="btn_add_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
        ID="btn_cab_detail" runat="server" Font-Bold="True" Font-Size="Medium" 
        Height="36px" onclick="btn_cab_detail_Click" Text="Add Cab Detail" 
        BackColor="#CCCCCC" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Reset2" 
        style="font-size: medium; font-weight: bold; background-color: #CCCCCC; height: 34px; width: 90px;" 
        type="reset" value="Reset" /><br />
    <asp:Label ID="lbl_mess" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Text="List Of Driver"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="driver_id" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Vertical" onrowdeleted="GridView1_RowDeleted1" 
        onrowupdated="GridView1_RowUpdated1">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="driver_id" HeaderText="driver_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="driver_id" />
            <asp:BoundField DataField="driver_name" HeaderText="driver_name" 
                SortExpression="driver_name" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" 
                SortExpression="email_id" />
            <asp:BoundField DataField="phone_no" HeaderText="phone_no" 
                SortExpression="phone_no" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
            <asp:ImageField DataImageUrlField="driver_image">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
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
        DeleteCommand="DELETE FROM [tbl_driver] WHERE [driver_id] = @driver_id" 
        InsertCommand="INSERT INTO [tbl_driver] ([driver_name], [address], [email_id], [phone_no], [status], [driver_image]) VALUES (@driver_name, @address, @email_id, @phone_no, @status, @driver_image)" 
        SelectCommand="SELECT * FROM [tbl_driver]" 
        UpdateCommand="UPDATE [tbl_driver] SET [driver_name] = @driver_name, [address] = @address, [email_id] = @email_id, [phone_no] = @phone_no, [status] = @status, [driver_image] = @driver_image WHERE [driver_id] = @driver_id">
        <DeleteParameters>
            <asp:Parameter Name="driver_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="driver_name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="phone_no" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="driver_image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="driver_name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="phone_no" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="driver_image" Type="String" />
            <asp:Parameter Name="driver_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>

