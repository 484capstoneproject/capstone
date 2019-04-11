<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BusinessMessage.aspx.cs" Inherits="BusinessMessage" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>Next Step Go</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/dashboard/">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <!-- Custom Styles -->
	<link rel="stylesheet" href="css/custom.css">
  
      <style type="text/css">
          .color{
              color:#83bf4a;
          }
    </style>

  </head>

<!------------------- BODY ----------------------->
 
<body>
 <form id="form1" runat="server">
 <!-- NAVIGAION --> 
 <nav class="navbar navbar-expand-md navbar-light bg-light nav-dashboard">

	<!-- NAV BRAND -->
 
  <div>
       <img class="cued-logo-nav ml-0" src="images/cuedin-logo.svg">
       <img class="nextstepgo-logo-nav ml-0" src="images/nextstepgo.svg" href="#">
	 </div>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  
<!-- NAV LINKS -->
  <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link mr-2" href="#"><i data-feather="inbox" class=""></i></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><i data-feather="bell" class="mr-2"></i></a>
      </li>
      <li class="nav-item">
        	<div class="dropdown">
  				<button class="dropdown-toggle nav-dropdown" type="button" id="navSettingMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   				<a class="nav-link pt-0" href="#"><img class="profile-img-nav" src="images/avatar.png"></a>
  				</button>
  				<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navSettingMenu">
    				<button class="dropdown-item" type="button">Profile</button>
    				<button class="dropdown-item" type="button">Help</button>
    				<button class="dropdown-item" type="button">Account Settings</button>
    				<asp:Button class="dropdown-item" type="button" runat="server" Text="Log Out"></asp:Button>
  				</div>
			</div>
      </li>
    </ul>
  </div>
</nav>
 
  <!-- END OF NAV -->

    <div class="container-fluid vh-100">
      <div class="row vh-100">
       
      <!---------------- SIDEBAR BEGINS --------------->
        <nav class="col-2 p-0 d-none d-md-block sidebar sidebar-expanded" id="collapse-it">
             <div class="profile-bar text-center">
             <table class="profile-table text-left">
  				<tr>
  				  <td class="profile-img-box"><img class="profile-img" src="images/avatar.png"></td>
  				  <td class="bus-name">

  				  <h2 class="bus-name-header" id="BusinessName" runat="server">Martin's Electronics</h2>

  				  <a href="BusinessProfile.aspx" <p class="edit-text"><i data-feather="edit" class="edit-icon"></i>Edit Profile</p></a>
  				  </td> 
				 </tr>  				
			</table>

           <asp:Button id="SignOut" type="submit" class="btn btn-maingreen sign-out btn-sign-out" runat="server" Text="Sign Out" OnClick="SignOut_Click"></asp:Button>

           </div>
            <ul class="nav flex-column sidebar-links">
           
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="BusinessPortal.aspx">
                  <i data-feather="home"></i>
                  <span class="nav-txt">Dashboard</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="#">
                  <i data-feather="check-circle"></i>
					<span class="nav-txt">Applications</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="JobPostings.aspx">
                  <i data-feather="clipboard"></i>
					<span class="nav-txt">Job Posts</span>
                </a>
              </li>
                <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="LearningOpportunities.aspx">
                  <i data-feather="clipboard"></i>
					<span class="nav-txt">Learning Posts</span>
                </a>
              </li>
                   <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="Scholarships.aspx">
                  <i data-feather="clipboard"></i>
					<span class="nav-txt">Scholarship Posts</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="Analytics.aspx">
                  <i data-feather="pie-chart"></i>
					<span class="nav-txt">Analytics</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="Calendar.aspx">
                  <i data-feather="calendar"></i>
					<span class="nav-txt">Calendar</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side sidebar-active" href="BusinessMessage.aspx">
                  <i data-feather="inbox"></i>
					<span class="nav-txt" runat="server">Messages</span>
                    <span class="nav-txt color" runat="server" id="sidebarMessages"></span>
                </a>
              </li>
            </ul>
         <div id="sidebar-btn"><i data-feather="arrow-left-circle"></i></div>
        </nav>
        <div class="gradient-bar col"></div>

    <!-------------------- BODY STARTS --------------------->  
 			
			
		  <div class="col-10 bg-white">
			  
			  <div class=" ml-2 mt-2 row d-flex justify-content-between">
				  <h3 class="text-maingreen">
                      Business Messages&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="btnStudentMessages" runat="server" Height="43px" Text="View Student Inbox" Width="172px" class="btn btn-maingreen" OnClick="btnStudentMessages_Click"/>
                  </h3>
				  <h1 class="invisible">Messages</h1>
			  </div>
           <div class="card card-body border-secondary">

              <asp:Label ID="lblNewMessage" runat="server" Font-Bold="True" Font-Underline="True" Text="New Message: "></asp:Label>

               <br />
               <div>
               <asp:Label ID="lblFilter" runat="server" Text="Select option(s) to filter student names"></asp:Label>
               <asp:CheckBoxList ID="checkFilterNames" runat="server" OnSelectedIndexChanged="checkFilterNames_SelectedIndexChanged" AutoPostBack="true">
                   <asp:ListItem Text="School Name" Value="School"></asp:ListItem>
                   <asp:ListItem Text="Grade" Value="Grade"></asp:ListItem>
               </asp:CheckBoxList>
                   <asp:DropDownList ID="DropSchoolFilter" runat="server" Visible="false" OnSelectedIndexChanged="DropSchoolFilter_SelectedIndexChanged" AutoPostBack="true">
                       <asp:ListItem Text="--Select School To Filter--" Value=""></asp:ListItem>
                   </asp:DropDownList>

                   <asp:DropDownList ID="dropGradeFilter" runat="server" Visible="false" OnSelectedIndexChanged="dropGradeFilter_SelectedIndexChanged" AutoPostBack="true">
                       <asp:ListItem Text="--Grade--"></asp:ListItem>
                   </asp:DropDownList>

              </div>
              <asp:Label ID="lblTo" runat="server" Text="To: "></asp:Label>
              <asp:DropDownList ID="dropSendTo" runat="server" Height="33px" Width="278px" AutoPostBack="true">
                  <asp:ListItem Text="--Select Student Name--" Value =""></asp:ListItem>
              </asp:DropDownList>
              <asp:TextBox ID="txtReplyAddress" runat="server" Visible="false" Width="300px"></asp:TextBox>
               <br />
              <br />
               <asp:Label ID="lblBody" runat="server" Font-Bold="False" Text="Body:"></asp:Label>
               <asp:TextBox ID="txtBody" runat="server" Height="83px" TextMode="MultiLine" Width="353px"></asp:TextBox>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="lblOriginalMessage" runat="server" Text="--Original Message--" Visible="false"></asp:Label>
               <asp:TextBox ID="txtareaOriginal" runat="server" Height="83px" TextMode="MultiLine" Width="353px" Visible="false"></asp:TextBox>
               <br />
               <br />
               <div>
               <asp:Button ID="btnSendMessage" runat="server" Text="Send" class="btn btn-maingreen w-15" Height="44px" Width="98px" OnClick="btnSendMessage_Click"/>&nbsp;&nbsp;&nbsp; 
               <asp:Button ID="btnClear" runat="server" Text="Clear" class="btn w-15" Height="44px" Width="98px" OnClick="btnClear_Click" BackColor="Red" ForeColor="White"/>
               </div>
               <br />
               <asp:Label ID="lblMessageSent" runat="server" Text="null" Visible="False"></asp:Label>
              <br />
          </div>
              <div class="mt-5 mb-5 card card-body border-secondary">
		
							
			 <br />
              <asp:Label ID="LblSearch" runat="server" Text="Search Inbox (By Name): " Font-Bold="true" Font-Underline="true"></asp:Label>

            <br />

            <asp:TextBox ID="TextSearch" runat="server" placeholder="Job Title"></asp:TextBox>
            <br />
            <asp:Button ID="BtnSearch" class="btn btn-maingreen w-25" runat="server" Text="Filter" />
            <br />
            <asp:Button ID="BtnReset" class="btn btn-maingreen w-25" runat="server" Text="Reset" />
            <asp:label id="MessageLabel"
                forecolor="Red"
                runat="server"/>
            <asp:Label ID="LblNoDbOptions" runat="server" Text="No results found in the search" Visible="false"></asp:Label>    
			<br />
                  <%--Gridview start--%>
				<asp:Gridview id="GridView1" 
                autogeneratecolumns="False"
                onselectedindexchanged="GridView1_SelectedIndexChanged"
                OnRowDataBound="GridView1_RowDataBound"
                runat="server" DataKeyNames="StudentMessageID" CellPadding="4" ForeColor="#333333" GridLines="Horizontal" Width="912px">
                
                    <AlternatingRowStyle BackColor="White" />
                
                  
                    <Columns>
                       
                        <asp:CommandField ShowSelectButton="True" SelectText="Reply" ButtonType="Button" ControlStyle-Font-Bold="true"/>
                        
                        <asp:BoundField DataField="StudentMessageID" 
                            HeaderText="StudentMessageID" 
                            InsertVisible="False"  
                            SortExpression="StudentMessageID" />                                                              
                        <asp:BoundField DataField="StudentName" 
                            HeaderText="Student Name" 
                            SortExpression="StudentName" >
                        <ControlStyle BackColor="#000066" />
                        </asp:BoundField>
                        <asp:BoundField DataField="StudentBody" 
                            HeaderText="Body" 
                            SortExpression="StudentBody" />
                        <asp:BoundField DataField="StudentDate" 
                            HeaderText="Date" 
                            SortExpression="StudentDate" />
                        <asp:BoundField DataField="BusinessEntityID" 
                            HeaderText="BusinessEntityID" 
                            SortExpression="BusinessEntityID" 
                            readOnly="true"/>
                        <asp:BoundField DataField="BusinessRead"
                            HeaderText="Read/Unread"
                            SortExpression="BusinessRead" />
                    </Columns> 

                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <selectedrowstyle
                    forecolor="#333333"
                        font-bold="true" BackColor="#C5BBAF"/> 
                
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                
                </asp:Gridview>   
                </div>            
                 <div id="popupdiv" title="Basic modal dialog" style="display: none">
                            Student Name:
                            <label id="lblStudentName"></label>
                            <br />
                            Body:
                            <label id="lblMessageBody"></label>
                            <br />
                            Date:
                            <label id="lblDate"></label>
                        </div>

 		  </div>
 	</div>
 	
 </div>
  
</form>

   <!-- jQuery first--> 
    <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
    <!-- JQuery Easing -->
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    
    <!--Jquery flip -->
	<script src="https://cdn.rawgit.com/nnattawat/flip/master/dist/jquery.flip.min.js"></script>
    
    <!--Jquery rotate -->
	<script type="text/javascript" src="http://beneposto.pl/jqueryrotate/js/jQueryRotateCompressed.js"></script>
  

<!-- custom JS -->
   <script src="js/custom.js"></script>
   

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>
 
</body>
</html>