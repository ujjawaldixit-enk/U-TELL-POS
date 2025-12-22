<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GenericProject.Login" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>UNIDATA-Login</title>
    <meta content="Themesdesign" name="author" />
    <link rel="shortcut icon" href="design/assets/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="design/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <link href="design/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
    <link href="design/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
</head>
<body class="auth-body-bg">
    <div>
        <div class="container-fluid p-0">
            <div class="row no-gutters">
                <div class="col-lg-4">
                    <div class="authentication-page-content p-4 d-flex align-items-center min-vh-100">
                        <div class="w-100">
                            <form runat="server" class="auth-login-form mt-2">
                                <div class="row justify-content-center">
                                    <div class="col-lg-9">
                                        <div>
                                            <div class="text-center">
                                                <div>
                                                    <a href="index.html" class="logo">
                                                        <img src="design/assets/images/SkyLogo.png" style="width: 50%;" alt="logo">
                                                    </a>
                                                </div>
                                                <h4 class="font-size-18 mt-4">Welcome Back !</h4>
                                                <p class="text-muted">Sign in to continue to UNIDATA.</p>
                                            </div>
                                            <div class="p-2 mt-5">
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
                                                    <asp:Button runat="server" class="btn btn-primary w-md waves-effect waves-light" Style="width: 100%;" ID="btnSubmit" Text="Log In" OnClick="btnSubmit_Click" />
                                                </div>
                                                <div class="mt-4 text-center">
                                                    <a href="ForgotPassword.aspx" class="text-muted"><i class="mdi mdi-lock mr-1"></i><b>Forgot your password?</b></a>
                                                </div>
                                                <div class="mt-4 text-center">
                                                    <p>© All Right Reserved By <b><a href="https://virtuzo.in/" target="_blank">Virtuzo Infosystems Pvt. Ltd.</a></b></p>
                                                </div>
                                            </div>
                                            <div class="mt-5 text-center">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="authentication-bg">
                        <img src="design/assets/images/rent.jpg" style="width:100%; height:100%;"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="design/assets/libs/jquery/jquery.min.js"></script>
    <script src="design/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="design/assets/libs/metismenu/metisMenu.min.js"></script>
    <script src="design/assets/libs/simplebar/simplebar.min.js"></script>
    <script src="design/assets/libs/node-waves/waves.min.js"></script>
    <script src="design/assets/js/app.js"></script>
</body>
</html>

