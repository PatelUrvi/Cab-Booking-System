<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master_page.master" AutoEventWireup="true" CodeFile="offer.aspx.cs" Inherits="offer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Offer</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
        Text="Add Offer's"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Offer Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_oname" runat="server" Height="24px" Width="170px"></asp:TextBox>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Please Enter Valid Name" ControlToValidate="txt_oname" 
                    ToolTip="Please Enter Valid Name" 
                    ValidationExpression="^[a-zA-Z ][a-zA-Z ]{1,50}$"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Starting Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_sdate" runat="server" Height="24px" Width="170px" 
        TextMode="Date"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Ending Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_edate" runat="server" Height="24px" Width="170px" 
        TextMode="Date"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Promocode"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_code" runat="server" Height="24px" Width="170px"></asp:TextBox>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="Please enter valid code" ControlToValidate="txt_code" 
                    ToolTip="Please enter valid code" 
                    ValidationExpression="^[A-Z ][A-Z0-9 -_\.]{1,20}$"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Description"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_description" runat="server" Height="24px" Width="170px" 
        TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Please enter valid text" ControlToValidate="txt_description" 
                    ToolTip="Please enter valid text" 
                    ValidationExpression="^[a-zA-Z ][a-zA-Z0-9 ]{1,50}$"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Disccount Amount"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_amount" runat="server" Height="24px" Width="170px" 
        TextMode="Number"></asp:TextBox>
    &nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_add" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        Font-Size="Medium" Height="36px" Text="Add Offer" Width="90px" 
        onclick="btn_add_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Reset1" 
        style="font-size: medium; font-weight: bold; background-color: #CCCCCC; height: 34px; width: 90px;" 
        type="reset" value="Reset" /><br />
    <br />
    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="X-Large" 
        Text="Offer's"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="offer_id" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="offer_id" HeaderText="offer_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="offer_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="starting_date" HeaderText="starting_date" 
                SortExpression="starting_date" />
            <asp:BoundField DataField="ending_date" HeaderText="ending_date" 
                SortExpression="ending_date" />
            <asp:BoundField DataField="amount" HeaderText="amount" 
                SortExpression="amount" />
            <asp:BoundField DataField="promocode" HeaderText="promocode" 
                SortExpression="promocode" />
            <asp:BoundField DataField="description" HeaderText="description" 
                SortExpression="description" />
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
        DeleteCommand="DELETE FROM [tbl_offer] WHERE [offer_id] = @offer_id" 
        InsertCommand="INSERT INTO [tbl_offer] ([starting_date], [ending_date], [promocode], [description], [name], [amount]) VALUES (@starting_date, @ending_date, @promocode, @description, @name, @amount)" 
        SelectCommand="SELECT * FROM [tbl_offer]" 
        UpdateCommand="UPDATE [tbl_offer] SET [starting_date] = @starting_date, [ending_date] = @ending_date, [promocode] = @promocode, [description] = @description, [name] = @name, [amount] = @amount WHERE [offer_id] = @offer_id">
        <DeleteParameters>
            <asp:Parameter Name="offer_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="starting_date" />
            <asp:Parameter DbType="Date" Name="ending_date" />
            <asp:Parameter Name="promocode" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="amount" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="starting_date" />
            <asp:Parameter DbType="Date" Name="ending_date" />
            <asp:Parameter Name="promocode" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="amount" Type="Int32" />
            <asp:Parameter Name="offer_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>

