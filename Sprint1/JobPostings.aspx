﻿<!doctype html>
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
		  overflow: visible;
	  }
	 
  </style>

  </head>
	
	

<!------------------- BODY ----------------------->
 
 <body>
	 
	 <div class="posting-screen" style="height: 200vh;"> 
	 
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
    				<button class="dropdown-item" type="button">Logout</button>
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
  				  <a href="BusinessProfile.aspx"<p class="edit-text"><i data-feather="edit" class="edit-icon"></i>Edit Profile</p></a>
  				  </td> 
				 </tr>  				
			</table>
           <a href="Default.aspx" <span id="signout-btn" class="btn btn-maingreen sign-out btn-sign-out">Sign Out</span></a>
           </div>
            <ul class="nav flex-column sidebar-links">
           
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="BusinessPortal.aspx">
                  <i data-feather="home"></i>
                  <span class="nav-txt">Dashboard</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="applications.html">
                  <i data-feather="check-circle"></i>
					<span class="nav-txt">Applications</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side sidebar-active" href="JobPostings.aspx">
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
                <a class="nav-link nav-link-side" href="messages.html">
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
		
		  
		  <!---- Posting 1 ---->
		 
  		<div class="col-10" id="posting1">
			<div class="row med-data-row mt-4 ml-1">
 				<div class="col-8 card bg-white p-0" style="height: 40vh;">
 					<div class="card-header data d-flex justify-content-between">
  						 <span><h4 class="mt-2">Assistant Manager</h4></span> 
						
						<div><p class="mt-3 submitted-text bg-ltgrey">Posted: March 5 at 9:50 a.m.</p></div>
	
							 <div class="d-inline">
								 
								<button class="btn btn-secondary dropdown-toggle" type="button" id="editPosting" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   							 <span class="edit-icon editicon"> <i data-feather="edit"></i></span>
									
 						        	<span class="x-icon xicon"> <i data-feather="x"></i></span>
 						      	</button>
 						    </div> 					
				
					</div>
					
  					<div class="card-body" id="posting1body">
						<span class="navigation-icon editicon"> <i data-feather="navigation"></i></span>
						<tr>
   									   <td scope="row align-middle">
   									   <h6 class="d-inline pt-2">Staunton, Virginia </h6>
										   <span><p class="submitted-text ml-4">Published 3/4/19 1:30 p.m.</p></span>
   									   </td>
						</tr>
  						<p>Assistant Manager responsibilities include monitoring inventory and ordering merchandise based on demand. You will also research competitive products and analyze consumer behavior to ensure our store meets and exceeds client expectations. Our ideal candidate will have retail…</p>
						
						<p><b>Insert tags here - I found a possible plugin for it</b></p>
  					</div>
 				</div>
				
				
				
				
				<!---- Filter Card---->
				
					<div class="col-3 card bg-white p-0 ml-3">
					
  						<form class="search-form">
  							<div class="form-group mt-3 ml-3 mr-3">
  				 			 <span class="x-search xicon"> <i data-feather="search"></i></span><input type="search" class="form-control min-imput" id="examplesearch" aria-describedby="search" placeholder="Title or Keywords" >
  							</div>
							</form>
							
					
					<!---- Career Clusters---->
 					<div class="accordion mt-3" id="accordionExample">
  						<div class="card">
							
  						  	  <div class="card-header d-flex justify-content-between header-collapse" id="headingOne">
 						    <div class= "d-inline">
								 <div class="d-inline">
 						      			<button class="btn btn-link collapsed collapse-icon" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
 						        	<i data-feather="chevron-down"></i>
 						      	</button>
 						    </div> 						  
 						    	<h6 class="text-right mb-0 job-title d-inline">Career Clusters</h6>
								  </div>
 						  </div>
							
						<!---- Career Clusters check boxes---->
  						  <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
  						    <div class="card-body">
								
								<div class="form-check">
									  <input class="form-check-input" type="checkbox" value="" id="CareerCheck1">
									  <label class="form-check-label" for="CareerCheck1">
										Marketing/Sales
									  </label>
									</div>
								
									<div class="form-check">
									  <input class="form-check-input" type="checkbox" value="" id="CareerCheck2">
									  <label class="form-check-label" for="CareerCheck2">
										Public Relations
									  </label>
									</div>
								
								<div class="form-check">
									  <input class="form-check-input" type="checkbox" value="" id="CareerCheck3">
									  <label class="form-check-label" for="CareerCheck3">
										IT
									  </label>
									</div>
									
  						    </div>
  						  </div>
  						</div>
  					
						<!---- Type---->
 					<div class="accordion" id="accordionType">
  						<div class="card">
							
  						  	  <div class="card-header d-flex justify-content-between header-collapse" id="headingTwo">
 						    <div class= "d-inline">
								 <div class="d-inline">
 						      			<button class="btn btn-link collapsed collapse-icon" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
 						        	<i data-feather="chevron-down"></i>
 						      	</button>
 						    </div> 						  
 						    	<h6 class="text-right mb-0 job-title d-inline">Type</h6>
	
								  </div>
 						  </div>
							
							
							
						<!---- Type check boxes---->
  						  <div id="collapseTwo" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
  						    <div class="card-body">
								
						<!---- Select a Type---->
						<div class="dropdown mr-4 d-inline btn-group">
  							<button class="btn btn-secondary btn-sm dropdown-toggle bg-blue" type="button" id="btnType" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   							 </i> Select a Type</span>
  							</button>
							
  							<div class="dropdown-menu dropdown-menu-left" aria-labelledby="dataSettingMenu">
    							<button class="dropdown-item" type="button" id="jobbtn">Job</button>
    							<button class="dropdown-item" type="button" id="learningbtn">Learning</button>
    							<button class="dropdown-item" type="button" id="scholarshipbtn">Scholarship</button>
  							</div>
						</div>
								<!---- Now Type Check boxes---->
								<div class="form-check mt-3">
									  <input class="form-check-input" type="checkbox" value="" id="TypeCheck1">
									  <label class="form-check-label" for="TypeCheck1">
										Full Time
									  </label>
									</div>
								
									<div class="form-check">
									  <input class="form-check-input" type="checkbox" value="" id="TypeCheck2">
									  <label class="form-check-label" for="TypeCheck2">
										Part Time
									  </label>
									</div>
								
								<div class="form-check">
									  <input class="form-check-input" type="checkbox" value="" id="TypeCheck3">
									  <label class="form-check-label" for="TypeCheck3">
										Internship
									  </label>
									</div>
								
								<div class="form-check">
									  <input class="form-check-input" type="checkbox" value="" id="TypeCheck4">
									  <label class="form-check-label" for="TypeCheck4">
										Shadowing Opportunity
									  </label>
									</div>
								
								<div class="form-check">
									  <input class="form-check-input" type="checkbox" value="" id="TypeCheck5">
									  <label class="form-check-label" for="TypeCheck5">
										Scholarship
									  </label>
									</div>
									
  						    </div>
  						  </div>
						</div>
						
							</div>
						
 								</div>
						
						 <button type="button" data-toggle="modal" class="p-0 new-event-btn" data-target="#exampleModal"><li class="list-group-item bg-green"><i data-feather="plus-circle" class="mr-3"> </i>Add a Career Type</li></button>
  					  
  					  <!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">Job Title and Department Details</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
								  
								  <form>
									  <h5>Description</h5>
									  <div class="form-group">
										<label for="Job Title">Job Title</label>
										<input type="jobtitle" class="form-control" id="JobTitle" aria-describedby="JobTitle" placeholder="Enter">
									  </div>
									   <div class="form-group">
											<label for="CareerCluster">Career Cluster</label>
											<select class="form-control w-50" id="CareerCluster">
											  <option>Select</option>
											  <option>Marketing</option>
											  <option>Public Relations</option>
											  <option>It</option>
											</select>
										  </div>
									  <div class="form-group">
										<label for="type">Internal Code</label>
										<input type="internalcode" class="form-control w-50" id="internalcode" placeholder="internal code">
									  </div>
									  
									  <h5>Location</h5>
									 
									  <div class="form-group">
										<input type="location" class="form-control" id="Location" aria-describedby="Location" placeholder="Region, City, or Zip">
									  </div>
								  
								  <h5>Description</h5>
								   <div class="form-group">
										<input type="description" class="form-control input-mysize" id="Description" aria-describedby="Description" placeholder="Enter the job description here; include key areas.">
									  </div>
							       </form>
								  
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						        <button type="button" class="btn bg-green">Save changes</button>
						      </div>
						    </div>
						  </div>
						</div>
	
									</div>
				<!---- End of Filter Card----->
				
					  <!---- Posting 2 ---->
		 
  		<div class="col-12" id="posting2">
			<div class="row med-data-row mt-4">
 				<div class="col-8 card bg-white p-0" style="height: 40vh;">
 					<div class="card-header data d-flex justify-content-between">
  						 <span><h4 class="mt-2">Social Media Intern</h4></span> 
						
						<div><p class="mt-3 submitted-text bg-ltgrey">Posted: March 3 at 10:50 a.m.</p></div>
	
							 <div class="d-inline">
								 
								<button class="btn btn-secondary dropdown-toggle" type="button" id="editPosting2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   							 <span class="edit-icon editicon"> <i data-feather="edit"></i></span>
									
 						        	<span class="x-icon xicon"> <i data-feather="x"></i></span>
 						      	</button>
 						    </div> 					
				
					</div>
					
  					<div class="card-body" id="posting2body">
						<span class="navigation-icon editicon"> <i data-feather="navigation"></i></span>
						<tr>
   									   <td scope="row align-middle">
   									   <h6 class="d-inline pt-2">Harrisonburg, Virginia </h6>
										   <span><p class="submitted-text ml-4">Published 3/3/19 1:30 p.m.</p></span>
   									   </td>
						</tr>
  						<p>We are seeking a social media manager to maintain and grow our company’s social networks in order to educate veterans about the DAV as well as about the benefits they are provided through various sources of advocacy and programs…</p>
						
						<p><b>Insert tags here - I found a possible plugin for it</b></p>
  					</div>
 				</div>
 								
			
			 <!---Sidenote: This published/unpublished thing is gonna have to be done another way---->
			
			
							</div>
 								</div> <!---don't mess with these divs--->
			
	
		  <div class="col-12" id="posting3">
			<div class="row med-data-row mt-4">
 				<div class="col-8 card bg-white p-0" style="height: 40vh;">
 					<div class="card-header data d-flex justify-content-between">
  						 <span><h4 class="mt-2">Virtual Assistant</h4></span> 
						
						<div><p class="mt-3 submitted-text bg-ltgrey">Posted: March 2 at 1:30 p.m.</p></div>
	
							 <div class="d-inline">
								 
								<button class="btn btn-secondary dropdown-toggle" type="button" id="editPosting3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   							 <span class="edit-icon editicon"> <i data-feather="edit"></i></span>
									
 						        	<span class="x-icon xicon"> <i data-feather="x"></i></span>
 						      	</button>
 						    </div> 					
				
					</div>
					
  					<div class="card-body" id="posting3body">
						<span class="navigation-icon editicon"> <i data-feather="navigation"></i></span>
						<tr>
   									   <td scope="row align-middle">
   									   <h6 class="d-inline pt-2">Leesburg, Virginia </h6>
										   <span><p class="submitted-text ml-4">Published 3/2/19 1:30 p.m.</p></span>
   									   </td>
						</tr>
  						<p>We are looking for a Virtual Assistant to provide administrative support to our team while working remotely. As a Virtual Assistant, you will perform various administrative tasks, including answering emails, scheduling meetings and making travel arrangements. For this role, a strong Internet connection is required…</p>
						
						<p><b>Insert tags here - I found a possible plugin for it</b></p>
  					</div>
 				</div>
		  
		  
 			</div> <!---row---->
		 </div>  <!---column---->
		
	 
	 
	 
    <!-- jQuery first--> 
    <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    
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
  
  	<!-- Muuri -->
  	<script src="https://unpkg.com/muuri@0.7.1/dist/muuri.min.js"></script>
   
   <!-- custom JS -->
   <script src="js/custom.js"></script>
   

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
