<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_master_page.master" AutoEventWireup="true" CodeFile="feed_c.aspx.cs" Inherits="feed_c" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Text="Feedback"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_f" runat="server" Height="19px" TextMode="MultiLine" 
            Width="177px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_feedback" runat="server" onclick="btn_feedback_Click" 
            Text="GIVE" />
    </p>
</asp:Content>

