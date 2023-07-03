<html>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="KR">

<head>
    <meta charset="utf-8" />
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <title>Culead - 커뮤니티 상세보기</title>
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
    <!-- Icons -->
    <link href="/resources/css/magnific-popup.css" rel="stylesheet" type="text/css" />
    <!-- Slider -->
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/resources/css/owl.theme.default.min.css" />
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

    <!-- Navbar STart -->
    <header id="topnav" class="defaultscroll sticky">
        <div class="container">
            <!-- Logo container-->
            <a class="logo" href="/">
                <div class="media align-items-center">
                    <span class="text-primary"><img src="/resources/images/layer-group.svg" class="logo-icon mr-1" alt=""></span>
                    <div>
                        <img src="/resources/images/logo.png" class="l-dark" height="16" alt="">
                        <img src="/resources/images/logo-light.png" class="l-light" height="16" alt="">

                    </div>
                </div>
            </a>
            <!-- Logo container -->
            <c:if test="${ sessionScope.ContactFirstName == null }">
                <div class="buy-button">
                    <a href="/products/login" class="btn btn-primary scroll-down">Login</a>
                </div>
            </c:if>

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
                <!-- Nav Menu-->
                <ul class="navigation-menu nav-light">
                    <li class="has-submenu">
                        <a href="/products/paging">강의</a><span class="menu-arrow"></span>
                        <ul class="submenu">
                            <li><a href="/products/paging?&productLine=&productName=HTML/CSS&page=">HTML/CSS</a></li>
                            <li><a href="/products/paging?&productLine=&productName=JavaScript&page=">JavaScript</a></li>
                            <li><a href="/products/paging?&productLine=&productName=React&page=">React</a></li>
                            <li><a href="/products/paging?&productLine=&productName=Python&page=">Python</a></li>
                            <li><a href="/products/paging?&productLine=&productName=Java&page=">Java</a></li>
                            <li><a href="/products/paging?&productLine=&productName=Spring&page=">Spring</a></li>
                            <li><a href="/products/paging?&productLine=&productName=Vue.js&page=">Vue.js</a></li>
                            <li><a href="/products/paging?&productLine=&productName=SQL&page=">SQL</a></li>
                            <li><a href="/products/paging?&productLine=&productName=Linux&page=">Linux</a></li>
                            <li><a href="/products/paging?&productLine=&productName=NetWork&page=">NetWork</a></li>
                            <li><a href="/products/paging?&productLine=&productName=AWS&page=">AWS</a></li>
                        </ul>
                    </li>

                    <li class="has-submenu">
                        <a href="javascript:void(0)">로드맵</a><span class="menu-arrow"></span>
                        <ul class="submenu">
                            <li><a href="page-about.jsp">About us</a></li>
                            <li><a href="page-services.jsp">Services</a></li>
                            <li><a href="page-pricing.jsp">Pricing</a></li>
                            <li><a href="page-benefits.jsp">Benefits</a></li>
                            <li><a href="page-team.jsp">Team</a></li>
                            <li><a href="page-faqs.jsp">FAQs</a></li>
                            <li><a href="page-terms.jsp">Terms Policy</a></li>
                            <li class="has-submenu">
                                <a href="javascript:void(0)">Auth Pages</a><span class="submenu-arrow"></span>
                                <ul class="submenu">
                                    <li><a href="page-login.jsp">Login</a></li>
                                    <li><a href="page-signup.jsp">Signup</a></li>
                                    <li><a href="page-reset-password.jsp">Reset Password</a></li>
                                </ul>
                            </li>
                            <li><a href="404.jsp">404</a></li>
                            <li><a href="page-blank.jsp">Blank Page</a></li>
                        </ul>
                    </li>

                    <li class="has-submenu">
                        <a href="javascript:void(0)">멘토링</a><span class="menu-arrow"></span>
                        <ul class="submenu">
                            <li><a href="page-blog.jsp">Blog</a></li>
                            <li><a href="page-blog-sidebar.jsp">Blog - Sidebar</a></li>
                            <li><a href="page-blog-detail.jsp">Single Blog</a></li>
                        </ul>
                    </li>

                    <li class="has-submenu">
                        <a href="/community/">커뮤니티</a><span class="menu-arrow"></span>
                        <ul class="submenu">
                            <li><a href="event-over.jsp">Q&A</a></li>
                            <li><a href="event-list.jsp">지식공유</a></li>
                            <li><a href="event-list.jsp">커뮤니티</a></li>
                            <li><a href="event-list.jsp">프로젝트</a></li>
                            <li><a href="event-list.jsp">스터디</a></li>
                            <li><a href="event-list.jsp">채용</a></li>
                        </ul>
                    </li>
                    <li><a href="/comment/reviews">후기 및 수강평</a></li>
                    <c:if test="${ sessionScope.ContactFirstName != null }">
                        <li class="has-submenu">
                            <a href="javascript:void(0)">MyPage</a><span class="menu-arrow"></span>
                            <ul class="submenu">
                                <li><a href="/customers/courses">내 학습</a></li>
                                <li><a href="page-blog-sidebar.jsp">멘토링</a></li>
                                <li><a href="page-blog-detail.jsp">작성한 게시글</a></li>
                                <li><a href="page-blog-detail.jsp">문의</a></li>
                                <li><a href="page-blog-detail.jsp">좋아요</a></li>
                                <li><a href="/customers/logout">로그아웃</a></li>
                            </ul>
                        </li>
                    </c:if>
                </ul>
                <!--end navigation menu-->
                <div class="buy-menu-btn d-none">
                    <a href="#/products/login"> ${sessionScope.ContactFirstName} Login </a>
                </div>
                <!--end login button-->
            </div>
            <!--end navigation-->
        </div>
        <!--end container-->
    </header>
    <!--end header-->
    <!-- Navbar End -->

    <!-- Hero Start -->
    <section class="bg-half d-table w-100" style="background: url('images/home/pages.jpg') center center;">
        <div class="bg-overlay" style="background-image: url('images/bg.png')"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="title-heading">
                        <h3 class="text-white">Private Space: Culead</h3>
                        <div class="breadcrumb-position">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow-md mb-0">
                                    <li class="breadcrumb-item"><a href="/">Culead</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Blogs</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!--end col-->
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
    <!-- Hero End -->

    <!-- Start -->
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-7 col-12">
                    <div class="card blog-post border-0 shadow rounded overflow-hidden">

                        <!--<img src="images/work/8.jpg" class="img-fluid" alt="">-->


                        <div class="card-body p-4 content">
                            <div class="title text-dark h5">${communityDTO.cmntyTitle}</div>
                            <p class="text-muted">${communityDTO.cmntyContent}</p>
                            <ul class="list-unstyled post-meta d-flex justify-content-between align-items-center mb-0 pt-3 border-top">
                                <li>
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item mr-1 mb-0"><a href="javascript:void(0)" class="text-muted like"><i class="mdi mdi-account"></i>${communityDTO.contactFirstName}</a></li>
                                        <li class="list-inline-item mr-1 mb-0"><a href="javascript:void(0)" class="text-muted like"><i class="mdi mdi-heart-outline mr-1"></i>${communityDTO.cmntyLike}</a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="text-muted comments"><i class="mdi mdi-comment-outline mr-1"></i>1</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <ul class="list-unstyled social-icon mb-0">
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="facebook" class="fea icon-sm fea-social"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="instagram" class="fea icon-sm fea-social"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="twitter" class="fea icon-sm fea-social"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="linkedin" class="fea icon-sm fea-social"></i></a></li>
                                    </ul>
                                    <!--end icon-->
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--end blog post-->

                    <!-- Comments Start -->
                    <div class="row">
                        <div class="col-12 mt-4 pt-2">
                            <div class="section-title">
                                <h5 class="mb-0">Comments :</h5>
                            </div>
                        </div>
                        <!--end col-->
                    </div>
                    <!--end row-->

                    <div class="row">
                        <div class="col-12 mt-4 pt-2">
                            <div class="p-4 shadow rounded">
                                <ul class="media-list list-unstyled mb-0">
                                    <li class="comment-desk">
                                        <a href="#" class="float-right text-muted"><i class="mdi mdi-reply"></i>&nbsp; Reply</a>
                                        <div class="d-flex align-items-center">
                                            <a class="float-left pr-3" href="#">
                                                <img src="images/client/01.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                            </a>
                                            <div class="overflow-hidden d-block">
                                                <h6 class="media-heading mb-0"><a href="javascript:void(0)" class="text-dark">Lorenzo Peterson</a></h6>
                                                <small class="text-muted">20th October, 2019 at 01:25 pm</small>
                                            </div>
                                        </div>
                                        <div class="mt-3">
                                            <p class="text-muted font-italic p-3 bg-light rounded">" There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour "</p>
                                        </div>
                                    </li>

                                    <li class="comment-desk mt-4">
                                        <a href="#" class="float-right text-muted"><i class="mdi mdi-reply"></i>&nbsp; Reply</a>
                                        <div class="d-flex align-items-center">
                                            <a class="float-left pr-3" href="#">
                                                <img src="images/client/02.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                            </a>
                                            <div class="overflow-hidden d-block">
                                                <h6 class="media-heading mb-0"><a href="javascript:void(0)" class="text-dark">Tammy Camacho</a></h6>
                                                <small class="text-muted">20th October, 2019 at 05:44 pm</small>
                                            </div>
                                        </div>
                                        <div class="mt-3">
                                            <p class="text-muted font-italic p-3 bg-light rounded">" There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour "</p>
                                        </div>
                                    </li>

                                    <li class="comment-desk mt-4">
                                        <a href="#" class="float-right text-muted"><i class="mdi mdi-reply"></i>&nbsp; Reply</a>
                                        <div class="d-flex align-items-center">
                                            <a class="float-left pr-3" href="#">
                                                <img src="images/client/03.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                            </a>
                                            <div class="overflow-hidden d-block">
                                                <h6 class="media-heading mb-0"><a href="javascript:void(0)" class="text-dark">Tammy Camacho</a></h6>
                                                <small class="text-muted">21th October, 2019 at 03:44 pm</small>
                                            </div>
                                        </div>
                                        <div class="mt-3">
                                            <p class="text-muted font-italic p-3 bg-light rounded">" There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour "</p>
                                        </div>

                                        <ul class="pl-4 pl-md-5 list-unstyled sub-comment">
                                            <li class="comment-desk mt-4">
                                                <a href="#" class="float-right text-muted"><i class="mdi mdi-reply"></i>&nbsp; Reply</a>
                                                <div class="d-flex align-items-center">
                                                    <a class="float-left pr-3" href="#">
                                                        <img src="images/client/04.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                    </a>
                                                    <div class="overflow-hidden d-block">
                                                        <h6 class="media-heading mb-0"><a href="javascript:void(0)" class="text-dark">Calvin Camacho</a></h6>
                                                        <small class="text-muted">21th October, 2019 at 05:55 pm</small>
                                                    </div>
                                                </div>
                                                <div class="mt-3">
                                                    <p class="text-muted font-italic p-3 bg-light rounded">" There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour "</p>
                                                </div>
                                            </li>

                                            <li class="comment-desk mt-4">
                                                <a href="#" class="float-right text-muted"><i class="mdi mdi-reply"></i>&nbsp; Reply</a>
                                                <div class="d-flex align-items-center">
                                                    <a class="float-left pr-3" href="#">
                                                        <img src="images/client/03.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                    </a>
                                                    <div class="overflow-hidden d-block">
                                                        <h6 class="media-heading mb-0"><a href="javascript:void(0)" class="text-dark">Tammy Camacho</a></h6>
                                                        <small class="text-muted">22th October, 2019 at 05:44 pm</small>
                                                    </div>
                                                </div>
                                                <div class="mt-3">
                                                    <p class="text-muted font-italic p-3 bg-light rounded">" There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour "</p>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Comments End -->

                    <!-- Leave Comments Start -->
                    <div class="row">
                        <div class="col-12 mt-4 pt-2">
                            <div class="section-title">
                                <h5 class="mb-0">Leave A Comment :</h5>
                            </div>
                        </div>
                        <!--end col-->
                    </div>
                    <!--end row-->

                    <div class="row">
                        <div class="col-12 mt-4 pt-2">
                            <form class="p-4 shadow rounded">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Your Comment</label>
                                            <textarea id="message" placeholder="Your Comment" rows="5" name="message" class="form-control" required=""></textarea>
                                        </div>
                                    </div>
                                    <!--end col-->

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Name <span class="text-danger">*</span></label>
                                            <input id="name" name="name" type="text" placeholder="Name" class="form-control" required="">
                                        </div>
                                    </div>
                                    <!--end col-->

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Your Email <span class="text-danger">*</span></label>
                                            <input id="email" type="email" placeholder="Email" name="email" class="form-control" required="">
                                        </div>
                                    </div>
                                    <!--end col-->

                                    <div class="col-md-12">
                                        <div class="send">
                                            <button type="submit" class="btn btn-block btn-primary">Send Comment</button>
                                        </div>
                                    </div>
                                    <!--end col-->
                                </div>
                                <!--end row-->
                            </form>
                            <!--end form-->
                        </div>
                        <!--end col-->
                    </div>
                    <!--end row-->
                    <!-- Leave Comments End -->
                </div>
                <!--end col-->

                <div class="col-lg-4 col-md-5 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                    <div class="sidebar sticky-sidebar">
                        <!-- SEARCH -->
                        <div class="widget mb-4 pb-2">
                            <div id="search2" class="widget-search mb-0">
                                <form role="search" method="get" id="searchform" class="searchform">
                                    <div>
                                        <input type="text" class="border rounded" name="s" id="s" placeholder="Search Keywords...">
                                        <input type="submit" id="searchsubmit" value="Search">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- SEARCH -->

                        <!-- RECENT POST -->
                        <div class="widget mb-4 pb-2">
                            <h6 class="widget-title">최신 게시글</h6>
                            <div class="p-4 mt-4 rounded shadow">
                                <div class="clearfix post-recent">
                                    <div class="post-recent-thumb float-left"> <a href="jvascript:void(0)"> <img alt="img" src="images/work/7.jpg" class="img-fluid rounded"></a></div>
                                    <div class="post-recent-content float-left"><a href="jvascript:void(0)">Consultant Business</a><span class="text-muted mt-2">15th June, 2019</span></div>
                                </div>
                                <div class="clearfix post-recent">
                                    <div class="post-recent-thumb float-left"> <a href="jvascript:void(0)"> <img alt="img" src="images/work/8.jpg" class="img-fluid rounded"></a></div>
                                    <div class="post-recent-content float-left"><a href="jvascript:void(0)">Look On The Glorious Balance</a> <span class="text-muted mt-2">15th June, 2019</span></div>
                                </div>
                                <div class="clearfix post-recent">
                                    <div class="post-recent-thumb float-left"> <a href="jvascript:void(0)"> <img alt="img" src="images/work/9.jpg" class="img-fluid rounded"></a></div>
                                    <div class="post-recent-content float-left"><a href="jvascript:void(0)">Research Financial.</a> <span class="text-muted mt-2">15th June, 2019</span></div>
                                </div>
                            </div>
                        </div>
                        <!-- RECENT POST -->

                        <!-- RECENT POST -->
                        <div class="widget mb-4 pb-2">
                            <h6 class="widget-title">주간 인기 게시글</h6>
                            <div class="p-4 mt-4 rounded shadow">
                                <div class="clearfix post-recent">
                                    <div class="post-recent-thumb float-left"> <a href="jvascript:void(0)"> <img alt="img" src="images/work/7.jpg" class="img-fluid rounded"></a></div>
                                    <div class="post-recent-content float-left"><a href="jvascript:void(0)">Consultant Business</a><span class="text-muted mt-2">15th June, 2019</span></div>
                                </div>
                                <div class="clearfix post-recent">
                                    <div class="post-recent-thumb float-left"> <a href="jvascript:void(0)"> <img alt="img" src="images/work/8.jpg" class="img-fluid rounded"></a></div>
                                    <div class="post-recent-content float-left"><a href="jvascript:void(0)">Look On The Glorious Balance</a> <span class="text-muted mt-2">15th June, 2019</span></div>
                                </div>
                                <div class="clearfix post-recent">
                                    <div class="post-recent-thumb float-left"> <a href="jvascript:void(0)"> <img alt="img" src="images/work/9.jpg" class="img-fluid rounded"></a></div>
                                    <div class="post-recent-content float-left"><a href="jvascript:void(0)">Research Financial.</a> <span class="text-muted mt-2">15th June, 2019</span></div>
                                </div>
                            </div>
                        </div>
                        <!-- RECENT POST -->

                        <!-- RECENT POST -->
                           <div class="widget mb-4 pb-2">
                                                 <h6 class="widget-title">오늘 인기 게시글</h6>
                                                 <div class="p-4 mt-4 rounded shadow">
                                                     <div class="clearfix post-recent">
                                                         <div class="post-recent-thumb float-left"> <a href="jvascript:void(0)"> <img alt="img" src="images/work/7.jpg" class="img-fluid rounded"></a></div>
                                                         <div class="post-recent-content float-left"><a href="jvascript:void(0)">Consultant Business</a><span class="text-muted mt-2">15th June, 2019</span></div>
                                                     </div>
                                                     <div class="clearfix post-recent">
                                                         <div class="post-recent-thumb float-left"> <a href="jvascript:void(0)"> <img alt="img" src="images/work/8.jpg" class="img-fluid rounded"></a></div>
                                                         <div class="post-recent-content float-left"><a href="jvascript:void(0)">Look On The Glorious Balance</a> <span class="text-muted mt-2">15th June, 2019</span></div>
                                                     </div>
                                                     <div class="clearfix post-recent">
                                                         <div class="post-recent-thumb float-left"> <a href="jvascript:void(0)"> <img alt="img" src="images/work/9.jpg" class="img-fluid rounded"></a></div>
                                                         <div class="post-recent-content float-left"><a href="jvascript:void(0)">Research Financial.</a> <span class="text-muted mt-2">15th June, 2019</span></div>
                                                     </div>
                                                 </div>
                          </div>
                        <!-- RECENT POST -->

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
                </div>
                <!--end col-->
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
    <!-- End -->

    <!-- Footer Start -->
    <footer class="footer bg-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-12 mb-lg-0 mb-md-4 pb-lg-0 pb-md-2">
                    <a href="#" class="logo-footer">
                        <div class="media align-items-center">
                            <span class="text-primary"><img src="images/layer-group.svg" class="logo-icon mr-1" alt=""></span>
                            <img src="images/logo-light.png" height="16" alt="">
                        </div>
                    </a>
                    <p class="mt-4">This is just a simple text made for this unique and awesome template, you can replace it with any text..</p>
                    <ul class="list-unstyled social-icon social mb-0 mt-4">
                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="facebook" class="fea icon-sm fea-social"></i></a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="instagram" class="fea icon-sm fea-social"></i></a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="twitter" class="fea icon-sm fea-social"></i></a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="linkedin" class="fea icon-sm fea-social"></i></a></li>
                    </ul>
                    <!--end icon-->
                </div>
                <!--end col-->

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
                        </div>
                        <!--end col-->

                        <div class="col-md-4 mt-4 pt-2 mt-sm-0 pt-sm-0">
                            <h5 class="text-light footer-head">Support</h5>
                            <ul class="list-unstyled footer-list mt-4">
                                <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> Help Desk</a></li>
                                <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> Live Chat</a></li>
                                <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> Knowledge</a></li>
                                <li><a href="javascript:void(0)" class="text-foot"><i class="mdi mdi-chevron-right mr-1"></i> Messaging</a></li>
                            </ul>
                        </div>
                        <!--end col-->

                        <div class="col-md-4 mt-4 pt-2 mt-sm-0 pt-sm-0">
                            <h5 class="text-light footer-head">Contacts</h5>
                            <ul class="list-unstyled footer-list mt-4">
                                <li><i data-feather="map-pin" class="fea icon-sm mr-2"></i><a href="#" class="text-foot">Londan, England</a></li>
                                <li><i data-feather="mail" class="fea icon-sm mr-2"></i><a href="mailto:contact@example.com" class="text-foot">test@domain.com</a></li>
                                <li><i data-feather="phone" class="fea icon-sm mr-2"></i><a href="tel:+152534-468-854" class="text-foot">+(12) 1254-5487</a></li>
                            </ul>
                        </div>
                        <!--end col-->
                    </div>
                    <!--end row-->
                </div>
                <!--end col-->
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </footer>
    <!--end footer-->
    <footer class="footer bg-footer footer-bar">
        <div class="container text-center">
            <div class="row justify-content-center">
                <div class="col-12">
                    <p class="mb-0">© 2020 Culead. Design with <i class="mdi mdi-heart text-danger"></i> by <a href="http://Uniquecrew.in" target="_blank" class="text-reset">Uniquecrew</a>.</p>
                </div>
                <!--end col-->
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </footer>
    <!--end footer-->
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
                                    <input type="email" class="form-control" name="email" required="" placeholder="Your Email :">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Password <span class="text-danger">*</span></label>
                                    <input type="password" class="form-control" required="" placeholder="Password :">
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
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/scrollspy.min.js"></script>
    <!-- Icon -->
    <script src="js/feather.min.js"></script>
    <script src="https://unicons.iconscout.com/release/v2.1.11/script/monochrome/bundle.js"></script>
    <!-- Main Js -->
    <script src="js/app.js"></script>
</body>

</html>