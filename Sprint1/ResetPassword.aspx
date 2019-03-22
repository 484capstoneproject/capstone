<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Reset Password"></asp:Label>
            <br />
        </div>
        <asp:Label ID="LblNewPassword" runat="server" Text="New Password"></asp:Label>
&nbsp;<asp:TextBox ID="TxtNewPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
&nbsp;<asp:TextBox ID="TxtConfirmPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BtnSaveChanges" runat="server" Text="Save Changes" OnClick="BtnSaveChanges_Click" />
    </form>
</body>
</html>
