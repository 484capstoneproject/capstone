<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

         <div>
   
        <asp:Label ID="Label1" runat="server" Text="Recover password with: "></asp:Label>
      
        <br />
        <br />
        <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox TextMode="Email" ID="TxtEmail" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="OR"></asp:Label>
        <br />
        <asp:Label ID="LblUsername" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btn_send" runat="server" onclick="btn_send_Click" Text="Send" />
        <asp:Label ID="lbl_msg" runat="server"></asp:Label>       
   
    </div>

</asp:Content>

