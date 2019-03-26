<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="greenbg">

 <!-- NAVIGAION --> 
 <nav class="navbar mb-5 navbar-expand-md navbar-light bg-light">

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
        <a class="nav-link mr-2" href="#">ABOUT US<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">SUPPORT</a>
      </li>
      <li><a href="Register.aspx"><div class="nav-item btn btn-maingreen-outline action-btn">REGISTER</div></a></li>
    </ul>
  </div>
</nav>
  <!-- END OF NAV -->
  
   <div class="row"></div>
    <div class="row justify-content-center">
    	<div class="col-lg-5 col-md-6 col-sm-8 login-panel">
    		<h1 class="loginheader">Log In</h1>
    		<form id="form2" runat="server">
  				<div class="form-group">
  				  <label for="exampleInputEmail1" class="loginlabel" runat="server">Username</label>
  				  <asp:Textbox class="form-control min-imput" id="txtUsername" aria-describedby="emailHelp" placeholder="" runat="server"></asp:Textbox>
  				  <small id="usernameHelp" class="form-text text-muted" runat="server">We'll never share your username with anyone else.</small>
             
  				</div>
  				<div class="form-group">
  				  <label for="exampleInputPassword1" class="loginlabel">Password</label>
  				  <asp:Textbox type="password" class="form-control min-imput" id="txtPassword" placeholder="" runat="server" TextMode="Password"></asp:Textbox>
  				   <a href="ForgotPassword.aspx"><small id="passwordHelp" class="form-text passwordhelp" runat="server">Forgot Password?</small></a>
  				</div>
  				<asp:Button id="Login" type="submit" class="btn btn-maingreen submitbutton" runat="server" ValidationGroup="login" Text="Submit" OnClick="Login_Click"></asp:Button>
			</form>
    	</div>
    </div>
    <div class= "row justify-content-center">
    	<div class="col-lg-5 col-md-6 col-sm-8 login-panel-bottom">
        	<a href="Register.aspx"><div class="btn btn-mainblue-outline registerbutton">Not a Member? Create an Account</div></a>
    	</div>
    </div>
</div>
<!-- FOOTER -->
  <footer class="loginfooter">
    <span class= "d-inline mr-2 text-white-50 poweredby">Powered By </span>
    	<img class="footerimgsm" src="images/cuedin-logo.svg">    
</footer>

</asp:Content>