<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="Messages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--    Mail Server Name:
            <asp:TextBox ID="txtMailServer" runat="server" />
            <br />--%>           <%-- UserName:
            <asp:TextBox ID="txtUserName" runat="server" />
            <br />--%>Password:
            <asp:TextBox ID="txtPassword" runat="server" TextMode = "Password" />
            <br />
            <asp:Label ID="lblincorrectPwd" runat="server" Text="Password is incorrect. Please try again" Visible="False"></asp:Label>
            <br />
            <%-- Port:
            <asp:TextBox ID="txtPort" runat="server" Text = "995" />
            <br />--%><%--            SSL:--%>
            <asp:CheckBox ID="chkSSL" runat="server" checked="true" Visible="false"/>
            <br />
            <asp:Button ID="btnReadEmails" runat="server" Text="Read Emails" OnClick = "Read_Emails" />
            <br /><hr />
            <asp:GridView ID="gvEmails" runat="server" AutoGenerateColumns = "false">
            <Columns>
                <asp:BoundField HeaderText = "From" DataField = "From" />
                <asp:HyperLinkField HeaderText = "Subject" DataNavigateUrlFields = "MessageNumber" DataNavigateUrlFormatString = "~/ShowMessage.aspx?MessageNumber={0}" DataTextField = "Subject" />
                <asp:BoundField HeaderText = "Date" DataField = "DateSent" />
            </Columns>
            </asp:GridView>

        </div>


    </form>
</body>
</html>


