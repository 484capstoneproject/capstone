<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobPostings.aspx.cs" Inherits="JobPostings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="LblJobPostings" runat="server" Text="Job Postings"></asp:Label>
        <br />
        <br />
        <asp:Label ID="LblJobTitle" runat="server" Text="Job Title "></asp:Label>
        <asp:TextBox ID="TxtJobTitle" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="LblCareerCluster" runat="server" Text="Career Cluster "></asp:Label>
        <asp:TextBox ID="TxtCareerCluster" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="LblJobExplain" runat="server" Text="Job Explanation"></asp:Label>
&nbsp;<textarea id="TxtJobExplain" cols="20" name="S1" rows="2" runat="server"></textarea></p>
        <p>
            <asp:Label ID="LblRequirements" runat="server" Text="Requirements"></asp:Label>
&nbsp;<textarea id="TxtRequirements" cols="20" name="S2" rows="2" runat="server"></textarea></p>
        <p>
            <asp:Label ID="LblDatePosted" runat="server" Text="Date Posted"></asp:Label>
&nbsp;<asp:TextBox ID="TxtDatePosted" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create" />
        </p>
    </form>
</body>
</html>
