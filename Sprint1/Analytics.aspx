﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Analytics.aspx.cs" Inherits="Analytics" %>

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
  
  <style>
	  
	  body{
		  overflow: hidden;
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
   				<a class="nav-link pt-0" href="#"><img class="profile-img-nav" src="images/PBMares.png"></a>
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
  				  <td class="profile-img-box"><img class="profile-img" src="images/PBMares.png"></td>
  				  <td class="bus-name">
  				  <h2 class="bus-name-header" id="BusinessName" runat="server">PBMares</h2>
  				  <a href="BusinessProfile.aspx" <p class="btn btn-link btn-edit-profile"><i data-feather="edit" class="edit-icon"></i>Edit Profile</p></a>

  				  </td> 
				 </tr>  				
			</table>
           <asp:Button id="SignOut" type="submit" class="signout-button mr-2" runat="server" Text="Sign Out" OnClick="SignOut_Click"></asp:Button>
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

    <!-------------------- BODY STARTS --------------------->  
 			
			
		  <div class="col-10 bg-white">
			  
			  <div class=" ml-2 mt-2 row d-flex justify-content-between">
				  <h3 class="text-mainblue">Analytics Opportunites</h3>
				  <h1 class="invisible">Analytics</h1>
				  <button type="button" class="mr-3 mt-1 mb-2 signout-button signout-button:hover" id="exportBtn"><a href="#" runat="server" onServerClick="ExportToExcel">Export Excel</a></button>
			  </div>
	
			<div class='tableauPlaceholder' id='viz1554263138005' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Da&#47;Dashboard_15541665870790&#47;Dashboard2&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Dashboard_15541665870790&#47;Dashboard2' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Da&#47;Dashboard_15541665870790&#47;Dashboard2&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1554263138005');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='950px';vizElement.style.height='587px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
	
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