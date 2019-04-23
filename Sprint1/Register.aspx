<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <!-- Custom Styles -->
<link rel="stylesheet" href="custom.css">

    <title>Register</title>
  </head>
  <body>

       <%-- <asp:Label ID="LblSuccessfulRegister" runat="server" Text="- Business successfully registered!" Visible="False" ForeColor="Blue"></asp:Label>--%>      

<%--            <asp:Label ID="LblCheckList" runat="server" Text="Type of students you would like to recruit" Font-Bold="True" Font-Underline="True"></asp:Label>
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>Agriculture, Food, and Natural Resources</asp:ListItem>
                <asp:ListItem>Architecture and Construction</asp:ListItem>
                <asp:ListItem>Arts, Audio/Video Technology, and Communication</asp:ListItem>
                <asp:ListItem>Business, Management, and Administration</asp:ListItem>
                <asp:ListItem>Education and Training</asp:ListItem>
                <asp:ListItem>Finance</asp:ListItem>
                <asp:ListItem>Government and Public Administration</asp:ListItem>
                <asp:ListItem>Health Science</asp:ListItem>
                <asp:ListItem>Hospitality and Tourism</asp:ListItem>
                <asp:ListItem>Human Services</asp:ListItem>
                <asp:ListItem>Information Technology</asp:ListItem>
                <asp:ListItem>Law, Public Safety, Corrections, and Security</asp:ListItem>
                <asp:ListItem>Manufacturing</asp:ListItem>
                <asp:ListItem>Marketing, Sales, and Service</asp:ListItem>
                <asp:ListItem>Science, Technology, Engineering, and Mathematics</asp:ListItem>
                <asp:ListItem>Transportation, Distribution, and Mathematics</asp:ListItem>
            </asp:CheckBoxList>--%>



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
                <li><a href="Default.aspx">
                    <div class="nav-item btn btn-maingreen-outline action-btn">LOG IN</div>
                </a>
                </li>
            </ul>
        </div>
    </nav>
    <!-- END OF NAV -->


    <div class="container">
        <div class="py-5 text-left">
            <h1 class="text-maingreen mt-5">Lets Get Started.</h1>
            <p class="lead">Begin by telling us a little about your business. You can fill in the details later.</p>
        </div>

        <!-- BODY -->
        <div class="row mb-5">
            <div class="col-md-4 order-md-2 mb-4 d-none d-md-block">
                <img class="gearsimg" src="images/gears.gif">
            </div>
            <div class="col-md-8 order-md-1">
                <h4 class="mb-3">Business Information</h4>
                <form class="needs-validation" novalidate id="form2" runat="server">
                    <div class="mb-3">
                        <asp:Label ID="LblOrgName" runat="server" Text="Organization Name"></asp:Label>
                        <asp:TextBox ID="TxtOrgName" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorOrgName" runat="server"
                            ErrorMessage="(Required)"
                            ControlToValidate="TxtOrgName"
                            ValidationGroup="RequiredValidation"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="LblUsername" runat="server" Text="Username"></asp:Label>
                        <asp:TextBox ID="TxtUserName" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server"
                            ErrorMessage="(Required)"
                            ControlToValidate="TxtUserName"
                            ValidationGroup="RequiredValidation"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="LblJobTitle" runat="server" Text="Job Title"></asp:Label>
                        <br />
                        <asp:TextBox ID="TxtJobTitle" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorJobTitle" runat="server"
                            ErrorMessage="(Required)"
                            ControlToValidate="TxtJobTitle"
                            ValidationGroup="RequiredValidation"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label id="LblFirstName" for="firstName">First name</label>
                            <asp:TextBox class="form-control" ID="TxtFirstName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ErrorMessage="(Required)"
                                ControlToValidate="TxtFirstName"
                                ValidationGroup="RequiredValidation"
                                ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="lastName" id="LblLastName">Last name</label>
                            <asp:TextBox class="form-control" ID="TxtLastName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ErrorMessage="(Required)"
                                ControlToValidate="TxtLastName"
                                ValidationGroup="RequiredValidation"
                                ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </div>

                    </div>

                    <div class="mb-3">
                        <asp:Label ID="LblEmailAddress" class="text-muted" runat="server" Text="Email Address"></asp:Label>
                        <asp:TextBox ID="TxtEmailAddress" class="form-control" placeholder="you@example.com" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmailAddress" runat="server"
                            ErrorMessage="(Required)"
                            ControlToValidate="TxtEmailAddress"
                            ValidationGroup="RequiredValidation"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <small class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="firstName" id="LblPassword">Password</label>
                            <asp:TextBox ID="TxtPassword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ErrorMessage="(Required)"
                                ControlToValidate="TxtPassword"
                                ValidationGroup="RequiredValidation"
                                ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="lastName" ID="LblConfirmPassword">Confirm Password</label>
                            <asp:CompareValidator ID="CompareValidator1" runat="server"
                                ControlToValidate="TxtConfirmPassword"
                                ControlToCompare="TxtPassword"
                                ErrorMessage="Password must match!"
                                ValidationGroup="ValidationSame"
                                ForeColor="Red" />
                            <br />
                            <asp:TextBox ID="TxtConfirmPassword" class="form-control" runat="server"  TextMode="Password"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidation" runat="server"
                                ErrorMessage="(Required)"
                                ControlToValidate="TxtConfirmPassword"
                                ValidationGroup="RequiredValidation"
                                ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="col-12 pt-0 mb-2 negmargin">
                            <small class="form-text text-muted">Must be 8 characters, 1 uppercase letter, and 1 special character.</small>
                        </div>
                    </div>
                    <div class="mb-3">

                        <label for="email" ID="LblPhoneNumber">Phone Number <span class="text-muted"></span></label>
                        <asp:TextBox ID="TxtPhoneNumber" runat="server" class="form-control" placeholder="000-000-0000"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="phoneValidator"  runat="server"
                            ControlToValidate="TxtPhoneNumber"
                            ValidationGroup="RequiredValidation"
                            ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
                        <asp:Label ID="phoneLabel" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                    </div>
                    <%-- <asp:Label ID="LblSuccessfulRegister" runat="server" Text="- Business successfully registered!" Visible="False" ForeColor="Blue"></asp:Label>--%>
                       <asp:Button ID="BtnRegister" runat="server" Text="Register" class="btn btn-maingreen submitbutton" OnClick="BtnRegister_Click" ValidationGroup="RequiredValidation" />
                    <asp:Button ID="BtnBack" runat="server" Text="Back" class="btn btn-maingreen submitbutton" OnClick="BtnBack_Click" />
                </form>
            </div>
        </div>


    </div>

    <footer class="mastfoot mt-5">
        <div class="row justify-content-between align-items-center">
            <div class="col-md-3 col-sm-6 offset-md-5 offset-sm-4 offset-xs-0">
                <p class="mb-1">© 2019 Next Step Go</p>

            </div>

            <div class="col-2 col-xs-1 footerlogo">
                <img class="footerimgmd" src="images/cuedin-logo.svg">
            </div>
        </div>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>