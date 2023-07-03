<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Culead - Multipurpose Landing Page Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="HTML5 Landing Template" />
        <meta name="keywords" content="Landing, Multipurpose, Application, Clean, Saas, Dashboard, Bootstrap4" />
        <meta content="Uniquecrewdesign" name="author" />
        <meta content="uniquecrewdesign@gmail.com" name="Email" />
        <meta content="http://shreethemes.in/" name="Website" />
        <!-- favicon -->
        <link rel="shortcut icon" href="/resources/images/favicon.ico">
        <!-- Bootstrap css -->
        <link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Icons -->
        <link href="/resources/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.11/css/unicons.css">
        <!-- Main css File -->
        <link href="/resources/css/style.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <!-- Loader Start -->
        <!-- <div id="preloader">
            <div id="status">
                <div class="logo">
                    <img src="/resources/images/layer-group.svg" height="80" class="d-block mx-auto" alt="">
                </div>
            </div>
        </div> -->
        <!-- Loader End -->

        <!-- Back to home Start -->
        <div class="back-to-home rounded d-none d-sm-block">
            <a href="/" class="text-white rounded d-inline-block text-center"><i data-feather="home" class="fea icon-sm"></i></a>
        </div>
        <!-- Back to home End -->

        <!-- Hero Start -->
        <section class="user-pages d-flex align-items-center" style="background: url('images/home/user.jpg') center center;">
            <div class="bg-overlay"></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5 col-md-8">
                        <div class="login-page bg-white shadow-lg rounded p-4 mt-4 position-relative">
                            <div class="text-center">
                                <a href="javascript:void(0)">
                                    <div class="media align-items-center justify-content-center">
                                        <img src="/resources/images/layer-group.svg" class="mr-1" style="height: 36px; width: 36px;" alt="">
                                        <div>
                                            <img src="/resources/images/logo.png" height="16" alt="">
                                        </div>
                                    </div>
                                </a>
                                <h5 class="my-4">Login</h5>
                            </div>
                            <form action="/customers/login" method="post" class="login-form">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label>고객번호 <span class="text-danger">*</span></label>
                                            <input type="password" name="customerNumber" class="form-control" name="s" required="" placeholder="고객번호 :">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label>Password <span class="text-danger">*</span></label>
                                            <input type="text" name="contactFirstName" class="form-control"  required="" placeholder="이름 :">
                                        </div>
                                    </div>
                                       <div class="col-12">
                                          <div class="d-flex justify-content-between">
                                           <div class="form-group d-inline-block">
                                                <div class="custom-control custom-checkbox">
                                                   <input type="checkbox" class="custom-control-input" id="customCheck1">
                                                   <label class="custom-control-label" for="customCheck1">Remember me</label>
                                               </div>
                                            </div>
                                           <p class="forgot-pass mb-0"><a href="/customers/findPassword" class="text-dark font-weight-bold">Forgot password ?</a></p>
                                        </div>
                                         <div class="col-12">
                                             <input type="submit" class="btn btn-primary btn-block" value="로그인">
                                                 <% if (request.getAttribute("errorMessage") != null) { %>
                                                 <p style="color: red;"><%= request.getAttribute("errorMessage") %></p>
                                                 <% } %>
                                         </div>
                                         <div class="col-12 text-center">
                                             <p class="mb-0 mt-3"><small class="text-dark mr-2">Don't have an account ?</small> <a href="/employees/save" class="text-dark font-weight-bold">회원가입</a></p>
                                         </div><!--end col-->
                                </div>
                            </form>
                        </div><!--end login-->
                    </div>
                </div><!--end row-->
            </div> <!--end container-->
        </section><!--end section-->
        <!-- Hero End -->

        <!-- javascript -->
        <script src="/resources/js/jquery-3.5.1.min.js"></script>
        <script src="/resources/js/bootstrap.bundle.min.js"></script>
        <script src="/resources/js/jquery.easing.min.js"></script>
        <script src="/resources/js/scrollspy.min.js"></script>
        <!-- Icon -->
        <script src="/resources/js/feather.min.js"></script>
        <script src="https://unicons.iconscout.com/release/v2.1.11/script/monochrome/bundle.js"></script>
        <!-- Main Js -->
        <script src="/resources/js/app.js"></script>




    </body>
</html>