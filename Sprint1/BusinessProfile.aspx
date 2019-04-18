<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BusinessProfile.aspx.cs" Inherits="BusinessProfile" %>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>Edit Profile</title>

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
       <h2 class="d-flex px-3 mt2 mb-1 text-left" id="BusinessName" runat="server">Blueridge Bank</h2>
       <img class="img-thumbnail profile-img mt-3" src="images/avatar.png">
       <p class="text-muted mt-2"><a href="BusinessProfile.aspx">Edit your profile <span class="editpost d-inline ml-2" data-feather="edit"></span></a></p>
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
    </nav>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
    

  <div class="container-fluid mt-5 mb-5">
   <h2 class="text-maingreen">Edit Profile</h2>
    <div class="col-md-8 order-md-1">
      <form class="needs-validation" novalidate runat="server">
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName">First name</label>
            <asp:Textbox type="text" class="form-control" id="TxtFirstName" placeholder="" value="" required="" runat="server"></asp:Textbox>
            <div class="invalid-feedback">
              Valid first name is required.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="lastName">Last name</label>
            <asp:Textbox type="text" class="form-control" id="TxtLastName" placeholder="" value="" required="" runat="server"></asp:Textbox>
            <div class="invalid-feedback">
              Valid last name is required.
            </div>
          </div>
        </div>

        <div class="mb-3">
          <label for="email">Email <span class="text-muted">(Use your work email address)</span></label>
          <asp:Textbox type="email" class="form-control" id="TxtEmailAddress" placeholder="you@example.com" runat="server"></asp:Textbox>
          <div class="invalid-feedback">
               Please enter a valid email address.
       </div>
       <small class="form-text text-muted">We'll never share your email with anyone else.</small>
<%--       <p class="ml-0">Contact me via:</p> 
       <div class="form-check form-check-inline">
		  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"/>
		  <label class="form-check-label" for="inlineCheckbox1">Phone</label>
	  </div>
	  <div class="form-check form-check-inline">
		  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2"/>
		  <label class="form-check-label" for="inlineCheckbox2">Email</label>
	 </div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3"/>
		  <label class="form-check-label" for="inlineCheckbox3">Text Message</label>
		</div>
        </div>--%>
        
        <div class="form-group">
    <label for="inputAddress">Address</label>
    <asp:Textbox type="text" class="form-control" id="txtInputAddress" placeholder="1234 Main St" runat="server"></asp:Textbox>
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <asp:Textbox type="text" class="form-control" id="txtAddressTwo" placeholder="Apartment, studio, or floor" runat="server"></asp:Textbox>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <asp:Textbox type="text" class="form-control" id="txtInputCity" runat="server"></asp:Textbox>
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <asp:Textbox type="text" class="form-control" Id="txtStateCity" runat="server"></asp:Textbox>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <asp:Textbox type="text" class="form-control" id="txtInputZip" runat="server"></asp:Textbox>
    </div>
  </div>
         <div class="row">
          <div class="col-12 pt-0 mb-2 negmargin">
          	&nbsp;</div>
        </div>
        	<div class="mb-3">
          <label for="email">Phone Number <span class="text-muted"></span></label>
          <asp:Textbox type="email" class="form-control" id="TxtPhoneNumber" placeholder="000-000-0000" runat="server"></asp:Textbox>
          <div class="invalid-feedback">
               Please enter a valid phone number.
       </div>
        </div> 
        <asp:button type="submit" class="btn btn-maingreen submitbutton" runat="server" Text="Save Changes" OnClick="BtnSave_Click"></asp:button>      
      </form>
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

