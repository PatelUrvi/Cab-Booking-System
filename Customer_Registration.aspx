<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer_Registration.aspx.cs" Inherits="Customer_Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
     <link href="Stlyesheet.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div class="box">
        <div class="content">
                <h1>
                    Sign Up</h1>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Name" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txt_name" CssClass="field" runat="server"></asp:TextBox>
    <br>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Please Enter Valid Name" ControlToValidate="txt_name" 
                    ToolTip="Please Enter Valid Name" 
                    ValidationExpression="^[a-zA-Z ][a-zA-Z ]{1,20}$"></asp:RegularExpressionValidator>
    <br>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Address" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txt_address" CssClass="field" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="Please enter valid address" ControlToValidate="txt_address" 
                    ToolTip="Please enter valid address" 
                    ValidationExpression="^[a-zA-Z ][a-zA-Z0-9 -_\.]{1,50}$"></asp:RegularExpressionValidator>
    <br>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" Text="State"></asp:Label>
                  <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                <asp:DropDownList ID="cmb_state" 
                    runat="server" CssClass="field"
                    style="margin-left: 0px" AutoPostBack="True" 
                    onselectedindexchanged="cmb_state_SelectedIndexChanged" 
                    AppendDataBoundItems="True" Width="403px">
                </asp:DropDownList>
                 </ContentTemplate>
                    </asp:UpdatePanel>
                <br>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" Text="city"></asp:Label>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <asp:DropDownList ID="cmb_city" CssClass="field" runat="server" AutoPostBack="True" 
                     style="margin-left: 0px" 
                    AppendDataBoundItems="True" Width="403px">
                </asp:DropDownList>
                </ContentTemplate>
                </asp:UpdatePanel>
                <br>
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Phone No" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txt_phone" CssClass="field" runat="server" TextMode="Number"></asp:TextBox>
    <br>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Phone number with 6-9 and remaing 9 digit with 0-9" 
                    ControlToValidate="txt_phone" 
                    ToolTip="Phone number with 6-9 and remaing 9 digit with 0-9" 
                    ValidationExpression="[6-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
    <br>
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Email Id (Username)" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txt_email" CssClass="field" runat="server" TextMode="Email" ></asp:TextBox>
    <br>
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Password" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txt_pass" runat="server" CssClass="field" TextMode="Password" 
                    ontextchanged="txt_pass_TextChanged" ></asp:TextBox>
    <br>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ErrorMessage="Password (UpperCase, LowerCase, Number/SpecialChar and min 8 Chars)" 
                    ControlToValidate="txt_pass" CssClass="content" 
                    ToolTip="Password (UpperCase, LowerCase, Number/SpecialChar and min 8 Chars)" 
                    ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>
    <br>
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Conform Password" Font-Names="Cambria"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_cpass" runat="server" CssClass="field" TextMode="Password" ></asp:TextBox>
    <br>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txt_pass" ControlToValidate="txt_cpass" 
                    ErrorMessage="Password Don't Match !!" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="#FF3300"></asp:CompareValidator>
                <br />
    <asp:Button ID="btn_sign_up" runat="server" Font-Bold="True" 
        Font-Size="X-Large" Text="SIGN UP" 
        CssClass="btn" Font-Names="Cambria" onclick="btn_sign_up_Click" />
    <input id="Reset2" type="reset" value="RESET" onclick="return Reset2_onclick()" 
        style="font-size: x-large; font-family: Cambria;" class="btn"  />
   
                <br>
                <asp:Label ID="lbl_mess" runat="server"></asp:Label>
         </div>
    </form>
</body>
</html>
