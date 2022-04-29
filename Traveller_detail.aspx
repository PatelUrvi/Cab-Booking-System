<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_master_page.master" AutoEventWireup="true" CodeFile="Traveller_detail.aspx.cs" Inherits="Traveller_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Traveller Detail</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
        Text="Traveller's Details"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Name "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="txt_name" runat="server" Height="24px" Width="167px"></asp:TextBox>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Please Enter Valid Name" ControlToValidate="txt_name" 
                    ToolTip="Please Enter Valid Name" 
                    ValidationExpression="^[a-zA-Z ][a-zA-Z ]{1,20}$"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Phone No"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_no" runat="server" Height="24px" Width="167px"></asp:TextBox>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Phone number with 6-9 and remaing 9 digit with 0-9" 
                    ControlToValidate="txt_no" 
                    ToolTip="Phone number with 6-9 and remaing 9 digit with 0-9" 
                    ValidationExpression="[6-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Email Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
        ID="txt_id" runat="server" Height="24px" Width="167px" TextMode="Email"></asp:TextBox>
&nbsp;<br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        Font-Size="Large" onclick="Button1_Click" Text="Book Now" 
    Height="36px" Width="103px" />
    <br />
    <br />
    <br />

</asp:Content>

