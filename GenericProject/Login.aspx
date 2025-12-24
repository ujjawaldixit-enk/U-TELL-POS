<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GenericProject.Login" %>

<!doctype html>
<html lang="en">
<head>
    <title>U-TEL</title>
    <meta charset="utf-8" />
    <script src="Models/GenericJS.js"></script>
    <meta content="Themesdesign" name="author" />
    <link rel="shortcut icon" href="design/assets/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="design/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <link href="design/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
    <link href="design/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <link href="design/assets/css/custom.css" rel="stylesheet" />
</head>
<body class="auth-body-bg">
    <div class="container-fluid p-0">
        <div class="row no-gutters">
            <div class="col-lg-7">
                <div class="authentication-bg">
                    <img src="design/assets/loginpageimage/loginbanner.png" style="width: 100%; height: 100%;" />
                </div>
            </div>
            <div class="col-lg-5">
                <div class="login_side">
                    <div class="login_part">
                          <a href="index.html" class="logo_img">
                              <img src="design/assets/loginpageimage/logologin.png" style="width: 100%;" alt="logo" class="img-responsive">
                          </a>
                     <a href="javascript:void(0);" class="contat_dtail">
                        <i class="fas fa-phone-alt"></i>
                        <span>Contact Us</span>

                       <div class="contact-popup">
                                <div class="popup-item">
                                    <i class="fas fa-phone-alt"></i>
                                    <strong>Phone:</strong>
                                    <span class="popup-text">+91 6193257479</span>
                                </div>
                                <div class="popup-item">
                                    <i class="fas fa-envelope"></i>
                                    <strong>Email:</strong>
                                    <span class="popup-text">support@example.com</span>
                                </div>
                            </div>
                      </a>
                    </div>
                    <form runat="server" class="auth-login-form mt-2">
                          
                        <div class="login_head">
                            <h4 class="font-size-18 mt-4">Welcome Back !</h4>
                            <p class="text-muted">Sign in to continue to U-TEL.</p>
                        </div>

                        <div class="p-3 p-md-5 mt-3 mt-md-5 w-100 w-md-75 mx-auto">
                            <div class="form-group auth-form-group-custom mb-4">
                                <i class="ri-user-2-line auti-custom-input-icon"></i>
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="txtUsername" runat="server" placeholder="Enter username">
                            </div>
                            <div class="form-group auth-form-group-custom mb-4">
                                <i class="ri-lock-2-line auti-custom-input-icon"></i>
                                <label for="userpassword">Password</label>
                                <input type="password" class="form-control" id="txtPass" runat="server" placeholder="Enter password">
                            </div>
                            <div class="mt-4 text-center">
                                <a href="javascript:void(0);" style="width: 50%;" onclick="login();" class="btn btn-primary w-md waves-effect waves-light">Log In</a>
                            </div>
                            <div class="mt-4 text-center">
                                <a href="ForgotPassword.aspx" class="text-muted"><i class="mdi mdi-lock mr-1"></i><b>Forgot your password?</b></a>
                            </div>
                         
                        </div>
                           <div class="login_footer">
                               <p>© All Right Reserved By <strong><a href="https://virtuzo.in/" target="_blank">ENK Technologies Pvt. Ltd.</a></strong></p>
                           </div>
                    </form>
                </div>
            </div>
        </div>

       

    </div>
    <script src="jsMethod/auth.js"></script>
    <%-----------top-contact-detail----------------%>
    <script>
        document.addEventListener('click', function (e) {
            const contact = document.querySelector('.contat_dtail');
            const popup = contact.querySelector('.contact-popup');

            // agar contact pe click hua
            if (contact.contains(e.target)) {
                popup.classList.toggle('d-block');
            }
            // agar bahar click hua
            else {
                popup.classList.remove('d-block');
            }
        });
    </script>
     <%-----------end top-contact-detail----------------%>
  
    <script>
        function login() {
            const password = document.getElementById('<%= txtPass.ClientID %>').value;
            const username = document.getElementById('<%= txtUsername.ClientID %>').value;
            if (!username || !password) {
                alert('Please enter username/password.');
                return false;
            }
            else {
                loginuser(password, username);
            }
        }
    </script>
    <script src="design/assets/js/app.js"></script>
    <script src="design/assets/libs/jquery/jquery.min.js"></script>
    <script src="design/assets/libs/node-waves/waves.min.js"></script>
    <script src="design/assets/libs/metismenu/metisMenu.min.js"></script>
    <script src="design/assets/libs/simplebar/simplebar.min.js"></script>
    <script src="design/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>

