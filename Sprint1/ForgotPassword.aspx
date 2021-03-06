﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Forgot Password</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <!-- Custom Styles -->
	<link rel="stylesheet" href="css/custom.css">

    <title>Login</title>
  </head>
  <body>
  <div class="login-screen">

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
    </ul>
  </div>
</nav>
  <!-- END OF NAV -->
  
<!-- CARD BODY -->
  <!----------- LOGIN CARD ------------->
<div class="welcome-card" id="card">
    <div class="front row card no-gutters border-white">
    <div class="col-md-6 d-none d-md-block forget-img">
    </div>
    <div class="col-md-6">
      <div class="card-body login-card-body">
        <h1 class="loginheader">We all forget sometimes</h1>
        <p class="desc-text">Enter your email or username to reset your password.</p>
    		<form class="login-form" runat="server">
  				<div class="form-group">
  				  <label for="exampleInputEmail1" class="loginlabel">Email</label>
  				  <input type="email" class="form-control min-imput" id="txtEmail" runat="server" aria-describedby="emailHelp" placeholder="">
  				  <h6 class="mt-3">OR</h6>
  				</div>
  				<div class="form-group">
  				  <label for="exampleInputPassword1" class="loginlabel">Username</label>
  				  <input type="password" class="form-control min-imput" id="txtUsername" runat="server" placeholder="">
  				</div>
                <asp:Label ID="lbl_msg" runat="server" Text="Please enter correct information"></asp:Label><br />
     <asp:Button type="submit" id="reset" class="btn btn-maingreen submitbutton" runat="server" onclick="btn_send_Click" Text="Reset Password"></asp:Button>
    </form>

      </div>
    </div>
	</div>
  
 </div>
</div>
  
   
<!-- FOOTER -->
  <footer class="loginfooter">
    <span class= "d-inline mr-2 text-white-50 poweredby">Powered By </span>
    	<img class="footerimgsm" src="images/cuedin-logo.svg">    
</footer>
	 
 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    
    <!--Jquery flip -->
	<script src="https://cdn.rawgit.com/nnattawat/flip/master/dist/jquery.flip.min.js"></script>
   
   <!-- custom -->
   <script src="js/custom.js"></script>
   <script src="js/reset.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>