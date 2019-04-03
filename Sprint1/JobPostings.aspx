﻿<%@ Page Language="C#"AutoEventWireup="true" CodeFile="JobPostings.aspx.cs" Inherits="JobPostings" %>


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
	 
  </style>

  </head>
	
	

<!------------------- BODY ----------------------->
 
 <body>
	<form id="postingFormJob" runat="server">
	 
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
                <a class="nav-link nav-link-side sidebar-active" href="JobPostings.aspx">
                  <i data-feather="clipboard"></i>
					<span class="nav-txt">Postings</span>
                </a>
              </li>
                <li class="nav-item-side">
                <a class="nav-link nav-link-side" href="LearningOpportunities.aspx">
                  <i data-feather="clipboard"></i>
					<span class="nav-txt">Learning Opportunities Posts</span>
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
		
  		<div class="col-8 ml-3 mt-4 pb-4" id="postings">

				  <!-- JOB FORM CONTENT -->
					  <%--<form id="postingFormJob" runat="server">--%>
						  <div class="card card-body border-secondary">
							  <h3 class="text-maingreen">Job Posting</h3>
									<h5 class="pt-4">Post Details</h5>
									  <div class="form-group">
										<label for="Job Title">Job Title</label>
										<input type="jobtitle" runat="server" class="form-control" id="txtJobTitle" aria-describedby="JobTitle" placeholder="Enter">
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
                              <%--<div class="form-group pt-1">
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
									   </div>--%>  									 
									  	<div class="form-group">
 										   <label for="exampleFormControlTextarea1">Description</label>
 										   <textarea class="form-control" runat="server" id="txtareaDescription" rows="3" placeholder="Tell potential candidates about your posting. Be as descriptive as you can."></textarea>
									  </div> 
									  <div class="form-group">
											  <h5 class="pt-4">Application Deadline</h5>
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
									  <div class="form-group">
											<asp:Button class="btn btn-maingreen w-25" id="btnAddPost" runat="server" Text="Add Post" OnClick="BtnAdd_Click"></asp:Button>   
                                            <asp:Button CssClass="btn btn-maingreen w-25" ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"></asp:Button>
						       				<asp:Button class="btn btn-primary w-25" id="btnUpdatePost" runat="server" Text="Update Changes" OnClick="BtnUpdate_Click"></asp:Button> 
						       		 </div>  
							       </div><!-- ENDS ADD JOB CARD -->
						<div class="mt-5 mb-5 card card-body border-secondary">
		
							
							 <br />

		                    <asp:Label ID="LblSearch" runat="server" Text="Search Job Postings (By JobTitle): " Font-Bold="true" Font-Underline="true"></asp:Label>

                            <br />

                            <asp:TextBox ID="TextSearch" runat="server" placeholder="Job Title"></asp:TextBox>
                            <br />
                            <asp:Button ID="BtnSearch" class="btn btn-maingreen w-25" runat="server" Text="Filter" OnClick="BtnSearch_Click" />
                            <br />
                            <asp:Button ID="BtnReset" class="btn btn-maingreen w-25" runat="server" Text="Reset" OnClick="BtnReset_Click" />
                            <asp:label id="MessageLabel"
                             forecolor="Red"
                             runat="server"/>
                            <asp:Label ID="LblNoDbOptions" runat="server" Text="No results found in the search" Visible="false"></asp:Label>    
							<br />
                            <%--Gridview start--%>
							 <asp:Gridview id="GridView1" 
                               autogeneratecolumns="False"
                               onselectedindexchanged="GridView1_SelectedIndexChanged"
                               runat="server" DataKeyNames="JobPostingID" CellPadding="4" ForeColor="#333333" GridLines="None">
                
                                 <AlternatingRowStyle BackColor="White" />
                
                                 <Columns>
                                      <asp:CommandField ShowSelectButton="True" SelectText="Update" ButtonType="Button" ControlStyle-Font-Bold="true"/>
                                     <asp:BoundField DataField="JobPostingID" 
                                         HeaderText="JobPostingID" 
                                         InsertVisible="False" ReadOnly="True" 
                                         SortExpression="JobPostingID" />
                                 
                                   
                                     <asp:BoundField DataField="JobTitle" 
                                         HeaderText="Title" 
                                         SortExpression="JobTitle" >
                                     <ControlStyle BackColor="#000066" />
                                     </asp:BoundField>
                                     <asp:BoundField DataField="JobType" 
                                         HeaderText="JobType" 
                                         SortExpression="JobType" />
                                     <asp:BoundField DataField="CareerCluster" 
                                         HeaderText="CareerCluster" 
                                         SortExpression="CareerCluster" />
                                     <asp:BoundField DataField="Description" 
                                         HeaderText="Description" 
                                         SortExpression="Description" />
                                     <asp:BoundField DataField="Month" 
                                         HeaderText="Month" 
                                         InsertVisible="False" ReadOnly="True" 
                                         SortExpression="Month" />
                                     <asp:BoundField DataField="Day" 
                                         HeaderText="Day" 
                                         SortExpression="Day" />
                                     <asp:BoundField DataField="Year" 
                                         HeaderText="Year" 
                                         SortExpression="Year" />
                                     <asp:BoundField DataField="BusinessEntityID" 
                                         HeaderText="BusinessEntityID" 
                                         SortExpression="BusinessEntityID" 
                                         readOnly="true"/>
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
                            
                            <%--GridView End--%>
                        
							
						</div>
							       
				</form>
						
	
	        </div> <!-- CLOAING CONTENT COLUMN -->
         </div><!-- CLOSING ROW -->
   </div><!-- CLOSING LARGE CONTAINER -->
	 
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
          

</body>
</html>



      

