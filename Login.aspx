<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <link href="Stlyesheet.css" type="text/css" rel="stylesheet">
</head>
<body>
<form id="form1" runat="server">
        <div class="box">
            <div class="content">
                <h1>
                    Login Here</h1>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Username" Font-Names="Cambria"></asp:Label>
                <asp:TextBox ID="txt_uname" runat="server" CssClass="field" ></asp:TextBox>
                <br>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Password" Font-Names="Cambria"></asp:Label>
                <asp:TextBox ID="txt_pass" runat="server" CssClass="field" 
                     TextMode="Password" ontextchanged="txt_pass_TextChanged" ></asp:TextBox>
                
                <br>
                <asp:Button ID="Button1" CssClass="btn" runat="server" Text="LOG IN" 
                    CommandName="Login" onclick="Button1_Click" Width="400px" />
                <br>
                <asp:Label ID="lbl_error_mess" runat="server"></asp:Label>
                <br />
                <br>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Don&#39;t have an account?</asp:LinkButton>
                <br>
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Lost your password?</asp:LinkButton>
                <br>

        </div>
</form>
</body>
</html>