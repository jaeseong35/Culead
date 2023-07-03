<html>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="KR">

<head>
    <meta charset="utf-8" />
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                            <li><a href="event-over.jsp">Q%A</a></li>
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
    <section class="bg-half d-table w-100" style="background: url('/resources/images/home/pages.jpg') center center;">
        <div class="bg-overlay" style="background-image: url('/resources/images/home/39262_79422_811.jpg')"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="title-heading">
                        <h3 class="text-black">학습 관리</h3>
                        <div class="breadcrumb-position">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow-md mb-0">
                                    <li class="breadcrumb-item"><a href="/">Culead</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">내 학습</li>
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
    <div class="position-relative">
        <div class="shape overflow-hidden text-primary">
            <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
            </svg>
        </div>
    </div>
    <div class="position-relative">
        <div class="shape overflow-hidden text-white">
            <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
            </svg>
        </div>
    </div>
     <!-- Start -->
            <section class="section bg-light">
                <!-- Start Spaces -->
                <div class="container">
                    <div class="row mt-4 pt-2">
                        <ul class="col container-filter list-unstyled categories-filter text-center mb-0" id="filter">
                            <li class="list-inline-item"><a class="categories border d-block text-dark rounded active" data-filter="*">All</a></li>
                            <li class="list-inline-item"><a class="categories border d-block text-dark rounded" data-filter=".입문">학습중</a></li>
                            <li class="list-inline-item"><a class="categories border d-block text-dark rounded" data-filter=".초급">완강</a></li>
                            <li class="list-inline-item"><a class="categories border d-block text-dark rounded" data-filter=".중급">온라인</a></li>
                            <li class="list-inline-item"><a class="categories border d-block text-dark rounded" data-filter=".고급">오프라인</a></li>
                        </ul>
                    </div><!--end row-->

                    <div class="row projects-wrapper">
                    <c:forEach items="${myProductsList}" var="myProductsList">
                        <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2 ${myProductsList.productLine}">
                            <div class="card work-container work-modern position-relative overflow-hidden shadow rounded-md border-0">
                                <div class="card-body p-0">
                                    <img src="/resources/images/Lec/${myProductsList.image}" class="img-fluid" alt="">
                                    <div class="overlay-work bg-dark"></div>
                                    <div class="content">
                                        <a href="/products?productCode=${myProductsList.productCode}" class="product-name title text-white h5">${myProductsList.productName}</a>

                                        <small class="text-light">${myProductsList.productLine}</small>
                                        <small class="text-light">${myProductsList.skillName}</small>
                                    </div>
                                    <div class="icons text-center">
                                        <a href="images/work/7.jpg" class="text-primary work-icon bg-white d-inline-block rounded-pill mfp-image"><i data-feather="camera" class="fea icon-sm"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div><!--end col-->
                        </c:forEach>
                    </div><!--end row-->
                </div><!--end container-->
                <!-- End space -->










    <!-- Footer Start -->
    <footer class="footer bg-footer mt-5">
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

          <!-- javascript -->
            <script src="/resources/js/jquery-3.5.1.min.js"></script>
            <script src="/resources/js/bootstrap.bundle.min.js"></script>
            <script src="/resources/js/jquery.easing.min.js"></script>
            <script src="/resources/js/scrollspy.min.js"></script>
            <!-- Magnific popup -->
            <script src="/resources/js/jquery.magnific-popup.min.js"></script>
            <script src="/resources/js/isotope.js"></script>
            <script src="/resources/js/portfolio.init.js"></script>
            <script src="/resources/js/magnific.init.js"></script>
            <!-- Icon -->
            <script src="/resources/js/feather.min.js"></script>
            <script src="https://unicons.iconscout.com/release/v2.1.11/script/monochrome/bundle.js"></script>
            <!-- Datepicker -->
            <script src="/resources/js/flatpickr.min.js"></script>
            <script src="/resources/js/flatpickr.init.js"></script>
            <!-- SLIDER -->
            <script src="/resources/js/owl.carousel.min.js "></script>
            <script src="/resources/js/owl.init.js "></script>
            <!-- Main Js -->
            <script src="/resources/js/app.js"></script>
</body>
</html>