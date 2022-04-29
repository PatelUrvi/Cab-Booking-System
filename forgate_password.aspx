<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgate_password.aspx.cs" Inherits="forgate_password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgate Password</title>
    <link href="Stlyesheet.css" type="text/css" rel="stylesheet">
</head>
<form id="form1" runat="server">
        <div class="box">
            <div class="content">
                <h1>
                    Forgate Password</h1>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Name" Font-Names="Cambria"></asp:Label>
                <asp:TextBox ID="txt_name" runat="server" CssClass="field" ></asp:TextBox>
                <br>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="EmailID" Font-Names="Cambria"></asp:Label>
                <asp:TextBox ID="txt_email" runat="server" CssClass="field" 
                     TextMode="Email" ></asp:TextBox>
                
                <br />
                <br />
                <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Send Forgate Password" 
                    CommandName="Login" Width="400px" onclick="Button1_Click" />
                <br>
                <asp:Label ID="lbl_error_mess" runat="server"></asp:Label>
                <br />
                <br>
                <br>
                <br>

        </div>
</form>
</body>
</html>