<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listViewTrial.aspx.cs" Inherits="listViewTrial" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title></title>    
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
    <div class="col-md-12 pt-1">
        <div class="card">
            <div class="card-header">
                <h3>Job Postings</h3>
            </div>
            <div class="card-body">
                <asp:ListView ID="ListView1" runat="server" GroupItemCount="4" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1" DataSourceID="SqlDataSource1">
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td></td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <div class="row text-center">
                            <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                        </div>
                    </LayoutTemplate>
                    <GroupTemplate>
                        <hr />
                        <div class="row text-center">
                            <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                        </div>
                    </GroupTemplate>
                    <ItemTemplate>
                        <div class="col-lg-3  d-flex align-items-stretch">
                            <div class="card">
                                <div class="card-header">
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("JobTitle")%>'></asp:Label>
                                </div>
                                <div class="card-body">
                                    <img src="imagens/loris-azzaro-aqua-verde.jpg" width="200" height="200" />
                                </div>
                                <div class="card-footer">
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("JobType")%>'></asp:Label>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <div class="col-lg-3 d-flex align-items-stretch">
                            <div class="card">
                                <div class="card-header">
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("JobTitle")%>'></asp:Label>
                                </div>
                                <div class="card-body">
                                    <img src="imagens/azzarohu2.jpg" width="200" height="200" />
                                </div>
                                <div class="card-footer">
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("JobType")%>'></asp:Label>
                                </div>
                            </div>
                        </div>
                    </AlternatingItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Server=sprint2.ccqrzd4fcexk.us-east-1.rds.amazonaws.com;Database=Sprint2; User ID=root; Password=careycole;" providerName="System.Data.SqlClient" SelectCommand="select * from JobPosting"></asp:SqlDataSource>
            </div>
        </div>
    </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>         </form>
</body>

</html>
