﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Analytics.aspx.cs" Inherits="Analytics" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Analytics</title>
  <style>
  </style>
  
  <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/dashboard/">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <!-- Custom Styles -->
	<link rel="stylesheet" href="css/custom.css">
  <style>
	  body{
		  overflow: hidden;
	  }
  </style>
  
</head>
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
    				<asp:Button class="dropdown-item" type="button" runat="server" Text="Log Out" OnClick="SignOut_Click"></asp:Button>
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
					<span class="nav-txt">Postings</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side sidebar-active" href="Analytics.aspx">
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
                <a class="nav-link nav-link-side" href="#">
                  <i data-feather="inbox"></i>
					<span class="nav-txt">Messages</span>
                </a>
              </li>
            </ul>
         <div id="sidebar-btn"><i data-feather="arrow-left-circle"></i></div>
        </nav>
        <div class="gradient-bar col"></div>
	<!-------------------- SIDEBAR ENDS -------------------->
    <!-------------------- BODY STARTS --------------------->  
 		<div class="col-10 bg-lt-grey" id="mainbody">
 			<div class="row large-analytic-row card-deck">
 				<div class="col-9 card bg-light p-0">
 					<div class="card-header data d-flex justify-content-between">
  						 <span>Profile Interactions</span> 
  					</div>
  					<div class="card-body" id="datalg">
  						<!-- THIS IS WHERE GRAPH CONTENT GOES -->
  						<p>test content a</p>
  					</div>
 				</div>
 				<div class="col-3 mr-0 card p-0 bg-dk-grey">
 					<div class="card-header data d-flex justify-content-between bg-dark">
  						 <span>Settings</span> 
  					</div>
  					<div class="card-body p-0">
 							<p class="m-3">Get a larger view of a chart or graph by clicking on the buttons below.</p>
  							<ul class="list-group dark-list">
							  <li class="list-group-item">Heat Map</li>
							  <li class="list-group-item">Data Chart</li>
							  <li class="list-group-item">Cool Graph</li>
							  <li class="list-group-item">Usless Table</li>
							</ul>
							<div class="text-center">
							<button type="button" class="m-3 btn btn-secondary btn-md mt-5 align-bottom w-75" id="exportBtn"><a href="#" runat="server" onServerClick="ExportToExcel">Export Excel</a></button>
							</div>
  					</div>
 				</div>
 			</div>
 			<div class="row sm-analytic-row card-deck">
 				<div class="col card bg-light sm-data" >
						<div class="card-header data">
  						  Heat Map
  						</div>
  						<div class="card-body" id="data1">
  						  <!-- THIS IS WHERE GRAPH CONTENT GOES -->
  						  <p>test content b</p>
  						</div> 				
  				</div>
 				<div class="col card bg-light sm-data">
 					<div class="card-header data">
  						  Data Chart
  						</div>
  						<div class="card-body" id="data2">
  						  <!-- THIS IS WHERE GRAPH CONTENT GOES -->
  						  <p>test content c</p>
  						</div>
 				</div>
 				<div class="col card bg-light sm-data mr-0 ">
  						<div class="card-header data">
  						  Cool Graph
  						</div>
  						<div class="card-body" id="data3">
  						  <!-- THIS IS WHERE GRAPH CONTENT GOES -->
  						  <p>test content d</p>
  						</div>
 				</div>
 			</div>
 		</div>
		</div>
	</div>

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
    </form>
</body>
</html>
