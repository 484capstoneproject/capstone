﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JobOpportunity.aspx.cs" Inherits="Default3" %>

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
  				  <a href="BusinessProfile.aspx" <p class="edit-text"><i data-feather="edit" class="edit-icon"></i>Edit Profile</p></a>
  				  </td> 
				 </tr>  				
			</table>
           <a href="Default.aspx" <span id="signout-btn" class="btn btn-maingreen sign-out btn-sign-out">Sign Out</span></a>
           </div>
            <ul class="nav flex-column sidebar-links">
           
              <li class="nav-item-side">
                <a class="nav-link nav-link-side sidebar-active" href="BusinessPortal.aspx">
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
              <li class="nav-item nav-item-side dropright">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><i data-feather="clipboard" class="mr-2"></i>Postings</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="JobOpportunity.aspx">Job Opportunity</a>
      <a class="dropdown-item" href="LearningOpportunity.aspx">Learning Opportunity</a>
    </div>
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
		  
		 <!---- Postings ---->
		
  		<div class="col-6 ml-3 mt-4" id="postings">

		    <!-- Edit Modal -->
					<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-lg" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="editModalLabel">Edit Post</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						      
								 
								  <!-- JOB FORM CONTENT -->
								  <form id="postingFormJobEdit">
									<h5 class="pt-4">Edit Post Details</h5>
									  <div class="form-group">
										<label for="Job Title">Job Title</label>
										<input type="jobtitle" class="form-control" id="JobTitle" aria-describedby="JobTitle" placeholder="Enter">
									  </div>
								  
								  <div class="row pt-2 pb-3">
								  	<div class="col">
								 		 <label for="chooseJobType">Job Type</label>
								  		 <select class="form-control w-75 mb-3" id="chooseJobType">
											  <option>Part-Time</option>
											  <option>Full Time</option>
											  <option>Internship</option>
								  		 </select>
								    </div>
								    <div class="col">
									   <div class="form-group">
											<label for="CareerCluster">Career Cluster</label>
											<select class="form-control w-75" id="CareerCluster">
											  <option>Select</option>
											  <option>Agriculture, Food and Natural Resources</option>
											  <option>Architecture and Construction</option>
											  <option>Business Management and Administration</option>
											  <option>Education and Training</option>
											  <option>Finance</option>
											  <option>Government and Public Administration</option>
											  <option>Health Science</option>
											  <option>Hospitality & Tourism</option>
											  <option>Human Services</option>
											  <option>Information Technology</option>
											  <option>Law, Public Safety, Corrections and Security</option>
											  <option>Manufacturing</option>
											  <option>Marketing</option>
											  <option>Science, Technology, Engineering and Mathematics</option>											 <option>Transportation, Distribution and Logistics</option>
											</select>
										  </div>
									</div>
									</div>  
										<div class="form-group pt-1">
											<label for="paymentType" class="mr-3 ">Payment Type: </label>
									    	<div class="pt-2 d-inline">
										    <div class="form-check form-check-inline" id="paymentType">
										      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
										      <label class="form-check-label" for="inlineRadio1">Salaried</label>
										    </div>
										    <div class="form-check form-check-inline">
										      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
										      <label class="form-check-label" for="inlineRadio2">Hourly</label>
										    </div>
										    <div class="form-check form-check-inline">
										      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" >
										      <label class="form-check-label" for="inlineRadio3">Unpaid</label>
										    </div>
											</div>
									   </div>  									 
									  	<div class="form-group">
 										   <label for="exampleFormControlTextarea1">Edit Description</label>
 										   <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Tell potential candidates about your posting. Be as descriptive as you can."></textarea>
									  </div> 
									  <div class="form-group">
											  <h5 class="pt-4">Edit Application Deadline</h5>
										      <div class="row w-75">
										      	<div class="col">
											      <label for="selectMonth">Month</label>
													<select class="form-control" id="selectMonth">
													  <option>January</option>       
   													  <option>February</option>       
   													  <option>March</option>       
   													  <option>April</option>       
   													  <option>May</option>       
   													  <option>June</option>       
   													  <option>July</option>       
   													  <option>August</option>       
   													  <option>September</option>       
   													  <option>October</option>       
   													  <option>November</option>       
   													  <option>December</option> 
													</select>
										      	</div>
										      	<div class="col">
											      <label for="selectDay">Day</label>
													<select class="form-control" id="selectDay">
													    <option>1</option>       
   														<option>2</option>       
   														<option>3</option>       
   														<option>4</option>       
   														<option>5</option>       
   														<option>6</option>       
   														<option>7</option>       
   														<option>8</option>       
   														<option>9</option>       
   														<option>10</option>       
   														<option>11</option>       
   														<option>12</option>       
   														<option>13</option>       
   														<option>14</option>       
   														<option>15</option>       
   														<option>16</option>       
   														<option>17</option>       
   														<option>18</option>       
   														<option>19</option>       
   														<option>20</option>       
   														<option>21</option>       
   														<option>22</option>       
   														<option>23</option>       
   														<option>24</option>       
   														<option>25</option>       
   														<option>26</option>       
   														<option>27</option>       
   														<option>28</option>       
   														<option>29</option>       
   														<option>30</option>       
   														<option>31</option>
													</select>
										      </div>
										      <div class="col">
											      <label for="selectYear">Year</label>
													<select class="form-control" id="selectYear">
													    <option>2019</option>       
   														<option>2020</option>       
   														<option>2021</option>       
   														<option>2022</option>       
													</select>
											</div>
									  		</div>
									  
									  </div> 
									
							       </form>
							 
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						        <button type="button" class="btn bg-green" data-dismiss="modal">Save changes</button>
						      </div>
						    </div>
						  </div>
						</div>
					
			<!-- Delete Modal -->
					<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
									  <div class="modal-dialog modal-dialog-centered" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="exampleModalCenterTitle">Delete Post</h5>
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
									          <span aria-hidden="true">&times;</span>
									        </button>
									      </div>
									      <div class="modal-body">
									        Are you sure you want to delete your post? This cannot be undone.
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
									        <button type="button" class="btn btn-primary confirmDelete">Delete Post</button>
									      </div>
									    </div>
									  </div>
									</div>
		
			<div class="posting-row">
				
				
		<!---- Posting ---->
 		 	<div class="card bg-white p-0 mt-3 jobCardTemplate" style="height: 40vh; display: none;">
 					
					<div class="card-header data d-flex justify-content-between">
  						 <div>
  						 <span><h4 class="mt-2">Part-Time Designer</h4></span> 
  						 <span class="text-muted mr-1">Part Time</span><span>|</span><span class="ml-1 mr-1">Career Cluster</span><span>|</span><span class="ml-1 text-danger">Hourly Pay</span>
						 </div>
							 <div class="d-inline">
								 <div class="d-inline mt-3 mr-2"><label class="switch">
						 		 <input type="checkbox">
						 		 <span class="slider round"></span>
								</label></div>
								
								
							  <!-- EDIT POST MODAL BTN -->
								<button type="button" data-toggle="modal" class="p-0 new-event-btn" data-target="#editModal"><li class="list-group-item"><span class="edit-icon editicon"> <i data-feather="edit"></i></span></li></button>
 					  
  							    							  
  							  <!--DELETE POST MODAL BTN -->
 						      <button type="button" data-toggle="modal" class="btn deleteBtn" data-target="#deleteModal"><span class="x-icon xicon"> <i data-feather="x"></i></span></button>
 						      
 					
 						      
 						    </div> 					
					  </div>
					
					<div class="card-body" id="posting1body">
						<span class="navigation-icon editicon"> <i data-feather="navigation"></i></span>
						<tr>
   									   <td scope="row align-middle">
   									   <h6 class="d-inline pt-2">Harrisonburg, Virginia </h6>
										   <span><p class="submitted-text ml-4">Published 3/4/19 1:30 p.m.</p></span>
   									   </td>
						</tr>
  						<p class="mt-2">We are seeking a part-time designer to work in our graphics deaprtment. Duties include designing promotional materials, posting to social media, and updating the company website. Experience in the Adobe Suite is preferred.</p>
						
						<p><b>Application Due: June 19, 2019</b></p>
					</div>	
  			   </div>
				
		<!---- Posting 2 ---->
	 		 	<div class="card bg-white p-0 mt-3" style="height: 40vh;">
 					
					<div class="card-header data d-flex justify-content-between">
  						 <div>
  						 <span><h4 class="mt-2">Summer Intern</h4></span> 
  						 <span class="text-muted mr-1">Part Time</span><span>|</span><span class="ml-1 mr-1">Career Cluster</span><span>|</span><span class="ml-1 text-danger">Unpaid</span>
						 </div>
							 <div class="d-inline">
								 <div class="d-inline mt-3 mr-2"><label class="switch">
						 		 <input type="checkbox">
						 		 <span class="slider round"></span>
								</label></div>
								
									
							  <!-- EDIT POST MODAL BTN -->
								<button type="button" data-toggle="modal" class="p-0 new-event-btn" data-target="#editModal"><li class="list-group-item"><span class="edit-icon editicon"> <i data-feather="edit"></i></span></li></button>
 					  
  							    							  
  							  <!--DELETE POST MODAL BTN -->
 						      <button type="button" data-toggle="modal" class="btn deleteBtn" data-target="#deleteModal"><span class="x-icon xicon"> <i data-feather="x"></i></span></button>
						    
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
  						<p class="mt-2">Our Summer Interns have the great experience of assisting our essential teams during the busy Summer months. You will get to meet tons of employees from a wide variety of fields.</p>
						
						<p><b>Application Due: May 1, 2019</b></p>
					</div>	
  			   </div> 
 		

				
 		</div> 	<!---- Posting Row end div tag  ---->
	</div>  <!---- Posting Col end div tag  ---->
			
		
	
			   <!---- Filter Card---->
				
					<div class="col-2 card bg-white ml-3 mt-5" style="height: 10%; margin: auto;">
						<div class="filter-row">
  						

							
							
							
					
		  <div class="text-center">
		   <button type="button" data-toggle="modal" class="p-0 new-event-btn mt-3" data-target="#newPostModal"><li class="list-group-item bg-green"><i data-feather="plus-circle" class="mr-3"> </i>Add Post</li></button>
 					  </div>
  					  
  					  <!-- Modal -->
						<div class="modal fade" id="newPostModal" tabindex="-1" role="dialog" aria-labelledby="newPostModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-lg" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="newPostModalLabel">New Job Opportunity</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
		
								  <!-- JOB FORM CONTENT -->
								  <form id="postingFormJob">
									<h5 class="pt-4">Post Details</h5>
									  <div class="form-group">
										<label for="Job Title">Job Title</label>
										<input type="jobtitle" class="form-control" id="txtJobTitle" aria-describedby="JobTitle" runat="server" placeholder="Enter">
									  </div>
								  
								  <div class="row pt-2 pb-3">
								  	<div class="col">
								 		 <label for="chooseJobType">Job Type</label>
								  		 <select class="form-control w-75 mb-3" id="dropJobType" runat="server">
											  <option>Part-Time</option>
											  <option>Full Time</option>
											  <option>Internship</option>
								  		 </select>
								    </div>
								    <div class="col">
									   <div class="form-group">
											<label for="CareerCluster">Career Cluster</label>
											<select class="form-control w-75" id="dropCareerCluster" runat="server">
											  <option>Select</option>
											  <option>Agriculture, Food and Natural Resources</option>
											  <option>Architecture and Construction</option>
											  <option>Business Management and Administration</option>
											  <option>Education and Training</option>
											  <option>Finance</option>
											  <option>Government and Public Administration</option>
											  <option>Health Science</option>
											  <option>Hospitality & Tourism</option>
											  <option>Human Services</option>
											  <option>Information Technology</option>
											  <option>Law, Public Safety, Corrections and Security</option>
											  <option>Manufacturing</option>
											  <option>Marketing</option>
											  <option>Science, Technology, Engineering and Mathematics</option>											 <option>Transportation, Distribution and Logistics</option>
											</select>
										  </div>
									</div>
									</div>  
										<div class="form-group pt-1">
											<label for="paymentType" class="mr-3 ">Payment Type: </label>
									    	<div class="pt-2 d-inline">
										    <div class="form-check form-check-inline" id="paymentType">
										      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
										      <label class="form-check-label" for="inlineRadio1">Salaried</label>
										    </div>
										    <div class="form-check form-check-inline">
										      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
										      <label class="form-check-label" for="inlineRadio2">Hourly</label>
										    </div>
										    <div class="form-check form-check-inline">
										      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" >
										      <label class="form-check-label" for="inlineRadio3">Unpaid</label>
										    </div>
											</div>
									   </div>  									 
									  	<div class="form-group">
 										   <label for="exampleFormControlTextarea1">Description</label>
 										   <textarea class="form-control" id="txtareaDescription" runat="server" rows="3" placeholder="Tell potential candidates about your posting. Be as descriptive as you can."></textarea>
									  </div> 
									  <div class="form-group">
											  <h5 class="pt-4">Edit Application Deadline</h5>
										      <div class="row w-75">
										      	<div class="col">
											      <label for="selectMonth">Month</label>
													<select class="form-control" id="dropMonth" runat="server">
													  <option>January</option>       
   													  <option>February</option>       
   													  <option>March</option>       
   													  <option>April</option>       
   													  <option>May</option>       
   													  <option>June</option>       
   													  <option>July</option>       
   													  <option>August</option>       
   													  <option>September</option>       
   													  <option>October</option>       
   													  <option>November</option>       
   													  <option>December</option> 
													</select>
										      	</div>
										      	<div class="col">
											      <label for="selectDay">Day</label>
													<select class="form-control" id="dropDay" runat="server">
													    <option>1</option>       
   														<option>2</option>       
   														<option>3</option>       
   														<option>4</option>       
   														<option>5</option>       
   														<option>6</option>       
   														<option>7</option>       
   														<option>8</option>       
   														<option>9</option>       
   														<option>10</option>       
   														<option>11</option>       
   														<option>12</option>       
   														<option>13</option>       
   														<option>14</option>       
   														<option>15</option>       
   														<option>16</option>       
   														<option>17</option>       
   														<option>18</option>       
   														<option>19</option>       
   														<option>20</option>       
   														<option>21</option>       
   														<option>22</option>       
   														<option>23</option>       
   														<option>24</option>       
   														<option>25</option>       
   														<option>26</option>       
   														<option>27</option>       
   														<option>28</option>       
   														<option>29</option>       
   														<option>30</option>       
   														<option>31</option>
													</select>
										      </div>
										      <div class="col">
											      <label for="selectYear">Year</label>
													<select class="form-control" id="dropYear" runat="server">
													    <option>2019</option>       
   														<option>2020</option>       
   														<option>2021</option>       
   														<option>2022</option>       
													</select>
											</div>
									  		</div>
									  
									  </div> 
									
							       </form>
							       
					
								  
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						        <asp:Button type="button" Text="Save Changes" class="btn bg-green addPost" data-dismiss="modal" id="btnSaveChanges" OnClick="BtnSaveChanges_Click1" runat="server" ></asp:Button>
						      </div>
						    </div>
						  </div>
						</div>
							
							
							
							
							
							
							
							
  						    </div> <!---- Filter Row end div tag  ---->
						</div> <!---- Filter Col end div tag  ---->
						 
				<!---- End of Filter Card----->
		  
		
	 
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
  
  	<!-- Muuri <script src="https://unpkg.com/muuri@0.7.1/dist/muuri.min.js"></script> -->
   
   <!-- custom JS -->
   <script src="js/custom.js"></script>
    <script src="js/formtoggler.js"></script>

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