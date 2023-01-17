﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="Wallet.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>CleverMind - Signin</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="admin/images/favicon.png" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous" />
    <link href="admin/css/style.css" rel="stylesheet" />
</head>
<body class="h-100">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->

    <div class="login-form-bg h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card login-form mb-0">
                            <div class="card-body pt-5">

                                <%--<a class="text-center" href="index.html"> <h4>Rosella</h4></a>--%>
                                <form class="mt-5 mb-5 login-input">
                                    <div class="form-group">
                                        <input type="email" class="form-control"  placeholder="Email" required="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Password" required="" />
                                    </div>
                                    <button class="btn login-form__btn submit w-100">Sign In</button>
                                </form>
                                <p class="mt-5 login-form__footer">Dont have account? <a href="signup.aspx" class="text-primary">Sign Up</a> now</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="admin/plugins/common/common.min.js"></script>
    <script src="admin/js/custom.min.js"></script>
    <script src="admin/js/settings.js"></script>
    <script src="admin/js/gleek.js"></script>
    <script src="admin/js/styleSwitcher.js"></script>

</body>
</html>