<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Calendar</title>
  <style>
  </style>
  
  <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/dashboard/">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <!-- Custom Styles -->
	<link rel="stylesheet" href="css/custom.css">

     <link rel="stylesheet" href="css/dashboard-testing.css">

  <style>
	  body{
		  overflow: hidden;
	  }
    .color{
        color:#83bf4a;
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
                <a class="nav-link nav-link-side sidebar-active" href="Calendar.aspx">
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
            </ul>
         <div id="sidebar-btn"><i data-feather="arrow-left-circle"></i></div>
        </nav>
        <div class="gradient-bar col"></div>
	<!-------------------- SIDEBAR ENDS -------------------->
    <!-------------------- BODY STARTS --------------------->  
 		<div class="col-9 d-inline mt-4 mr-3 bg-white">
         
              <div class="row">
        
<center>
			<div style="height: 487px; width: 913px"> <!-------------------- Cal div--------------------->  

        <strong><h2>Event Calendar</h2></strong><br />

        <asp:Calendar ID="Calendar1" runat="server" BackColor="#f9f9f9" BorderColor="#0c293d" Font-Names="Verdana" Font-Size="12pt" ForeColor="#25408f" Height="500px"
            NextPrevFormat="FullMonth" Width="857px" OnDayRender="Calendar1_DayRender" BorderWidth="1px" >
            <SelectedDayStyle BackColor="#0c293d" ForeColor="White" />
            <TodayDayStyle BackColor="#0c293d" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="White" />
            <NextPrevStyle Font-Bold="True" Font-Size="10pt" ForeColor="White" VerticalAlign="Bottom" />
            <DayHeaderStyle Font-Bold="True" BackColor="White" Font-Size="10pt" />
            <TitleStyle CssClass="border" BackColor="#0c293d" Font-Bold="True"
                Font-Size="14pt" ForeColor="White" />

        </asp:Calendar>
        &nbsp;&nbsp;        
</div>
    </center>

        <div class="bg-dark-blue" style="height: 570px; width: 175px">
            <h3 class=" ml-2 mt-4 text-white">Add Event</h3>
            <asp:Label ID="lblAddEventName" Class="text-white ml-2" Text="Event Name " runat="server"></asp:Label><asp:TextBox ID="txtAddEventName" runat="server" placeholder="Event Name" required="true"></asp:TextBox>
            <br />
             <br />
            <asp:Label ID="lblEventDescription" Class="text-white ml-2" Text="Event Description " runat="server"></asp:Label><asp:TextBox ID="txtEventDescription" required="true" runat="server" placeholder="Event Description" TextMode="MultiLine"></asp:TextBox>
      <br />
        <br />
        <div>
            <asp:Label ID="lblDateDay" class="text-white ml-2" Text="Day " runat="server"></asp:Label><asp:DropDownList ID="dropDay" runat="server" Height="20px" Width="126px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
         
            <br />
            <br />

            <asp:Label ID="lblDay" class="text-white ml-2" Text="Month" runat="server"></asp:Label><asp:DropDownList ID="DropMonth" runat="server">
                <asp:ListItem>January</asp:ListItem>
                <asp:ListItem>February</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
                <asp:ListItem>April</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>August</asp:ListItem>
                <asp:ListItem>September</asp:ListItem>
                <asp:ListItem>October</asp:ListItem>
                <asp:ListItem>November</asp:ListItem>
                <asp:ListItem>December</asp:ListItem>
            </asp:DropDownList>
            
            <br />
            <br />

            <asp:Label ID="lblYear" Class="text-white ml-2" Text="Year " runat="server"></asp:Label><asp:DropDownList ID="DropYear" runat="server" Height="23px" Width="88px">
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2020</asp:ListItem>
                <asp:ListItem>2021</asp:ListItem>
                <asp:ListItem>2022</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <center><asp:Button ID="btnAddEvent" Type="button" Class="btn btn-outline-light" runat="server" Text="Add Event" OnClick="btnAddEvent_Click"/></center>
        </div>		
 					
 	    </div>



        </div>



                 </div>
 		</div>
    </div>
	</div>

  

    
    
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
    <!-- JQuery Easing -->
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    
    

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