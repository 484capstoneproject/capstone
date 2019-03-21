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
	<link rel="stylesheet" href="custom.css">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
     <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
    
  </head>
  <body>
    <nav class="navbar navbar-light fixed-top bg-light flex-md-nowrap p-1 pl-3 shadow">
   <div>
   		<img class="cued-logo-nav ml-0" src="images/cuedin-logo.svg">
  		<img class="nextstepgo-logo-nav ml-0" src="images/nextstepgo.svg" href="#">
  </div>
  <ul class="navbar-nav px-3">

    <li class="nav-item text-nowrap">
      <a class="nav-link" href="Default.aspx">Sign out</a>
    </li>
  </ul>
</nav>

<div class="container-fluid">
  <div class="row">
    <nav class="col-md-2 d-none d-md-block bg-light sidebar">
      <div class="sidebar-sticky">
      <div class="profile-section text-center">
      <p class="welcome-business px-3 mt-4 mb-1 text-left">Welcome Back,</p>
      <h2 class="d-flex px-3 mt2 mb-1 text-left" id="BusinessName" runat="server">Business Name</h2>
       <img class="img-thumbnail profile-img mt-3" src="images/avatar.png">
		<p class="text-muted mt-2"><a href="BusinessProfile.aspx">Edit your profile <span class="editpost d-inline ml-2" data-feather="edit"></span></a></p>       </div>
        <ul class="nav flex-column bg-grey mt-4 pt-2 pb-2">
          <li class="nav-item">
            <a class="nav-link active-blue dash-wt-link" href="#">
              <span data-feather="home"></span>
              Dashboard 
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link dash-wt-link" href="#">
              <span data-feather="file"></span>
              Applications
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link dash-wt-link" href="JobPostings.aspx">
              <span data-feather="file"></span>
              Job Postings
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link dash-wt-link" href="#">
              <span data-feather="shopping-cart"></span>
              Messages
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link dash-wt-link" href="#">
              <span data-feather="calendar"></span>
              Calendar
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link dash-wt-link" href="#">
              <span data-feather="bar-chart-2"></span>
              Reports
            </a>
          </li>          
           <li class="nav-item">
            <a class="nav-link dash-wt-link" href="#">
              <span data-feather="users"></span>
              Profile
            </a>
          </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>Active Postings</span>
          <a class="d-flex align-items-center text-muted" href="#">
            <span data-feather="plus-circle"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Summer Intern
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              PR Shadowing
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Part-time Designer
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Network Admin.
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Summer Intern
            </a>
          </li>
        </ul>
      </div>
    </nav>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
    

  <div class="container-fluid mt-4">
   <h2 style="margin-left:  -15px;">Active Postings</h2>
    <div class="row flex-row flex-nowrap scrollcards">
        <div class="col-lg-3 col-sm-6">
            <div class="card card-block">
			<div class="card-body">
				<h5 class="card-title d-inline">Summer Intern</h5><span class="editpost d-inline ml-3" data-feather="edit"></span>
    			<p class="finance-cluster"><span data-feather="dollar-sign"></span> Finance</p>
    			<p class="card-text">We're looking for a motivated, creative, self-starter to assist our tellers during the busy summer months. You'll get hands-on experience with creative problem solving, and an exciting inside look at the way banks operate.</p>
				<button type="button" class="btn btn-maingreen referrals-badge">Referrals <span class="badge badge-light ml-2">6</span></button>
   	
  			</div>
       		</div>
        </div>
        <div class="col-lg-3 col-sm-6">
            <div class="card card-block">
			<div class="card-body">
				<h5 class="card-title d-inline">PR Shadowing</h5><span class="editpost d-inline ml-3" data-feather="edit"></span>
    			<p class="marketing-cluster"><span data-feather="trending-up"></span> Marketing</p>
    			<p class="card-text">Spend a day learning about life in our wonderful PR department. You will get to experience a full day shadowing an experienced PR professional at our Rockingham branch, and get to ask questions of career professionals.</p>
				<button type="button" class="btn btn-maingreen referrals-badge">Referrals <span class="badge badge-light ml-2">28</span></button>
   	
  			</div>
       		</div>
        </div>
        <div class="col-lg-3 col-sm-6">
            <div class="card card-block">
			<div class="card-body">
				<h5 class="card-title d-inline">Part-Time Designer</h5><span class="editpost d-inline ml-3" data-feather="edit"></span>
    			<p class="artcomm-cluster"><span data-feather="image"></span> Arts, A/V, and Comm. </p>
    			<p class="card-text">Calling all designers! This part-time job is made to fit around a high school student's schedule. Whith flexible hours and great pay, this is an excellent opportunity for any student who wants to explore life as a designer.</p>
				<button type="button" class="btn btn-maingreen referrals-badge">Referrals <span class="badge badge-light ml-2">2</span></button>
   	
  			</div>
       		</div>
        </div>
        <div class="col-lg-3 col-sm-6">
            <div class="card card-block">
			<div class="card-body">
				<h5 class="card-title d-inline">Network Admin.</h5><span class="editpost d-inline ml-3" data-feather="edit"></span>
    			<p class="info-cluster"><span data-feather="hard-drive"></span> Information Technology</p>
    			<p class="card-text overflow-auto">Digital security is a fast growing field, and accessable to anyone with an associate's degree. Let our tuition assistance program help you realize your true potential and secure you a great job after graduation.</p>
				<button type="button" class="btn btn-maingreen referrals-badge">Referrals <span class="badge badge-light ml-2">1</span></button>
   	
  			</div>
       		</div>
        </div>
        <div class="col-lg-3 col-sm-6">
            <div class="card card-block">
			<div class="card-body">
				<h5 class="card-title d-inline">Summer Intern</h5><span class="editpost d-inline ml-3" data-feather="edit"></span>
    			<p class="artcomm-cluster"><span data-feather="image"></span> Arts, A/V, and Comm.</p>
    			<p class="card-text overflow-auto">We're looking for a creative minded student to work with our public relations team to maintain our stellar image in the Harrisonburg community. Position runs from the end of may May to September.</p>
				<button type="button" class="btn btn-maingreen referrals-badge">Referrals <span class="badge badge-light ml-2">7</span></button>
   	
  			</div>
       		</div>
        </div>
        
    </div>
</div>
       
   <div class="row justify-content-end mt-5 mr-3">
   <h2 class="mr-auto pl-3">Interactions</h2>
    <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group mr-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar"></span>
            This week
          </button>
        </div>
    </div> 
        <div class='tableauPlaceholder' id='viz1552951259464' style='position: relative'><noscript><a href='#'><img alt=' ' 
            src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Vi&#47;VirginiaSchoolDistricts_15529512459450&#47;Dashboard1&#47;1_rss.png' 
            style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' 
                value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> 
                <param name='site_root' value='' /><param name='name' value='VirginiaSchoolDistricts_15529512459450&#47;Dashboard1' /><param name='tabs' value='no' /><param name='toolbar' 
                    value='yes' /><param name='static_image' 
                        value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Vi&#47;VirginiaSchoolDistricts_15529512459450&#47;Dashboard1&#47;1.png' /> 
                <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay'
                    value='yes' /><param name='display_count' value='yes' /><param name='filter' value='publish=yes' /></object>
        </div>                
        <script type='text/javascript'> var divElement = document.getElementById('viz1552951259464');
            var vizElement = divElement.getElementsByTagName('object')[0]; vizElement.style.width = '1000px'; vizElement.style.height = '827px';
            var scriptElement = document.createElement('script'); scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js'; vizElement.parentNode.insertBefore(scriptElement, vizElement);
        </script>


<div class="row mt-5 justify-content-center">
	<div class="col-md-4 col-sm-10 mr-5">
		<h2>Messages</h2>
		<div class="card bg-light mb-3">
  		<div class="card-header msg-card">New Message</div>
  			<div class="card-body msg-body">
   				<p class="text-muted mb-1">From: Mr. Brentwood | 3/17/19 at 3:14 p.m.</p>
    			<h4 class="card-title">Part-Time Job Inquiry</h4>
    			<p class="card-text">I think I have a great student to reccomend for your part-time job posting. Look for Jared's application in your inbox this week!</p>
    			<p class="mb-0 bluelink">Read More <span data-feather="arrow-right"></span></p>
  			</div>
		</div>
		<div class="card bg-light mb-3">
  		<div class="card-header msg-card">New Message</div>
  			<div class="card-body msg-body">
   				<p class="text-muted mb-1">From: Mrs. Johnson | 3/08/19 at 11:29 a.m.</p>
    			<h4 class="card-title">Career Fair Request</h4>
    			<p class="card-text">Hi Tom! We're hosting a career fair next month here at Bluestone High and would love if you could find the time...</p>
    			<p class="mb-0 bluelink">Read More <span data-feather="arrow-right"></span></p>
  			</div>
		</div>
	</div>
	<div class="col-md-6 col-sm-10 ml-3 calendar p-4">
		<div class="month">      
  <ul>
    <li class="prev">&#10094;</li>
    <li class="next">&#10095;</li>
    <li>
      March<br>
      <span style="font-size:18px">2019</span>
    </li>
  </ul>
</div>

<ul class="weekdays">
  <li>Mo</li>
  <li>Tu</li>
  <li>We</li>
  <li>Th</li>
  <li>Fr</li>
  <li>Sa</li>
  <li>Su</li>
</ul>

<ul class="days">  
  <li>1</li>
  <li>2</li>
  <li>3</li>
  <li>4</li>
  <li>5</li>
  <li>6</li>
  <li>7</li>
  <li>8</li>
  <li>9</li>
  <li><span class="active">10</span></li>
  <li>11</li>
  <li>12</li>
  <li>13</li>
  <li>14</li>
  <li>15</li>
  <li>16</li>
  <li>17</li>
  <li>18</li>
  <li>19</li>
  <li>20</li>
  <li>21</li>
  <li>22</li>
  <li>23</li>
  <li>24</li>
  <li>25</li>
  <li>26</li>
  <li>27</li>
  <li>28</li>
  <li>29</li>
  <li>30</li>
  <li>31</li>
</ul>

<div class="event mt-5">
	<h5 class="cal-date">Wednesday, March 10</h5>
	<ul>
		<li>
			Job Posting "Internship" Expires
		</li>
		<li>
			Stony Creek Career Fair
		</li>
	</ul>
</div>
	</div>
</div>
      
     
    </main>
  </div>
</div>

    <script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
       <script src="/docs/4.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
       <script src="dashboard.js"></script>
        </body>
</html>
