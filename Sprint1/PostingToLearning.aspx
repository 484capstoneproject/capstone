﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostingToLearning.aspx.cs" Inherits="PostingToLearning" %>

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
	  
	  body{
		  overflow: visible;
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
	  
	
	 

  </style>

  </head>
	
	

<!------------------- BODY ----------------------->
 
 <body class="posting-screen">
	 
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
      <div class="row vh-100">
       
      <!---------------- SIDEBAR BEGINS --------------->
       
        <nav class="col-2 p-0 d-none d-md-block sidebar sidebar-expanded" id="collapse-it">
            <div class="sidebar-inner position-sticky">
             <div class="profile-bar text-center">
              <table class="profile-table text-left">
  				<tr>
  				  <td class="profile-img-box"><img class="profile-img" src="images/PBMares.png"></td>
  				  <td class="bus-name">
  				  <h2 class="bus-name-header mt-3">PB Mares</h2>
  				  
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
                <a class="nav-link nav-link-side" href="dashboard.aspx">
                  <i data-feather="home"></i>
                  <span class="nav-txt">Dashboard</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="applications.aspx">
                  <i data-feather="check-circle"></i>
					<span class="nav-txt">Applications</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side sidebar-active" href="postings.aspx">
                 <span class="white-icon"><i data-feather="clipboard"></i></span> 
					<span class="nav-txt sidebartext-active">Postings</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="analytics.aspx">
                  <i data-feather="pie-chart"></i>
					<span class="nav-txt">Analytics</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="calendar.aspx">
                  <i data-feather="calendar"></i>
					<span class="nav-txt">Calendar</span>
                </a>
              </li>
              <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="messages.aspx">
                  <i data-feather="inbox"></i>
					<span class="nav-txt">Messages</span>
                </a>
              </li>
            </ul>
         <div id="sidebar-btn"><i data-feather="arrow-left-circle"></i></div>
			</div>
        </nav>
	<!-------------------- SIDEBAR ENDS -------------------->
		  
		  
	<!-------------------- BODY STARTS --------------------->  
		  
		 <!---- Postings ---->
		
  		<div class="col-6 mt-4" id="postings">

		    <!-- Edit JOB Modal -->
					<div class="modal fade" id="editJobModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-lg" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="editModalLabel">Edit Post</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						       <div class="modal-body p-3">
								<div class="p-3">			 
								<ul class="nav nav-tabs" role="tablist">
						   <li class="nav-item">
						     <a class="nav-link active border-left-plain" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Job Opportunity</a>
						   </li>
						</ul>
						 	<div class="tab-content border-left-plain" >
						   <div class="tab-pane fade show active" role="tabpanel" aria-labelledby="home-tab">
							
							  <!-- JOB FORM CONTENT -->
								  <form id="postingFormJobEdit" class="p-5 add-form">
									<h3 class="pt-2 pb-2">Post Details</h3>
									  <div class="form-group">
										<label for="Job Title" class="font-weight-bold">Job Title</label>
										<input type="jobtitle" class="form-control form-entry" aria-describedby="JobTitle" placeholder="Enter">
									  </div>
								  
								    <div class="row pt-2 pb-3">
								  	<div class="col">
								 		 <label for="chooseJobType" class="font-weight-bold">Job Type</label>
								  		 <select class="form-control w-75 mb-3 form-selector">
											  <option class="font-sm">Part-Time</option>
											  <option class="font-sm">Full Time</option>
											  <option class="font-sm">Internship</option>
								  		 </select>
								    </div>
								    <div class="col">
									   <div class="form-group">
											<label for="CareerCluster" class="font-weight-bold">Career Cluster</label>
											<select class="form-control w-75 form-selector">
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
											<label for="paymentType" class="font-weight-bold mr-3 mt-2">Payment Type: </label>
									    	<div class="pt-2 d-inline">
										    <div class="form-check form-check-inline" >
										      <input class="form-check-input" type="radio" name="inlineRadioOptions" value="option1">
										      <label class="form-check-label" for="inlineRadio1">Salaried</label>
										    </div>
										    <div class="form-check form-check-inline">
										      <input class="form-check-input" type="radio" name="inlineRadioOptions" value="option2">
										      <label class="form-check-label" for="inlineRadio2">Hourly</label>
										    </div>
										    <div class="form-check form-check-inline">
										      <input class="form-check-input" type="radio" name="inlineRadioOptions" value="option3" >
										      <label class="form-check-label" for="inlineRadio3">Unpaid</label>
										    </div>
											</div>
									   </div>  									 
									  	<div class="form-group">
 										   <label for="exampleFormControlTextarea1">Description</label>
 										   <textarea class="form-control form-entry-all-borders" rows="3" placeholder="Tell potential candidates about your posting. Be as descriptive as you can."></textarea>
									  </div> 
									  <div class="form-group">
											  <h5 class="pt-4">Edit Application Deadline</h5>
										      <div class="row w-75">
										      	<div class="col">
											      <label for="selectMonth">Month</label>
													<select class="form-control form-selector">
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
													<select class="form-control form-selector" >
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
													<select class="form-control form-selector" >
													    <option>2019</option>       
   														<option>2020</option>       
   														<option>2021</option>       
   														<option>2022</option>       
													</select>
											</div>
									  		</div>
									  
									  </div>
									  <hr class="mt-4 mb-4">
									  <div class="form-group">
									  <h3 class="pt-2 pb-2">Application Requirements</h3>
									  	<div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" >
										  <label class="form-check-label" for="defaultCheck1">
										    Require a Résumé.
										  </label>
										  </div>
										  <div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" >
										  <label class="form-check-label" for="defaultCheck2">
										    Applicants must be 18 years or older.
										  </label>
										</div>
									  <div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" >
										  <label class="form-check-label" for="defaultCheck2">
										    Require References
										  </label>
										</div>
   										  <label for="formGroupExampleInput" class="mt-4">Question Prompt (optional)</label>
   										  <input type="text" class="form-control" placeholder="Ask a short question of applicants.">
									  </div> 
									
							       </form>
							       
							  
						   </div>
			 
						</div>
								  
						      </div>
						      </div>		
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						        <button type="button" class="btn bg-green" data-dismiss="modal">Save changes</button>
						      </div>
						    </div>
						  </div>
						</div>
			<!-- Edit LEARN Modal -->
					<div class="modal fade" id="editLearnModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-lg" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" >Edit Post</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						       <div class="modal-body p-3">
								<div class="p-3">			 
								<ul class="nav nav-tabs" role="tablist">
						   <li class="nav-item">
						     <a class="nav-link active border-left-plain" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Learning Opportunity</a>
						   </li>
						</ul>
						 	<div class="tab-content border-left-plain" >
							
							       <div class="tab-pane show active fade" role="tabpanel" aria-labelledby="profile-tab">
							 
							 <!-- LEARNING FORM CONTENT -->
								  <form id="postingFormLearnEdit" class="p-5 add-form">
									<h3 class="pt-2">Post Details</h3>
									  <div class="form-group">
										<label for="learntitle" class="font-weight-bold">Learning Opportunity Title</label>
										<input type="learntitle" class="form-control form-entry"  aria-describedby="learntitle" placeholder="Enter">
									  </div>
								  
								  <div class="row pt-2 pb-3">
								  	<div class="col">
								 		 <label for="chooseOppType" class="font-weight-bold">Opportunity Type</label>
								  		 <select class="form-control w-75 mb-3 form-selector" >
											  <option>Shadowing</option>
											  <option>Career Event</option>
											  <option>Other</option>
								  		 </select>
								    </div>
								    <div class="col">
									   <div class="form-group">
											<label for="CareerClusterLearn" class="font-weight-bold">Career Cluster</label>
											<select class="form-control w-75 form-selector" >
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
									  	<div class="form-group">
 										   <label for="descLearn" class="font-weight-bold">Description</label>
 										   <textarea class="form-control form-entry"  rows="3" placeholder="Tell potential candidates about your posting. Be as descriptive as you can."></textarea>
									  </div> 
									  <div class="form-group">
											  <h5 class="pt-4">Application Deadline</h5>
										      <div class="row w-75">
										      	<div class="col">
											      <label for="selectMonth" class="font-weight-bold">Month</label>
													<select class="form-control form-selector" >
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
											      <label for="selectDay" class="font-weight-bold">Day</label>
													<select class="form-control form-selector">
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
											      <label for="selectYear" class="font-weight-bold">Year</label>
													<select class="form-control form-selector">
													    <option>2019</option>       
   														<option>2020</option>       
   														<option>2021</option>       
   														<option>2022</option>       
													</select>
											</div>
									  		</div>
									  
									  </div> 
									 <hr class="mt-4 mb-4">
									  <div class="form-group">
									  <h3 class="pt-2 pb-2">Application Requirements</h3>
									  	<div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" >
										  <label class="form-check-label" for="defaultCheck1">
										    Require a Résumé.
										  </label>
										  </div>
										  <div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" >
										  <label class="form-check-label" for="defaultCheck2">
										    Applicants must be 18 years or older.
										  </label>
										</div>
									  <div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" >
										  <label class="form-check-label" for="defaultCheck2">
										    Require References
										  </label>
										</div>
   										  <label for="formGroupExampleInput" class="mt-4">Question Prompt (optional)</label>
   										  <input type="text" class="form-control" placeholder="Ask a short question of applicants.">
									  </div>
									
							       </form>
							 
						  </div>
							  
			 
						</div>
								  
						      </div>
						      </div>		
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						        <button type="button" class="btn bg-green" data-dismiss="modal">Save changes</button>
						      </div>
						    </div>
						  </div>
						</div>
			<!-- Edit SCHOLARSHIP Modal -->
					<div class="modal fade" id="editScholModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-lg" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" >Edit Post</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						       <div class="modal-body p-3">
								<div class="p-3">			 
								<ul class="nav nav-tabs" role="tablist">
						   <li class="nav-item">
						     <a class="nav-link active border-left-plain" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Learning Opportunity</a>
						   </li>
						</ul>
						 	<div class="tab-content border-left-plain" >
							
							       <div class="tab-pane show active fade" role="tabpanel" aria-labelledby="profile-tab">
							  <!-- SCHOLARSHIP FORM CONTENT -->
								  <form id="postingFormScholarEdit" class="p-5 add-form">
									<h3 class="pt-2">Scholarship Details</h3>
									  <div class="form-group">
										<label for="scholtitle" class="font-weight-bold">Scholarship Name</label>
										<input type="scholtitle" class="form-control form-entry" aria-describedby="scholtitle" >
									  </div>
									  <div class="form-group">
										<label for="scholamount" class="font-weight-bold">Amount</label>
										<input type="scholamount" class="form-control form-entry" aria-describedby="scholamount" >
									  </div>
								  
														 
									  	<div class="form-group">
 										   <label for="descSchol" class="font-weight-bold">Description</label>
 										   <textarea class="form-control form-entry" rows="3" placeholder="Tell potential candidates about your posting. Be as descriptive as you can."></textarea>
									  </div> 
									  <div class="form-group">
											  <h5 class="pt-4">Edit Application Deadline</h5>
										      <div class="row w-75">
										      	<div class="col">
											      <label for="selectMonth">Month</label>
													<select class="form-control form-selector">
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
													<select class="form-control form-selector">
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
													<select class="form-control form-selector">
													    <option>2019</option>       
   														<option>2020</option>       
   														<option>2021</option>       
   														<option>2022</option>       
													</select>
											</div>
									  		</div>
									  
									  </div> 
								 <hr class="mt-4 mb-4">
								  <div class="form-group">
									  <h3 class="pt-2 pb-2">Application Requirements</h3>
									  	<div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" >
										  <label class="form-check-label" for="defaultCheck1">
										    Require a Résumé.
										  </label>
										  </div>
										  <div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" >
										  <label class="form-check-label" for="defaultCheck2">
										    Applicants must be 18 years or older.
										  </label>
										</div>
									  <div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" >
										  <label class="form-check-label" for="defaultCheck2">
										    Require References
										  </label>
										</div>
   										  <label for="formGroupExampleInput" class="mt-4">Question Prompt (optional)</label>
   										  <input type="text" class="form-control" placeholder="Ask a short question of applicants.">
									  </div>
							       </form>
							 
							 
						  </div>
							  
			 
						</div>
								  
						      </div>
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
									        <button type="button" class="btn btn-secondary cancelDelete" data-dismiss="modal">Cancel</button>
									        <button type="button" class="btn btn-primary confirmDelete">Delete Post</button>
									      </div>
									    </div>
									  </div>
									</div>
		
			<div class="posting-row">
				
				
		<!---- JOB POST TEMPLATE ---->
		 	<div class="card bg-white p-0 mt-3 post-card jobCardTemplate" style="height: 40vh; display: none;">
			  <div class="row no-gutters h-100">
			    <div class="col-md-4 d-flex align-items-start flex-column bd-highlight post-card-left post-card-left">
			    
  			<div class="p-4 bd-highlight">
  			
  				<h3 class="d-inline job-post-title">Part Time Marketing Assistant</h3><br>
  				<div class="mt-3">
  				<span class="navigation-icon editicon"> <i data-feather="navigation"></i></span>
  						 <h6 class="d-inline location-text">Harrisonburg, Virginia </h6>
  				</div>
  			</div>
  			
  			<div class="p-2 bd-highlight"><div class="mt-0 ml-3">
  						 <label class="switch align-top">
								<input type="checkbox" class="d-block">
						 		 <span class="slider round publish-toggle"></span>
						 </label>
								<p class="unpublished-text align-middle desc-text text-black-50" style="display:none;">Unpublished</p><p class="submitted-text align-middle published-text" style="display:block;">Published 3/4/19 1:30 p.m.</p>
								</div></div>
  			<div class="mt-auto w-100 bd-highlight bg-mainblue pl-1">
 					<div class="card-footer">
 						<i data-feather="briefcase" class="mr-2"></i>Job Posting
  					</div>
  			</div>
		  </div>
			    <div class="col-md-8 post-card-right">
			      <div class="card-body">
		        <div class="pt-0 justify-content-between d-flex w-100 mb-3">		
		        			<div>
		        				<span class="mr-1 badge badge-secondary">Part Time</span><span>|</span><span class=" badge badge-ltblue text-white ml-1 mr-1">Marketing</span><span>|</span><span class="ml-1 badge badge-maingreen text-white">Hourly Pay</span>						
							</div>	
						  	<div>
							  <!-- EDIT POST MODAL BTN -->
								<button type="button" data-toggle="modal" class="p-0 new-event-btn edit-btn ml-4 mr-2 align-top" data-target="#editJobModal"><span class="edit-icon editicon"> <i data-feather="edit"></i></span></button>
 					  
  							    							  
  							  <!--DELETE POST MODAL BTN -->
 						      <button type="button" data-toggle="modal" class="deleteBtn pl-0 align-top" data-target="#deleteModal"><span class="x-icon xicon"> <i data-feather="x"></i></span></button>
 						      
 							</div>
	        	</div>
		        
			        <p class="card-text">We're looking for a creative and motivated Marketing assistant to work in our Marketing and PR department. You will get to work with one of the best teams in the area and recieve great employee benefits.</p>
			        <p class="card-text"><small class="text-muted">Application Due: May 20, 2019</small></p>
			      </div>
			    </div>
			  </div>
			</div>

 		<!---- JOB POST EXAMPLE ---->
		 	<div class="card bg-white post-card p-0 mt-3" style="height: 40vh;">
			  <div class="row no-gutters h-100">
			    <div class="col-md-4 d-flex align-items-start flex-column bd-highlight post-card-left post-card-left">
			    
  			<div class="p-4 bd-highlight">
  			
  				<h3 class="d-inline job-post-title">Part Time Finance Analyst</h3><br>
  				<div class="mt-3">
  				<span class="navigation-icon editicon"> <i data-feather="navigation"></i></span>
  						 <h6 class="d-inline location-text">Staunton, Virginia </h6>
  				</div>
  			</div>
  			
  			<div class="p-2 bd-highlight"><div class="mt-0 ml-3">
  						 <label class="switch align-top">
								<input type="checkbox" class="d-block">
						 		 <span class="slider round publish-toggle"></span>
						 </label>
								<p class="unpublished-text align-middle desc-text text-black-50" style="display:none;">Unpublished</p><p class="submitted-text align-middle published-text" style="display:block;">Published 3/4/19 1:30 p.m.</p>
								</div></div>
  			<div class="mt-auto w-100 bd-highlight bg-mainblue pl-1">
 					<div class="card-footer">
 						<i data-feather="briefcase" class="mr-2"></i>Job Posting
  					</div>
  			</div>
		  </div>
			    <div class="col-md-8 post-card-right">
			      <div class="card-body">
		        <div class="pt-0 justify-content-between d-flex w-100 mb-3">		
		        			<div>
		        				<span class="mr-1 badge badge-secondary">Part Time</span><span>|</span><span class=" badge badge-ltblue text-white ml-1 mr-1">Finance</span><span>|</span><span class="ml-1 badge badge-maingreen text-white">Hourly Pay</span>						
							</div>	
						  	<div>
							  <!-- EDIT POST MODAL BTN -->
								<button type="button" data-toggle="modal" class="p-0 new-event-btn edit-btn ml-4 mr-2 align-top" data-target="#editJobModal"><span class="edit-icon editicon"> <i data-feather="edit"></i></span></button>
 					  
  							    							  
  							  <!--DELETE POST MODAL BTN -->
 						      <button type="button" data-toggle="modal" class="deleteBtn pl-0 align-top" data-target="#deleteModal"><span class="x-icon xicon"> <i data-feather="x"></i></span></button>
 						      
 							</div>
	        	</div>
		        
			        <p class="card-text">Break into the world of finance with this exciting new position. No experience required, our top-notch team will teach you everything you need to know about being a Finance Analyst and provide you great opportunities to learn about other jobs in Finance.</p>
			        <p class="card-text"><small class="text-muted">Application Due: June 09, 2019</small></p>
			      </div>
			    </div>
			  </div>
			</div>
			
		<!---- LEARNING OPPORTUNITY POST EXAMPLE ---->
		 	<div class="card bg-white p-0 post-card mt-3" style="height: 40vh;">
			  <div class="row no-gutters h-100">
			    <div class="col-md-4 d-flex align-items-start flex-column bd-highlight post-card-left post-card-left">
			    
  			<div class="p-4 bd-highlight">
  			
  				<h3 class="d-inline job-post-title">Architect Shadowing</h3><br>
  				<div class="mt-3">
  				<span class="navigation-icon editicon"> <i data-feather="navigation"></i></span>
  						 <h6 class="d-inline location-text">Dayton, Virginia </h6>
  				</div>
  			</div>
  			
  			<div class="p-2 bd-highlight"><div class="mt-0 ml-3">
  						 <label class="switch align-top">
								<input type="checkbox" class="d-block">
						 		 <span class="slider round publish-toggle"></span>
						 </label>
								<p class="unpublished-text align-middle desc-text text-black-50" style="display:none;">Unpublished</p><p class="submitted-text align-middle published-text" style="display:block;">Published 3/4/19 1:30 p.m.</p>
								</div></div>
  			<div class="mt-auto w-100 bd-highlight bg-medblue pl-1">
 					<div class="card-footer">
 					<table>
 					<tbody>
 						<tr>
 							<td>
 								<i data-feather="book" class="mr-2"></i>
 							</td>
 							<td>Learning Opportunity</td>
 						</tr>
 					</tbody>
 				</table>
 						
  					</div>
  			</div>
		  </div>
			    <div class="col-md-8 post-card-right">
			      <div class="card-body">
		        <div class="pt-0 justify-content-between d-flex w-100 mb-3">		
		        			<div>
		        				<span class="mr-1 badge badge-secondary">Part Time</span><span>|</span><span class=" badge badge-ltblue text-white ml-1 mr-1">Finance</span><span>|</span><span class="ml-1 badge badge-maingreen text-white">Hourly Pay</span>						
							</div>	
						  	<div>
							  <!-- EDIT POST MODAL BTN -->
								<button type="button" data-toggle="modal" class="p-0 new-event-btn edit-btn ml-4 mr-2 align-top" data-target="#editLearnModal"><span class="edit-icon editicon"> <i data-feather="edit"></i></span></button>
 					  
  							    							  
  							  <!--DELETE POST MODAL BTN -->
 						      <button type="button" data-toggle="modal" class="deleteBtn pl-0 align-top" data-target="#deleteModal"><span class="x-icon xicon"> <i data-feather="x"></i></span></button>
 						      
 							</div>
	        	</div>
		        
			        <p class="card-text">Break into the world of finance with this exciting new position. No experience required, our top-notch team will teach you everything you need to know about being a Finance Analyst and provide you great opportunities to learn about other jobs in Finance.</p>
			        <p class="card-text"><small class="text-muted">Application Due: June 09, 2019</small></p>
			      </div>
			    </div>
			  </div>
			</div>

		<!---- SCHOLARSHIP POST EXAMPLE ---->
		 	<div class="card bg-white p-0 mt-3 post-card" style="height: 40vh;">
			  <div class="row no-gutters h-100">
			    <div class="col-md-4 d-flex align-items-start flex-column bd-highlight post-card-left post-card-left">
			    
  			<div class="p-4 bd-highlight">
  			
  				<h3 class="d-inline job-post-title">Sarah Lee Memorial Scholarship</h3><br>
  				<div class="mt-3">
  				<span class="navigation-icon editicon"> <i data-feather="navigation"></i></span>
  						 <h6 class="d-inline location-text">Harrisonburg, Virginia </h6>
  				</div>
  			</div>
  			
  			<div class="p-2 bd-highlight"><div class="mt-0 ml-3">
  						 <label class="switch align-top">
								<input type="checkbox" class="d-block">
						 		 <span class="slider round publish-toggle"></span>
						 </label>
								<p class="unpublished-text align-middle desc-text text-black-50" style="display:none;">Unpublished</p><p class="submitted-text align-middle published-text" style="display:block;">Published 3/4/19 1:30 p.m.</p>
								</div></div>
  			<div class="mt-auto w-100 bd-highlight bg-teal pl-1">
 					<div class="card-footer">
 					<table>
 					<tbody>
 						<tr>
 							<td>
 								<i data-feather="dollar-sign" class="mr-2"></i>
 							</td>
 							<td>Scholarship</td>
 						</tr>
 					</tbody>
 				</table>
 						
  					</div>
  			</div>
		  </div>
			    <div class="col-md-8 post-card-right">
			      <div class="card-body">
		        <div class="pt-0 justify-content-between d-flex w-100 mb-3">		
		        			<div>
		        				<span class="mr-1 badge badge-secondary">One Time</span><span>|</span><span class="ml-1 badge badge-maingreen text-white">$1300</span>						
							</div>	
						  	<div>
							  <!-- EDIT POST MODAL BTN -->
								<button type="button" data-toggle="modal" class="p-0 new-event-btn edit-btn ml-4 mr-2 align-top" data-target="#editScholModal"><span class="edit-icon editicon"> <i data-feather="edit"></i></span></button>
 					  
  							    							  
  							  <!--DELETE POST MODAL BTN -->
 						      <button type="button" data-toggle="modal" class="deleteBtn pl-0 align-top" data-target="#deleteModal"><span class="x-icon xicon"> <i data-feather="x"></i></span></button>
 						      
 							</div>
	        	</div>
		        
			        <p class="card-text">This one time award will be given to two local rising high school seniors who exibit a passion for serving their communities.</p>
			        <p class="card-text"><small class="text-muted">Application Due: May 26, 2019</small></p>
			      </div>
			    </div>
			  </div>
			</div>


 		
		
		
				
 		</div> 	<!---- Posting Row end div tag  ---->
	</div>  <!---- Posting Col end div tag  ---->
			
		
	
			   <!---- Filter Card---->
				
					<div class="col-3 card bg-white ml-3 mt-5" style="
    max-height:  100%;">
						<div class="filter-row">
  						 <button type="button" data-toggle="modal" class="p-0 new-event-btn mt-3 w-100" data-target="#newPostModal"><li class="list-group-item bg-green"><i data-feather="plus-circle" class="mr-3"> </i>Add Post</li></button>
							<form class="search-form mb-3">
  							<div class="form-group mt-3 ml-3 mr-3 justify-content-between d-flex">
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
  						   
							  
							 		 <div class="col card-body cluster-list">
										
														<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="">
														  <label class="form-check-label" for="CareerCheck1">
															Agriculture, Food, and Natural Resources
														  </label>
														</div>


														<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="" id="CareerCheck2">
														  <label class="form-check-label" for="CareerCheck2">
															Architecture and Construction
														  </label>
														</div>


														<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="" >
														  <label class="form-check-label" for="CareerCheck3">
															Arts, Audio/Video Technology, and Communications
														  </label>
														</div>
												  
												  		<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="" >
														  <label class="form-check-label" for="CareerCheck1">
															Business, Management, and Administration
														  </label>
														</div>


														<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="" >
														  <label class="form-check-label" for="CareerCheck2">
															Education and Training
														  </label>
														</div>


														<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="">
														  <label class="form-check-label" for="CareerCheck3">
															Finance
														  </label>
														</div>
												  
												  		<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="" >
														  <label class="form-check-label" for="CareerCheck1">
															Government and Public Administration
														  </label>
														</div>

														<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="" >
														  <label class="form-check-label" for="CareerCheck2">
															Health Science
														  </label>
														</div>
												  
									
														
														<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="" >
														  <label class="form-check-label" for="CareerCheck3">
															Hospitality and Tourism
														  </label>
														</div>
													 
													 	<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="">
														  <label class="form-check-label" for="CareerCheck1">
															Human Services
														  </label>
														</div>

														<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="">
														  <label class="form-check-label" for="CareerCheck2">
															Information Technology
														  </label>
														</div>

														<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="" >
														  <label class="form-check-label" for="CareerCheck3">
															Law, Public Safety, Corrections, and Security
														  </label>
														</div>
													 
													 <div class="form-check">
														  <input class="form-check-input" type="checkbox" value="" >
														  <label class="form-check-label" for="CareerCheck3">
															Manufacturing
														  </label>
														</div>
													 
													 	<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="" >
														  <label class="form-check-label" for="CareerCheck1">
															Marketing, Sales, and Service
														  </label>
														</div>

														<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="">
														  <label class="form-check-label" for="CareerCheck2">
															Science, Technology, Engineering, and Mathematics
														  </label>
														</div>

														<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="">
														  <label class="form-check-label" for="CareerCheck3">
															Transportation, Distribution, and Logistics
														  </label>
														</div>
													 
		 
					
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
  					  
  					  <!-- Modal -->
						<div class="modal fade" id="newPostModal" tabindex="-1" role="dialog" aria-labelledby="newPostModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-lg" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="newPostModalLabel">New Post</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body p-3">
								<div class="p-3">			 
								<ul class="nav nav-tabs" id="myTab" role="tablist">
						   <li class="nav-item">
						     <a class="nav-link border-left-plain" id="home-tab" href="Postings.aspx" role="tab" aria-controls="home" aria-selected="false">Job Opportunity</a>
						   </li>
						   <li class="nav-item">
						     <a class="nav-link active border-left-plain" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="true">Learning Opportunity</a>
						   </li>
						   <li class="nav-item">
						     <a class="nav-link border-left-plain" id="contact-tab" href="PostingToScholarship.aspx" role="tab" aria-controls="contact" aria-selected="false">Scholarship</a>
						   </li>
						</ul>
						 	
								<div class="tab-content border-left-plain" id="myTabContent">
							 
							
						   <div class="tab-pane fade show active" id="profile" role="tabpanel" aria-labelledby="profile-tab">
							 
							 <!-- LEARNING FORM CONTENT -->
								  <form id="postingFormLearn" class="p-5 add-form">
									<h3 class="pt-2">Post Details</h3>
									  <div class="form-group">
										<label for="learntitle" class="font-weight-bold">Learning Opportunity Title</label>
										<input type="learntitle" class="form-control form-entry" id="learntitle" aria-describedby="learntitle" placeholder="Enter">
									  </div>
								  
								  <div class="row pt-2 pb-3">
								  	<div class="col">
								 		 <label for="chooseOppType" class="font-weight-bold">Opportunity Type</label>
								  		 <select class="form-control w-75 mb-3 form-selector" id="chooseOppType">
											  <option>Shadowing</option>
											  <option>Career Event</option>
											  <option>Other</option>
								  		 </select>
								    </div>
								    <div class="col">
									   <div class="form-group">
											<label for="CareerClusterLearn" class="font-weight-bold">Career Cluster</label>
											<select class="form-control w-75 form-selector" id="CareerClusterLearn">
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
									  	<div class="form-group">
 										   <label for="descLearn" class="font-weight-bold">Description</label>
 										   <textarea class="form-control form-entry" id="descLearn1" rows="3" placeholder="Tell potential candidates about your posting. Be as descriptive as you can."></textarea>
									  </div> 
									  <div class="form-group">
											  <h5 class="pt-4">Application Deadline</h5>
										      <div class="row w-75">
										      	<div class="col">
											      <label for="selectMonth" class="font-weight-bold">Month</label>
													<select class="form-control form-selector" id="selectMonthLearn">
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
											      <label for="selectDay" class="font-weight-bold">Day</label>
													<select class="form-control form-selector" id="selectDayLearn">
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
											      <label for="selectYear" class="font-weight-bold">Year</label>
													<select class="form-control form-selector" id="selectYearLearn">
													    <option>2019</option>       
   														<option>2020</option>       
   														<option>2021</option>       
   														<option>2022</option>       
													</select>
											</div>
									  		</div>
									  
									  </div> 
									  <hr class="mt-4 mb-4">
									 <div class="form-group">
									  <h3 class="pt-2 pb-2">Application Requirements</h3>
									  	<div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" >
										  <label class="form-check-label" for="defaultCheck1">
										    Require a Résumé.
										  </label>
										  </div>
										  <div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" >
										  <label class="form-check-label" for="defaultCheck2">
										    Applicants must be 18 years or older.
										  </label>
										</div>
									  <div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" >
										  <label class="form-check-label" for="defaultCheck2">
										    Require References
										  </label>
										</div>
   										  <label for="formGroupExampleInput" class="mt-4">Question Prompt (optional)</label>
   										  <input type="text" class="form-control" placeholder="Ask a short question of applicants.">
									  </div>
									
							       </form>
							 
						  </div>
						  
							 
						</div>
				    
								  
						      </div>
						      </div>		
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						        <asp:Button type="button" Text="Add Post" class="btn bg-green addPost" data-dismiss="modal" OnClick="BtnAdd_Click" runat="server" ></asp:Button>
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
   <script src="../../../../Google Drive/Senior Year/Semester 2/SMAD Capstone/Sprint 2 SMAD/Bootstrap/js/custom.js"></script>
    <script src="../../../../Google Drive/Senior Year/Semester 2/SMAD Capstone/Sprint 2 SMAD/Bootstrap/js/formtoggler.js"></script>

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