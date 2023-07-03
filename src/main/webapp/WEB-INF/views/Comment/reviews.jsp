<html>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="KR">

<head>
    <meta charset="utf-8" />
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <title>Culead - 강의 수강평 및 후기</title>
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
                            <li><a href="page-blank.jsp">후기 및 수강평</a></li>
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
                        <h3 class="text-white">후기 및 수강평</h3>
                        <section class="community-header">
                            <div class="community-header__content">
                              <h2 class="community-header__title">
                              수강평
                              <small class="community-header__title-small">
                                총 <span class="has-text-weight-bold">${CommentNumbers}</span>개,
                                만족도 <span class="has-text-weight-bold">${CommentAvgStarNo}</span>%
                              </small></h2>
                              <p class="community-header__sub-title">🔥실시간으로 올라오는 진짜 수강평!🔥</p>
                            </div>
                          </section>
                        <div class="breadcrumb-position">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow-md mb-0">
                                    <li class="breadcrumb-item"><a href="/">Culead</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">후기 및 수강평</li>
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

    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="row align-items-center">
                        <div class="col-lg-9 col-md-7">
                        </div>
                        <!--end col-->

                        <div class="col-lg-3 col-md-5 mt-4 pt-2 mt-sm-0 pt-sm-0">
                            <ul class="pagination justify-content-center mb-0">
                                <li class="page-item active"><a class="page-link h6 mb-0" href="javascript:void(0)">강의 수강평</a></li>
                                <li class="page-item"><a class="page-link h6 mb-0" href="javascript:void(0)">멘토링 후기</a></li>
                            </ul>
                        </div>
                        <!--end col-->
                    </div>
                    <!--end row-->
                </div>
                <!--end col-->
                <c:forEach items="${commentList}" var="commentList">
                    <div class="col-lg-6 mt-4 pt-2">
                        <div class="card event-schedule rounded border-0 shadow">
                            <div class="card-body">
                                <div class="media">
                                    <ul class="date text-center text-primary mr-3 mb-0 list-unstyled">

                                        <div class="rating_star">
                                            <div class="star_solid" style="width: 100%"><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="1">
                                                    <c:choose>
                                                        <c:when test="${commentList.starNo eq 1}">
                                                            <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="1">
                                                    <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM405.8 317.9l27.8 162L288 403.5 142.5 480l27.8-162L52.5 203.1l162.7-23.6L288 32l72.8 147.5 162.7 23.6-117.7 114.8z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="2">
                                                    <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM405.8 317.9l27.8 162L288 403.5 142.5 480l27.8-162L52.5 203.1l162.7-23.6L288 32l72.8 147.5 162.7 23.6-117.7 114.8z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="3">
                                                    <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM405.8 317.9l27.8 162L288 403.5 142.5 480l27.8-162L52.5 203.1l162.7-23.6L288 32l72.8 147.5 162.7 23.6-117.7 114.8z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="4">
                                                    <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM405.8 317.9l27.8 162L288 403.5 142.5 480l27.8-162L52.5 203.1l162.7-23.6L288 32l72.8 147.5 162.7 23.6-117.7 114.8z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="5">
                                                    </c:when>
                                                    <c:when test="${commentList.starNo eq 2}">
                                                        <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="2">
                                                    <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="2">
                                                    <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM405.8 317.9l27.8 162L288 403.5 142.5 480l27.8-162L52.5 203.1l162.7-23.6L288 32l72.8 147.5 162.7 23.6-117.7 114.8z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="4">
                                                    <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM405.8 317.9l27.8 162L288 403.5 142.5 480l27.8-162L52.5 203.1l162.7-23.6L288 32l72.8 147.5 162.7 23.6-117.7 114.8z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="3">
                                                    <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM405.8 317.9l27.8 162L288 403.5 142.5 480l27.8-162L52.5 203.1l162.7-23.6L288 32l72.8 147.5 162.7 23.6-117.7 114.8z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="2">
                                                    </c:when>
                                                    <c:when test="${commentList.starNo eq 3}">
                                                        <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="2">
                                                    <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="2">
                                                    <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="2">
                                                    <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM405.8 317.9l27.8 162L288 403.5 142.5 480l27.8-162L52.5 203.1l162.7-23.6L288 32l72.8 147.5 162.7 23.6-117.7 114.8z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="4">
                                                    <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM405.8 317.9l27.8 162L288 403.5 142.5 480l27.8-162L52.5 203.1l162.7-23.6L288 32l72.8 147.5 162.7 23.6-117.7 114.8z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="3">
                                                    </c:when>
                                                    <c:when test="${commentList.starNo eq 4}">
                                                        <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="2">
                                                    <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="2">
                                                    <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="2">
                                                    <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="2">
                                                    <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM405.8 317.9l27.8 162L288 403.5 142.5 480l27.8-162L52.5 203.1l162.7-23.6L288 32l72.8 147.5 162.7 23.6-117.7 114.8z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="4">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="2">
                                                    <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="3">
                                                    <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="4">
                                                    <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                </svg><svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="5">
                                                    <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                                    </c:otherwise>
                                                    </c:choose>
                                            </div>
                                            </li>
                                            <li class="month h6 font-weight-bold">${commentList.commentCreatedTime}</li>
                                            <img src="/resources/images/Lec/${commentList.image}" class="img-fluid border rounded" alt="" width="200" height="200">
                                    </ul>
                                    <div class="media-body content">
                                        <h5><a href="javascript:void(0)" class="text-dark title">${commentList.commentContents}</a></h5>
                                        <p class="text-muted mb-0"><a href="javascript:void(0)"><span class="relative_course">강의명: ${commentList.productName}</span></a>
                                        <br><span class="author">글쓴이: ${commentList.commentWriter}</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end col-->
                </c:forEach>
            </div>
            <!--end-->
        </div>
        <!--end container-->
         <!--paging-->
            <div class="mt-5 col-12">
                <ul class="pagination justify-content-center mb-0">
                    <c:choose>
                        <%-- 현재 페이지가 1페이지면 이전 글자만 보여줌 --%>
                        <c:when test="${paging.page <= 1}">
                            <li class="page-item"><a class="page-link" href="" aria-label="Previous">Previous</a></li>
                        </c:when>
                        <%-- 1페이지가 아닌 경우에는 [이전]을 클릭하면 현재 페이지보다 1 작은 페이지 요청 --%>
                        <c:otherwise>

                            <li class="page-item"><a class="page-link" href="/comment/reviews?page=${paging.page-1}" aria-label="Previous">Previous</a></li>
                        </c:otherwise>
                    </c:choose>

                    <%-- for(int i=startPage; i<=endPage; i++) --%>
                    <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
                        <c:choose>
                            <%-- 요청한 페이지에 있는 경우 현재 페이지 번호는 텍스트만 보이게 --%>

                            <c:when test="${i eq paging.page}">
                                <li class="page-item active"><a class="page-link" href="/comment/reviews/?page=${i}">${i}</a></li>
                            </c:when>
                            <c:otherwise>
                                <li class="page-item"><a class="page-link" href="/comment/reviews?page=${i}">${i}</a></li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <c:choose>
                        <c:when test="${paging.page >= paging.maxPage}">
                            <li class="page-item"><a class="page-link" href="" aria-label="Next">Next</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item"><a class="page-link" href="/comment/reviews/?page=${paging.page+1}" aria-label="Next">Next</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
            <!--end section-->
    </section>
    <!--end section-->















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
    <script src="/resources/js/jquery-3.5.1.min.js"></script>
    <script src="/resources/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/jquery.easing.min.js"></script>
    <script src="/resources/js/scrollspy.min.js"></script>
    <!-- Magnific popup -->
    <script src="/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="/resources/js/magnific.init.js"></script>
    <!-- Icon -->
    <script src="/resources/js/feather.min.js"></script>
    <script src="https://unicons.iconscout.com/release/v2.1.11/script/monochrome/bundle.js"></script>
    <!-- Sldier -->
    <script src="/resources/js/flickity.pkgd.min.js "></script>
    <script src="/resources/js/flickity.init.js "></script>
    <!-- Main Js -->
    <script src="/resources/js/app.js"></script>
</body>

</html>