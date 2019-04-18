﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Archive.aspx.cs" Inherits="Archive" %>

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
	  
	<!-- Toggle Plugin -->
	 <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
     
  <style>
	  
	  html, body, nav{
		  overflow-x: hidden;
	  }
	  
	  .navbar{
		  position: sticky;
		  position: -webkit-sticky;
		  top: 0;
		  left: 0;
		  z-index: 100;
	  }
	  #collapse-it{
		 position:fixed; 
	height: 100%;
	width:30%;
	margin: 0px;  
	  }
      .color {
          color: #83bf4a;
      }  

</style>



  </head>
	
	

<!------------------- BODY ----------------------->
 
 <body class="applications-bg">
	 
	 <div> 
	 
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
        <a class="nav-link nav-border-none mr-2" href="#"><i data-feather="inbox" class=""></i></a>
      </li>
      <li class="nav-item">
        <a class="nav-link nav-border-none" href="#"><i data-feather="bell" class="mr-2"></i></a>
      </li>
      <li class="nav-item">
        	<div class="dropdown">
  				<button class="dropdown-toggle nav-dropdown" type="button" id="navSettingMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   				<a class="nav-link nav-border-none pt-0" href="#"><img class="profile-img-nav" src="images/PBMares.png"></a>
  				</button>
  				<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navSettingMenu">
    				<button class="dropdown-item" type="button">Profile</button>
    				<button class="dropdown-item" type="button">Help</button>
    				<button class="dropdown-item" type="button">Account Settings</button>
    				<button class="dropdown-item" type="button">Logout</button>
  				</div>
			</div>
      </li>
    </ul>
  </div>
</nav>
 
  <!-- END OF NAV -->

    <div class="container-fluid vh-100">
      <div class="row h-100">
       
      <!---------------- SIDEBAR BEGINS --------------->
       
        <nav class="col-2 p-0 d-none d-md-block sidebar sidebar-expanded" id="collapse-it">
            <div class="sidebar-inner position-sticky">
             <div class="profile-bar text-center">
              <table class="profile-table text-left">
  				<tr>
  				  <td class="profile-img-box"><img class="profile-img" src="images/PBMares.png"></td>
  				  <td class="bus-name">
  				  <h2 class="bus-name-header mt-3" id="BusinessName" runat="server">PB Mares</h2>
  				  
					 <button id="editprofile" class="btn btn-link btn-edit-profile pl-0">
					  <p class="edit-text"><i data-feather="edit" class="edit-icon"></i>Edit Profile</p>
					  </button>
  				  </td> 
				 </tr>  				
			</table>
           <span id="signout-btn" class="btn btn-maingreen sign-out btn-sign-out">Sign Out</span>
           </div>
            <ul class="nav flex-column sidebar-links">
           
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="BusinessPortal.aspx">
                  <i data-feather="home"></i>
                  <span class="nav-txt">Dashboard</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="Applications.aspx">
					<span class="white-icon"><i data-feather="check-circle"></i></span>
					<span class="nav-txt">Applications</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="Postings.aspx">
                 <i data-feather="clipboard"></i>
					<span class="nav-txt">Postings</span>
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
                <a class="nav-link nav-link-side" href="BusinessMessage.aspx">
                  <i data-feather="inbox"></i>
					<span class="nav-txt">Messages</span>
                    <span class="nav-txt color" runat="server" id="sidebarMessages"></span>
                </a>
              </li>
              <li class="nav-item-side sidebar-active">
                <a class="nav-link nav-link-side" href="Archive.aspx">
                  <i data-feather="archive"></i>
					<span class="nav-txt sidebartext-active">Archive</span>
                </a>
              </li>
            </ul>
         <div id="sidebar-btn"><i data-feather="arrow-left-circle"></i></div>
			</div>
        </nav>
	<!-------------------- SIDEBAR ENDS -------------------->
		  
		  
	<!-------------------- BODY STARTS --------------------->  
		  
		 <!---- Timeline ---->
		<div class="col-10 mt-4" id="applications">
		<div class="container br-8">
		<div class="row mb-3 w-100 p-2 br-8 bg-white d-flex justify-content-start">
			<span class="text-black d-inline align-center pt-2 ml-2 mr-3 font-weight-bold">Filter By:</span>
			<select class="custom-select d-inline w-auto mr-3" id="inputGroupSelect01">
 			  <option selected>Posting Type</option>
 			  <option value="1">Job Opportunity</option>
 			  <option value="2">Learning Opporunity</option>
 			  <option value="3">Scholarship</option>
 			</select>
 			<select class="custom-select d-inline w-25">
				   <option>Application Type</option>
				   <option>Offer Accepted</option>
				   <option>Offer Rejected</option>
				   <option>Application Rejected</option>
			 </select>
			 <select class="custom-select d-inline w-auto ml-3" >
 			  <option selected>Posting Title</option>
 			  <option value="1">Summer Intern</option>
 			  <option value="2">Marketing Assistant</option>
 			  <option value="3">Part Time Assistant</option>
 			  <option value="4">Marketing Shadowing</option>
 			</select>
 			<span class="text-black d-inline align-center pt-2 ml-5 mr-3 font-weight-bold">Sort By:</span>
			<div class="dropdown ml-1">
			  <a class="btn dropdown-toggle btn-mainblue-outline" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    <i data-feather="list"></i>
			  </a>
			
			  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
			    <a class="dropdown-item" href="#">A-Z</a>
			    <a class="dropdown-item" href="#">Z-A</a>
			    <a class="dropdown-item" href="#">Newest-Oldest</a>
			    <a class="dropdown-item" href="#">Oldest-Newest</a>
			  </div>
			</div>
		</div>

		<div class="row h-100 mt-4">
			
			<div class="bg-white col br-8 p-3 mr-4 mb-3 droppable" ondrop="drop(event)" id="reviewedapps" ondragover="allowDrop(event)">
						<div class="d-flex justify-content-between">
							<h3 class="text-maingreen">Archived Applications</h3>
							<div class="d-flex">
							<span class="x-search xicon"> <i data-feather="search" class="d-inline"></i></span><input type="search" class="form-control min-imput d-inline" id="archivesearch" aria-describedby="search" placeholder="Title or Keywords" >
							</div>
						</div>
						
						<ul id="sortable2" class="connectedSortable list-unstyled">
						  		<li class="ui-state-default mt-1 card br-8 app-card">
					
  					<div class="card-body br-8 p-2 pl-4 bg-light justify-content-between d-flex">
  						<div class="w-75 pt-2">
   						<p class="font-weight-bold mb-2 mt-2 app-name d-inline align-top">Jasmine Fairway</p> 
   						<span class="badge d-inline referred align-top bg-grey-50" data-toggle="tooltip" data-placement="bottom" title="James Harris Middle School">Referred By: Justin Dunkirk </span>
						<p class="mb-0 font-weight-bold active-blue app-info">Summer Intern <span class="text-black-50 font-weight-light">| Submitted: 4/9/19</span></p>
						</div>
						<div class="dropdown w-25 text-right action-drop">
						  <button class="btn dropdown-toggle mt-1 app-action-btn-grey" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   	  <i data-feather="eye"></i>
						  </button>

						</div>
  					</div>
			    	
			    	</li>
				 	<li class="ui-state-default mt-1 card br-8 app-card">
					
  					<div class="card-body br-8 p-2 pl-4 bg-light justify-content-between d-flex">
  						<div class="w-75 pt-2">
   						<p class="font-weight-bold mb-2 mt-2 app-name d-inline align-top">Mark Tesswater</p> 
   						<span class="badge d-inline referred align-top bg-grey-50" data-toggle="tooltip" data-placement="bottom" title="Lakeside Middle School">Referred By: Mary Reilley </span>
						<p class="mb-0 font-weight-bold active-blue app-info">Summer Intern <span class="text-black-50 font-weight-light">| Submitted: 4/9/19</span></p>
						</div>
						<div class="dropdown w-25 text-right action-drop">
						  <button class="btn dropdown-toggle mt-1 app-action-btn-grey" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   	  <i data-feather="eye"></i>
						  </button>

						</div>
  					</div>
			    	
			    	</li>
				    <li class="ui-state-default mt-1 card br-8 app-card">
					
  					<div class="card-body br-8 p-2 pl-4 bg-light justify-content-between d-flex">
  						<div class="w-75 pt-2">
   						<p class="font-weight-bold mb-2 mt-2 app-name d-inline align-top">Christy Greene</p> 
   						<span class="badge d-inline referred align-top bg-grey-50" data-toggle="tooltip" data-placement="bottom" title="James Harris Middle School">Referred By: Justin Dunkirk </span>
						<p class="mb-0 font-weight-bold active-blue app-info">Summer Intern <span class="text-black-50 font-weight-light">| Submitted: 4/9/19</span></p>
						</div>
						<div class="dropdown w-25 text-right action-drop">
						  <button class="btn dropdown-toggle mt-1 app-action-btn-grey" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   	  <i data-feather="eye"></i>
						  </button>

						</div>
  					</div>
			    	
			    	</li>
				 
							<li class="ui-state-default mt-1 card br-8 app-card">
  								<div class="card-body br-8 p-2 pl-4 bg-light justify-content-between d-flex">
  									<div class="w-75 pt-2">
   									<p class="font-weight-bold mb-2 mt-2 app-name d-inline align-top">Tania Prosacco</p> 
   									<span class="badge d-inline referred align-top bg-grey-50">Referred By: Justin Dunkirk </span>
									<p class="mb-0 font-weight-bold active-blue app-info">Part-Time Assistant <span class="text-black-50 font-weight-light">| Submitted: 4/10/19</span></p>
									</div>
									<div class="dropdown w-25 text-right action-drop">
									  <button class="btn dropdown-toggle mt-1 app-action-btn-grey" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									   	  <i data-feather="eye"></i>
									  </button>
			
									</div>
  								</div>
			    		   </li>
				 	<li class="ui-state-default mt-1 card br-8 app-card">
					
  					<div class="card-body br-8 p-2 pl-4 bg-light justify-content-between d-flex">
  						<div class="w-75 pt-2">
   						<p class="font-weight-bold mb-2 mt-2 app-name d-inline align-top">Angus Kassulke</p> 
   						<span class="badge d-inline referred align-top bg-grey-50">Referred By: Mary Reilley </span>
						<p class="mb-0 font-weight-bold active-blue app-info">Summer Intern <span class="text-black-50 font-weight-light">| Submitted: 4/10/19</span></p>
						</div>
						<div class="dropdown w-25 text-right action-drop">
						  <button class="btn dropdown-toggle mt-1 app-action-btn-grey" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   	  <i data-feather="eye"></i>
						  </button>

						</div>
  					</div>
			    	
			    	</li>
				    <li class="ui-state-default mt-1 card br-8 app-card">
					
  					<div class="card-body br-8 p-2 pl-4 bg-light justify-content-between d-flex">
  						<div class="w-75 pt-2">
   						<p class="font-weight-bold mb-2 mt-2 app-name d-inline align-top">Ashlynn Kessler</p> 
   						<span class="badge d-inline referred align-top bg-grey-50">Referred By: Justin Dunkirk </span>
						<p class="mb-0 font-weight-bold active-blue app-info">Summer Intern <span class="text-black-50 font-weight-light">| Submitted: 4/11/19</span></p>
						</div>
						<div class="dropdown w-25 text-right action-drop">
						  <button class="btn dropdown-toggle mt-1 app-action-btn-grey" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   	  <i data-feather="eye"></i>
						  </button>

						</div>
  					</div>
			    	
			    	</li>				    
			    	<li class="ui-state-default mt-1 card br-8 app-card">
					
  					<div class="card-body br-8 p-2 pl-4 bg-light justify-content-between d-flex">
  						<div class="w-75 pt-2">
   						<p class="font-weight-bold mb-2 mt-2 app-name d-inline align-top">Katrine Larson</p> 
   						<span class="badge d-inline referred align-top bg-grey-50">Referred By: Terrence Jenkins </span>
						<p class="mb-0 font-weight-bold active-blue app-info">Summer Intern <span class="text-black-50 font-weight-light">| Submitted: 4/11/19</span></p>
						</div>
						<div class="dropdown w-25 text-right action-drop">
						  <button class="btn dropdown-toggle mt-1 app-action-btn-grey" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   	  <i data-feather="eye"></i>
						  </button>

						</div>
  					</div>
			    	
			    	</li>
					<li class="ui-state-default mt-1 card br-8 app-card">
  					<div class="card-body br-8 p-2 pl-4 bg-light justify-content-between d-flex">
  						<div class="w-75 pt-2">
   						<p class="font-weight-bold mb-2 mt-2 app-name d-inline align-top">Anna May</p> 
   						<span class="badge d-inline referred align-top bg-grey-50">Referred By: Justin Dunkirk </span>
						<p class="mb-0 font-weight-bold active-blue app-info">Summer Intern <span class="text-black-50 font-weight-light">| Submitted: 4/13/19</span></p>
						</div>
						<div class="dropdown w-25 text-right action-drop">
						  <button class="btn dropdown-toggle mt-1 app-action-btn-grey" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   	  <i data-feather="eye"></i>
						  </button>

						</div>
  					</div>
			    	
			    	</li>
					<li class="ui-state-default mt-1 card br-8 app-card">
  					<div class="card-body br-8 p-2 pl-4 bg-light justify-content-between d-flex">
  						<div class="w-75 pt-2">
   						<p class="font-weight-bold mb-2 mt-2 app-name d-inline align-top">Eileen Hauck</p> 
   						<span class="badge d-inline referred align-top bg-grey-50">Referred By: Justin Dunkirk </span>
						<p class="mb-0 font-weight-bold active-blue app-info">Summer Intern <span class="text-black-50 font-weight-light">| Submitted: 4/14/19</span></p>
						</div>
						<div class="dropdown w-25 text-right action-drop">
						  <button class="btn dropdown-toggle mt-1 app-action-btn-grey" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   	  <i data-feather="eye"></i>
						  </button>

						</div>
  					</div>
			    	
			    	</li>
					<li class="ui-state-default mt-1 card br-8 app-card">
  					<div class="card-body br-8 p-2 pl-4 bg-light justify-content-between d-flex">
  						<div class="w-75 pt-2">
   						<p class="font-weight-bold mb-2 mt-2 app-name d-inline align-top">Chasity Harris</p> 
   						<span class="badge d-inline referred align-top bg-grey-50">Referred By: Terrence Jenkins </span>
						<p class="mb-0 font-weight-bold active-blue app-info">Summer Intern <span class="text-black-50 font-weight-light">| Submitted: 4/14/19</span></p>
						</div>
						<div class="dropdown w-25 text-right action-drop">
						  <button class="btn dropdown-toggle mt-1 app-action-btn-grey" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   	  <i data-feather="eye"></i>
						  </button>

						</div>
  					</div>
			    	
			    	</li>
													
						</ul>
			
			</div>
		</div>
	    </div>  <!---- Timeline end div tag  ---->
			
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
  
  	<!-- Muuri <script src="https://unpkg.com/muuri@0.7.1/dist/muuri.min.js"></script> -->
   
   <!-- custom JS -->
   <script src="../Sprint1/js/custom.js"></script>   
   <script src="../Sprint1/js/dragndrop.js"></script>


    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>
          
        </div>
         </div>
     </div>
</body>
</html>