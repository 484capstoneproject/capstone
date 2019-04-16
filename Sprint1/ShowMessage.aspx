<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowMessage.aspx.cs" Inherits="ShowMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        From: <asp:Label ID="lblFrom" runat="server" Text="" />
        <br />
        Subject: <asp:Label ID="lblSubject" runat="server" Text="" />
        <br />
        Body: <asp:Label ID="lblBody" runat="server" Text="" />
        </div>
        <br /><br />
        <div>
            <asp:Button ID="btnReply" Text="Reply" runat="server" OnClick="btnReply_Click"/>
        </div>
        <div>
            <asp:Label ID="lblSubjectSend" Text="Subject: " runat="server" Visible="false"></asp:Label><asp:TextBox ID="txtSubjectSend" runat="server" Visible="false"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblBodySend" Text="Body: " runat="server" Visible="false"></asp:Label><textarea id="txtareaBodySend" runat="server" visible="false"></textarea>
        </div>
        <br /><br />
        <div>
            <asp:Button ID="btnSendEmail" Text="Send Reply" runat="server" Visible="false" OnClick="btnSendEmail_Click" CausesValidation="false"/>
        </div>
        <div>
            <asp:Label ID="lblSuccessfulSent" Text="Reply successfully sent" runat="server" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>