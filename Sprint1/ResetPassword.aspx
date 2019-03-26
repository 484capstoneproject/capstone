<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
</asp:Content>

