<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LearningOpportunity.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    </div>
    <asp:Label ID="LblTitle" runat="server" Text="Learning Opportunity"></asp:Label>
    <br />
    <br />
    <asp:Label ID="LblLearningTitle" runat="server" Text="Learning Title"></asp:Label>
    <asp:TextBox ID="TxtLearningTitle" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LblCareerCluster" runat="server" Text="Career Cluster "></asp:Label>
    <asp:TextBox ID="TxtCareerCluster" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LblDescription" runat="server" Text="Description"></asp:Label>
    <asp:TextBox ID="TxtDescription" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="LblDuration" runat="server" Text="Duration"></asp:Label>
    <asp:TextBox ID="TxtDuration" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="LblApplyBefore" runat="server" Text="Apply Before"></asp:Label>
    <asp:TextBox ID="TxtApplyBefore" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="LblLearningType" runat="server" Text="Learning Type"></asp:Label>
    <asp:TextBox ID="TxtLearningType" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="AddLearning" runat="server" OnClick="ADD_Click" Text="Add Learning" />
    <asp:Button ID="EditLearning" runat="server" OnClick="EDIT_Click" Text="Edit Learning" />


    <p>



</asp:Content>

