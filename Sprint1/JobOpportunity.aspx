<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JobOpportunity.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    </div>

    <asp:Label ID="LblTitle" runat="server" Text="JOB Opportunity"></asp:Label>
    <br />
 

    <asp:Label ID="LblJobTitle" runat="server" Text="Job Title"></asp:Label>
    <asp:TextBox ID="TxtJobTitle" runat="server"></asp:TextBox>
    <br />

    <asp:Label ID="LblCareerCluster" runat="server" Text="Career Cluster "></asp:Label>
    <asp:TextBox ID="TxtCareerCluster" runat="server"></asp:TextBox>
    <br />

    <asp:Label ID="LblPaymentType" runat="server" Text="Payment Type"></asp:Label>
    <asp:TextBox ID="TxtPaymentType" runat="server"></asp:TextBox>
    <br />

    <asp:Label ID="LblDescription" runat="server" Text="Description"></asp:Label>
    <asp:TextBox ID="TxtDescription" runat="server"></asp:TextBox>
    <br />

    
    <asp:Label ID="LblJobType" runat="server" Text="Job Type"></asp:Label>
    <asp:TextBox ID="TxtJobType" runat="server"></asp:TextBox>
    <br />

    <asp:Label ID="LblAge" runat="server" Text="Over 18?"></asp:Label>
    <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>
    <br />

    <asp:Label ID="LblApplyBefore" runat="server" Text="Apply Before"></asp:Label>
    <asp:TextBox ID="TxtApplyBefore" runat="server"></asp:TextBox>
    <br />


    
    <asp:Button ID="AddJob" runat="server" OnClick="ADD_Click" Text="Add Job" />
    <asp:Button ID="EditJob" runat="server" OnClick="EDIT_Clich" Text="Edit Job" />


    <p>



</asp:Content>

