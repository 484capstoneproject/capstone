<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ScholarshipOpportunity.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div>
    </div>
    <asp:Label ID="LblTitle" runat="server" Text="Scholarship Opportunity"></asp:Label>
    <br />

    <br />
    <asp:Label ID="LblScholarshipName" runat="server" Text="Scholarship Name"></asp:Label>
    <asp:TextBox ID="TxtScholarshipName" runat="server"></asp:TextBox>
    <br />


    <asp:Label ID="LblDescription" runat="server" Text="Description "></asp:Label>
    <asp:TextBox ID="TxtDescription" runat="server"></asp:TextBox>
    <br />


    <asp:Label ID="LblAmount" runat="server" Text="Amount"></asp:Label>
    <asp:TextBox ID="TxtAmount" runat="server"></asp:TextBox>
    <br />
    


    <asp:Label ID="LblApplyBefore" runat="server" Text="Apply Before"></asp:Label>
    <asp:TextBox ID="TxtApplyBefore" runat="server"></asp:TextBox>
    <br />



    <br />
    <asp:Button ID="AddScholarship" runat="server" OnClick="ADD_Click" Text="Add Scholarship" />
    <asp:Button ID="EditScholarship" runat="server" OnClick="EDIT_Click" Text="Edit Scholarship" />


    <p>



</asp:Content>

