<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BusinessPortal.aspx.cs" Inherits="BusinessPortal" %>

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

    <link rel="stylesheet" href="css/dashboard-testing.css">
  
  <style>

      .number-dashboard{
          font-size: 60px;
          text-align: center;
      }
	  
	  body{
		  overflow: hidden;
	  }
      .number-label{
          font-size: 16px;
      }
      .color {
          color: #83bf4a;
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
                <a class="nav-link nav-link-side sidebar-active" href="BusinessPortal.aspx">
                  <span class="white-icon"></span><i data-feather="home"></i></span>
                  <span class="nav-txt sidetext-active">Dashboard</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="Applications.aspx">
                  <i data-feather="check-circle"></i>
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
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="Archive.aspx">
                    <i data-feather="archive"></i>
				    <span class="nav-txt">Archive</span>
                </a>
            </li>
            </ul>
         <div id="sidebar-btn"><i data-feather="arrow-left-circle"></i></div>
        </nav>
        <div class="gradient-bar col"></div>
	<!-------------------- SIDEBAR ENDS -------------------->
    <!-------------------- BODY STARTS --------------------->  
 		<div class="col-10 bg-lt-grey" id="mainbody">
			<div class="row h-85">
 				<div class="col-8 bg-white posting-block">
 				<h2 class= "mt-4">Postings</h2>
 					<div class="accordion" id="accordionExample">
  						<div class="card">
  						  	  <div class="card-header d-flex justify-content-between header-collapse" id="headingOne">
 						    <div class= "d-inline">
 						    	<h2 class="mb-0 job-title d-inline">Summer Intern</h2>
 						    	<p class="submitted-text">Posted: January 28 at 6:15 p.m.</p>
 						    </div>
						    <div class="d-inline">
						      	<i class="offwhite-icon" data-feather="edit"></i>
 						      	<button class="btn btn-link collapsed collapse-icon" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
 						        	<i data-feather="arrow-down-circle"></i>
 						      	</button>
 						    </div> 						  
 						  </div>
						<!---- CARD ONE ---->
  						  <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
  						    <div class="card-body">
  						      <table class="table table-striped">
  								  <tbody>
   									 <tr>
   									   <td scope="row align-middle">
   									   <h6 class="d-inline pt-1">Anna Smith </h6> <span class="badge badge-secondary new-badge">New</span>
   									   <p class="submitted-text">Applied: February 12 at 8:42 p.m.</p>
   									   </td>
   									   <td class="text-right">
										 <button type="button" class="btn btn-primary view-app-btn" data-toggle="button" aria-pressed="false" autocomplete="off">
 									   	    View Application
 									   	 </button>
  									   </td>
   									 </tr>
   									 <tr>
   									   <th scope="row">
   									   James Kline
   									   <p class="submitted-text">Applied: February 7 at 3:27 p.m.</p>
   									   </th>
   									   <td class="text-right">
										 <button type="button" class="btn btn-primary view-app-btn" data-toggle="button" aria-pressed="false" autocomplete="off">
 									   	    View Application
 									   	 </button>
  									   </td>
   									 </tr>
   									 <tr>
   									   <th scope="row">
   									   Edward Phearson
   									   <p class="submitted-text">Applied: January 31 at 7:55 a.m.</p>
   									   </th>
   									   <td class="text-right">
										 <button type="button" class="btn btn-primary view-app-btn" data-toggle="button" aria-pressed="false" autocomplete="off">
 									   	    View Application
 									   	 </button>
  									   </td>
   									 </tr>
  								 </tbody>
							  </table>
  						    </div>
  						  </div>
  						</div>
  					<!-----CARD TWO ----->
 						<div class="card">
 						  <div class="card-header d-flex justify-content-between header-collapse" id="headingTwo">
 						    <div class= "d-inline">
 						    	<h2 class="mb-0 job-title d-inline">Part-Time Designer</h2>
 						    	<p class="submitted-text">Posted: February 9 at 11:58 a.m.</p>
 						    </div>
						    <div class="d-inline">
						      	<i class="offwhite-icon" data-feather="edit"></i>
 						      	<button class="btn btn-link collapsed collapse-icon" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
 						        	<i data-feather="arrow-down-circle"></i>
 						      	</button>
 						    </div> 						  
 						  </div>
 						  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
 						    <div class="card-body">
 						      <table class="table table-striped">
  								  <tbody>
   									 <tr>
   									   <td scope="row align-middle">
   									   <h6 class="d-inline pt-1">Anna Smith </h6> <span class="badge badge-secondary new-badge">New</span>
   									   <p class="submitted-text">Applied: February 12 at 8:42 p.m.</p>
   									   </td>
   									   <td class="text-right">
										 <button type="button" class="btn btn-primary view-app-btn" data-toggle="button" aria-pressed="false" autocomplete="off">
 									   	    View Application
 									   	 </button>
  									   </td>
   									 </tr>
   									 <tr>
   									   <th scope="row">
   									   James Kline
   									   <p class="submitted-text">Applied: February 7 at 3:27 p.m.</p>
   									   </th>
   									   <td class="text-right">
										 <button type="button" class="btn btn-primary view-app-btn" data-toggle="button" aria-pressed="false" autocomplete="off">
 									   	    View Application
 									   	 </button>
  									   </td>
   									 </tr>
   									 <tr>
   									   <th scope="row">
   									   Edward Phearson
   									   <p class="submitted-text">Applied: January 31 at 7:55 a.m.</p>
   									   </th>
   									   <td class="text-right">
										 <button type="button" class="btn btn-primary view-app-btn" data-toggle="button" aria-pressed="false" autocomplete="off">
 									   	    View Application
 									   	 </button>
  									   </td>
   									 </tr>
  								 </tbody>
							  </table>
 						    </div>
 						  </div>
 						</div>
 					<!------ CARD THREE ------>
 						<div class="card">
 						  	  <div class="card-header d-flex justify-content-between header-collapse" id="headingThree">
 						    <div class= "d-inline">
 						    	<h2 class="mb-0 job-title d-inline">PR Shadowing</h2>
 						    	<p class="submitted-text">Posted: January 28 at 6:15 p.m.</p>
 						    </div>
						    <div class="d-inline">
						      	<i class="offwhite-icon" data-feather="edit"></i>
 						      	<button class="btn btn-link collapsed collapse-icon" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
 						        	<i data-feather="arrow-down-circle"></i>
 						      	</button>
 						    </div> 						  
 						  </div>
 						  <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
 						    <div class="card-body">
 						      <table class="table table-striped">
  								  <tbody>
   									 <tr>
   									   <td scope="row align-middle">
   									   <h6 class="d-inline pt-1">Anna Smith </h6> <span class="badge badge-secondary new-badge">New</span>
   									   <p class="submitted-text">Applied: February 12 at 8:42 p.m.</p>
   									   </td>
   									   <td class="text-right">
										 <button type="button" class="btn btn-primary view-app-btn" data-toggle="button" aria-pressed="false" autocomplete="off">
 									   	    View Application
 									   	 </button>
  									   </td>
   									 </tr>
   									 <tr>
   									   <td scope="row align-middle">
   									   <h6 class="d-inline pt-1">Anna Smith </h6> <span class="badge badge-secondary new-badge">New</span>
   									   <p class="submitted-text">Applied: February 12 at 8:42 p.m.</p>
   									   </td>
   									   <td class="text-right">
										 <button type="button" class="btn btn-primary view-app-btn" data-toggle="button" aria-pressed="false" autocomplete="off">
 									   	    View Application
 									   	 </button>
  									   </td>
   									 </tr>
   									 <tr>
   									   <td scope="row align-middle">
   									   <h6 class="d-inline pt-1">Anna Smith </h6> <span class="badge badge-secondary new-badge">New</span>
   									   <p class="submitted-text">Applied: February 12 at 8:42 p.m.</p>
   									   </td>
   									   <td class="text-right">
										 <button type="button" class="btn btn-primary view-app-btn" data-toggle="button" aria-pressed="false" autocomplete="off">
 									   	    View Application
 									   	 </button>
  									   </td>
   									 </tr>
   									 <tr>
   									   <td scope="row align-middle">
   									   <h6 class="d-inline pt-1">Anna Smith </h6> <span class="badge badge-secondary new-badge">New</span>
   									   <p class="submitted-text">Applied: February 12 at 8:42 p.m.</p>
   									   </td>
   									   <td class="text-right">
										 <button type="button" class="btn btn-primary view-app-btn" data-toggle="button" aria-pressed="false" autocomplete="off">
 									   	    View Application
 									   	 </button>
  									   </td>
   									 </tr>
   									 <tr>
   									   <th scope="row">
   									   James Kline
   									   <p class="submitted-text">Applied: February 7 at 3:27 p.m.</p>
   									   </th>
   									   <td class="text-right">
										 <button type="button" class="btn btn-primary view-app-btn" data-toggle="button" aria-pressed="false" autocomplete="off">
 									   	    View Application
 									   	 </button>
  									   </td>
   									 </tr>
   									 <tr>
   									   <th scope="row">
   									   Edward Phearson
   									   <p class="submitted-text">Applied: January 31 at 7:55 a.m.</p>
   									   </th>
   									   <td class="text-right">
										 <button type="button" class="btn btn-primary view-app-btn" data-toggle="button" aria-pressed="false" autocomplete="off">
 									   	    View Application
 									   	 </button>
  									   </td>
   									 </tr>
  								 </tbody>
							  </table>
 						    </div>
 						  </div>
 						</div>
				</div>
 				</div>
 				<div class="col-4 h-300">
 					<div class="col-12 bg-white h-60">
                         <div class="justify-content-between pt-3 mb-3">
 						<h2 class= "pt-4 mr-4 d-inline">Analytics</h2>
                         <a href="Analytics.aspx" class="signout-button signout-button:hover">View All Analytics</a>
                         </div>
                    <table class="table table-bordered ">
                        <tbody class="tbody">
                            <tr class="tr">
                                <td class="bg-secondary text-center text-white">
                                    <p class="font-weight-bold number-label">Job Opportunity</p>
                                 <asp:Label ID="lblJob" runat="server" Text="Label" class="number-dashboard font-weight-bolder"></asp:Label>
                                </td>
                                <td class="bg-green text-white number-label text-center">
                                    <p class="font-weight-bold">Scholarships</p>
                                    <asp:Label ID="lblScolarship" runat="server" Text="Label" class="number-dashboard font-weight-bolder"></asp:Label>
                                </td>
                            </tr>
                             <tr class="tr">
                                <td class="bg-blue text-white number-label text-center">
                                    <p class="font-weight-bold">Learning Opportunity</p>
                                     <asp:Label ID="lblLearning" runat="server" Text="Label" class="number-dashboard font-weight-bolder"></asp:Label>
                                </td>
                                <td class="bg-light number-label text-black text-center">
                                    <p class="font-weight-bold">Total Opportunities</p>
                                     <asp:Label ID="lblTotal" runat="server" Text="Label" class="number-dashboard font-weight-bolder"></asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
 					</div>
                     


 					<div class="col-12 mt-3 bg-white cal-box h-30">
 						<div class="card sm-cal h-100" style="max-width: 540px;">
  						<div class="row no-gutters h-100">
  						  <div class="col-md-4  date text-center pt-3 pb-0" >
  						    <p class="month pt-4 mb-0">April</p>
  						    <p class="day">18</p>
  						  </div>
  						  <div class="col-md-8">
  						    <div class="card-body">
  						      
  						      <table class="table table-borderless mb-0">
  								<tbody>
  								  <tr>
  								    <th scope="row" class="time">12:00 a.m.</th>
  								    <td>Your posting "Summer Intern" expires today.</td>
  								  </tr>
  								  <tr>
  								    <th scope="row" class="time">3:00 p.m.</th>
  								    <td>Shady Creek High Career Fair</td>
  								  </tr>
  								</tbody>
							  </table>
								
  						    </div>
  						  </div>
  						</div>
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

