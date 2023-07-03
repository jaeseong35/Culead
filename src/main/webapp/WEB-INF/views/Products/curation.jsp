
<!DOCTYPE html>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="KR">
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
``
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

        <!-- Navbar STart -->
        <header id="topnav" class="defaultscroll sticky">
            <div class="container">
                <!-- Logo container-->
                <a class="logo" href="index.html">
                    <div class="media align-items-center">
                        <span class="text-primary"><img src="/resources/images/layer-group.svg" class="logo-icon mr-1" alt=""></span>
                        <div>
                            <img src="/resources/images/logo.png" class="l-dark" height="16" alt="">
                            <img src="/resources/images/logo-light.png" class="l-light" height="16" alt="">
                        </div>
                    </div>
                </a>
                <!-- Logo container -->
                <div class="buy-button">
                    <a href="javascript:void(0)" class="btn btn-primary" data-toggle="modal" data-target="#LoginForm">Signup</a>
                </div><!--end login button-->
                <!-- End Logo container-->
                <div class="menu-extras">
                    <div class="menu-item">
                        <!-- Mobile menu toggle-->
                        <a class="navbar-toggle">
                            <div class="lines">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </a>
                        <!-- End mobile menu toggle-->
                    </div>
                </div>

                <div id="navigation">
                    <!-- Navigation Menu-->
                    <ul class="navigation-menu nav-light">
                        <li class="has-submenu">
                            <a href="javascript:void(0)">Home</a><span class="menu-arrow"></span>
                            <ul class="submenu">
                                <li><a href="index.html">Home One</a></li>
                                <li><a href="index-two.html">Home Two</a></li>
                                <li><a href="index-three.html">Home Three</a></li>
                                <li><a href="index-four.html">Home Four</a></li>
                                <li><a href="index-five.html">Home Five</a></li>
                                <li><a href="index-six.html">Home Six</a></li>
                                <li><a href="index-seven.html">Home Seven</a></li>
                                <li><a href="index-eight.html">Home Eight</a></li>
                                <li><a href="index-nine.html">Home Nine</a></li>
                            </ul>
                        </li>

                        <li class="has-submenu">
                            <a href="javascript:void(0)">Pages</a><span class="menu-arrow"></span>
                            <ul class="submenu">
                                <li><a href="page-about.html">About us</a></li>
                                <li><a href="page-services.html">Services</a></li>
                                <li><a href="page-pricing.html">Pricing</a></li>
                                <li><a href="page-benefits.html">Benefits</a></li>
                                <li><a href="page-team.html">Team</a></li>
                                <li><a href="page-faqs.html">FAQs</a></li>
                                <li><a href="page-terms.html">Terms Policy</a></li>
                                <li class="has-submenu">
                                    <a href="javascript:void(0)">Auth Pages</a><span class="submenu-arrow"></span>
                                    <ul class="submenu">
                                        <li><a href="page-login.html">Login</a></li>
                                        <li><a href="page-signup.html">Signup</a></li>
                                        <li><a href="page-reset-password.html">Reset Password</a></li>
                                    </ul>
                                </li>
                                <li><a href="404.html">404</a></li>
                                <li><a href="page-blank.html">Blank Page</a></li>
                            </ul>
                        </li>

                        <li class="has-submenu">
                            <a href="javascript:void(0)">Blog</a><span class="menu-arrow"></span>
                            <ul class="submenu">
                                <li><a href="page-blog.html">Blog</a></li>
                                <li><a href="page-blog-sidebar.html">Blog - Sidebar</a></li>
                                <li><a href="page-blog-detail.html">Single Blog</a></li>
                            </ul>
                        </li>

                        <li class="has-submenu">
                            <a href="javascript:void(0)">Events</a><span class="menu-arrow"></span>
                            <ul class="submenu">
                                <li><a href="event-over.html">Overview</a></li>
                                <li><a href="event-list.html">Event List</a></li>
                            </ul>
                        </li>

                        <li><a href="page-contact.html">Contact</a></li>
                    </ul><!--end navigation menu-->
                    <div class="buy-menu-btn d-none">
                        <a href="javascript:void(0)" class="btn btn-primary" data-toggle="modal" data-target="#LoginForm">Signup</a>
                    </div><!--end login button-->
                </div><!--end navigation-->
            </div><!--end container-->
        </header><!--end header-->
        <!-- Navbar End -->

        <!-- Hero Start -->
        <section class="bg-half d-table w-100" style="background: url('/resources/images/home/pages.jpg') center center;">
            <div class="bg-overlay" style="background-image: url('/resources/images/home/bg-bg.png')"></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-12 text-center">
                        <div class="title-heading">
                            <h3 class="text-white">Blogs & Events</h3>
                            <div class="breadcrumb-position">
                                <nav aria-label="breadcrumb" class="d-inline-block">
                                    <ul class="breadcrumb bg-white rounded shadow-md mb-0">
                                        <li class="breadcrumb-item"><a href="index.html">Culead</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Blogs</li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- Hero End -->

        <!-- Start -->
        <section class="section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-7 col-12">
                        <div class="row">
                        <c:forEach items="${productsList}" var="product">
                            <div class="col-lg-6 col-12 mb-4 pb-2">
                                <div class="card blog-post border-0 rounded shadow overflow-hidden">
                                    <img src="/resources/images/work/7.jpg" class="img-fluid" alt="">
                                    <div class="card-body content p-4">
                                        <a href="/products?productCode=${product.productCode}">${product.productName}</a>
                                        <div class="post-meta d-flex justify-content-between mt-3">
                                            <ul class="list-unstyled mb-0">
                                                <li class="list-inline-item mr-2 mb-0"><a href="javascript:void(0)" class="text-muted like"><i class="mdi mdi-heart-outline mr-1"></i>33</a></li>
                                                <li class="list-inline-item"><a href="javascript:void(0)" class="text-muted comments"><i class="mdi mdi-comment-outline mr-1"></i>08</a></li>
                                            </ul>
                                            <a href="javascript:void(0)" class="text-muted readmore">Read More <i class="mdi mdi-chevron-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div><!--end col-->
                        </c:forEach>
                        </div><!--end row-->

                        <div class="row">
                            <div class="col-12">
                                <ul class="pagination justify-content-center mb-0">
                                    <li class="page-item"><a class="page-link" href="javascript:void(0)" aria-label="Previous">Previous</a></li>
                                    <li class="page-item active"><a class="page-link" href="javascript:void(0)">1</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0)" aria-label="Next">Next</a></li>
                                </ul>
                            </div><!--end col-->
                        </div><!--end row-->
                    </div><!--end col-->






                    <div class="col-lg-4 col-md-5 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                        <div class="sidebar sticky-sidebar">
                            <!-- SEARCH -->
                            <div class="widget mb-4 pb-2">
                                <div id="search2" class="widget-search mb-0">
                                    <form action="/products/paging" method="get" role="search" method="get" id="searchform" class="searchform">
                                        <div>
                                             <input type="text" id="s" class="border rounded" name="productName" placeholder="검색어를 입력하세요" value="${not empty param.productName ? param.productName : ''}">
                                               <input type="hidden" name="page" value="${page}">
                                              <input type="submit" id="searchsubmit" value="검색">
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- SEARCH -->
                            <!-- CATAGORIES -->
                            <div class="widget mb-4 pb-2">
                                <h6 class="widget-title">Catagories</h6>
                                <div class="p-4 mt-4 rounded shadow">

                                    <ul class="list-unstyled mb-0 catagory">
                                        <li><a href="jvascript:void(0)">입문</a> <span class="float-right">13</span></li>
                                        <li><a href="jvascript:void(0)">초급</a> <span class="float-right">09</span></li>
                                        <li><a href="jvascript:void(0)">중급</a> <span class="float-right">18</span></li>
                                        <li><a href="jvascript:void(0)">고급</a> <span class="float-right">20</span></li>
                                    </ul>
                                </div>
                            </div>
                       </form>
                            <!-- CATAGORIES -->

                            <!-- RECENT POST -->
                            <div class="widget mb-4 pb-2">
                                <h6 class="widget-title">Recent Post</h6>
                                <div class="p-4 mt-4 rounded shadow">
                                    <div class="clearfix post-recent">
                                        <div class="post-recent-thumb float-left"> <a href="jvascript:void(0)"> <img alt="img" src="/resources/images/work/7.jpg" class="img-fluid rounded"></a></div>
                                        <div class="post-recent-content float-left"><a href="jvascript:void(0)">Consultant Business</a><span class="text-muted mt-2">15th June, 2019</span></div>
                                    </div>
                                    <div class="clearfix post-recent">
                                        <div class="post-recent-thumb float-left"> <a href="jvascript:void(0)"> <img alt="img" src="/resources/images/work/8.jpg" class="img-fluid rounded"></a></div>
                                        <div class="post-recent-content float-left"><a href="jvascript:void(0)">Look On The Glorious Balance</a> <span class="text-muted mt-2">15th June, 2019</span></div>
                                    </div>
                                    <div class="clearfix post-recent">
                                        <div class="post-recent-thumb float-left"> <a href="jvascript:void(0)"> <img alt="img" src="/resources/images/work/9.jpg" class="img-fluid rounded"></a></div>
                                        <div class="post-recent-content float-left"><a href="jvascript:void(0)">Research Financial.</a> <span class="text-muted mt-2">15th June, 2019</span></div>
                                    </div>
                                </div>
                            </div>
                            <!-- RECENT POST -->

                            <!-- TAG CLOUDS -->
                            <div class="widget mb-4 pb-2">
                                <h6 class="widget-title">Tags Cloud</h6>
                                <div class="tagcloud p-4 mt-4 rounded shadow">
									<a href="jvascript:void(0)" class="rounded">Business</a>
									<a href="jvascript:void(0)" class="rounded">Finance</a>
									<a href="jvascript:void(0)" class="rounded">Marketing</a>
									<a href="jvascript:void(0)" class="rounded">Fashion</a>
                                    <a href="jvascript:void(0)" class="rounded">Bride</a>
                                    <a href="jvascript:void(0)" class="rounded">Lifestyle</a>
                                    <a href="jvascript:void(0)" class="rounded">Travel</a>
                                    <a href="jvascript:void(0)" class="rounded">Beauty</a>
                                    <a href="jvascript:void(0)" class="rounded">Video</a>
                                    <a href="jvascript:void(0)" class="rounded">Audio</a>
								</div>
                            </div>
                            <!-- TAG CLOUDS -->

                            <!-- SOCIAL -->
                            <div class="widget">
                                <h6 class="widget-title">Follow us</h6>
                                <div class="pt-4 px-4 pb-3 mt-4 rounded shadow">
                                    <ul class="list-unstyled social-icon social mb-0">
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="facebook" class="fea icon-sm fea-social"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="instagram" class="fea icon-sm fea-social"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="twitter" class="fea icon-sm fea-social"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="linkedin" class="fea icon-sm fea-social"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- SOCIAL -->
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- End -->

        <!-- Footer Start -->
        <footer class="footer bg-footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-12 mb-lg-0 mb-md-4 pb-lg-0 pb-md-2">
                        <a href="#" class="logo-footer">
                            <div class="media align-items-center">
                                <span class="text-primary"><img src="/resources/images/layer-group.svg" class="logo-icon mr-1" alt=""></span>
                                <img src="/resources/images/logo-light.png" height="16" alt="">
                            </div>
                        </a>
                        <p class="mt-4">This is just a simple text made for this unique and awesome template, you can replace it with any text..</p>
                        <ul class="list-unstyled social-icon social mb-0 mt-4">
                            <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="facebook" class="fea icon-sm fea-social"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="instagram" class="fea icon-sm fea-social"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="twitter" class="fea icon-sm fea-social"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="linkedin" class="fea icon-sm fea-social"></i></a></li>
                        </ul><!--end icon-->
                    </div><!--end col-->

                    <div class="col-lg-7 col-12">
                        <div class="row">
                            <div class="col-md-4 mt-4 pt-2 mt-sm-0 pt-sm-0">
                                <h5 class="text-light footer-head">Company</h5>
                                <ul class="list-unstyled footer-list mt-4">
                                    <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> About us</a></li>
                                    <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> Services</a></li>
                                    <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> Pricing</a></li>
                                    <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> Project</a></li>
                                    <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> Blog</a></li>
                                </ul>
                            </div><!--end col-->

                            <div class="col-md-4 mt-4 pt-2 mt-sm-0 pt-sm-0">
                                <h5 class="text-light footer-head">Support</h5>
                                <ul class="list-unstyled footer-list mt-4">
                                    <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> Help Desk</a></li>
                                    <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> Live Chat</a></li>
                                    <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> Knowledge</a></li>
                                    <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> Messaging</a></li>
                                </ul>
                            </div><!--end col-->

                            <div class="col-md-4 mt-4 pt-2 mt-sm-0 pt-sm-0">
                                <h5 class="text-light footer-head">Contacts</h5>
                                <ul class="list-unstyled footer-list mt-4">
                                    <li><i data-feather="map-pin" class="fea icon-sm mr-2"></i><a href="#" class="text-foot">Londan, England</a></li>
                                    <li><i data-feather="mail" class="fea icon-sm mr-2"></i><a href="mailto:contact@example.com" class="text-foot">test@domain.com</a></li>
                                    <li><i data-feather="phone" class="fea icon-sm mr-2"></i><a href="tel:+152534-468-854" class="text-foot">+(12) 1254-5487</a></li>
                                </ul>
                            </div><!--end col-->
                        </div><!--end row-->
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </footer><!--end footer-->
        <footer class="footer bg-footer footer-bar">
            <div class="container text-center">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <p class="mb-0">© 2020 Culead. Design with <i class="mdi mdi-heart text-danger"></i> by <a href="http://Uniquecrew.in" target="_blank" class="text-reset">Uniquecrew</a>.</p>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </footer><!--end footer-->
        <!-- Footer End -->

        <!-- Back to top -->
        <a href="#" class="btn btn-icon btn-primary back-to-top"><i data-feather="arrow-up" class="icons"></i></a>
        <!-- Back to top -->

        <!-- Login Modal Content Start -->
        <div class="modal fade" id="LoginForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
                <div class="modal-content rounded shadow border-0">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Register Now </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form class="login-form">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Your Email <span class="text-danger">*</span></label>
                                        <input type="email" class="form-control"  name="email" required="" placeholder="Your Email :">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Password <span class="text-danger">*</span></label>
                                        <input type="password" class="form-control"  required="" placeholder="Password :">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                                            <label class="custom-control-label" for="customCheck1">I Accept <a href="#" class="text-primary">Terms And Condition</a></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary btn-block">Create Account</button>
                                </div>
                                <div class="col-12 text-center">
                                    <p class="mb-0 mt-3"><small class="text-dark mr-2">Already have an account ?</small> <a href="page-login.html" class="text-dark font-weight-bold">Sign in</a></p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Login Modal Content End -->

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