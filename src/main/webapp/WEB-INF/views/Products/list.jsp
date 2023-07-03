<html>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="KR">

<head>
    <meta charset="utf-8" />
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <title>Culead - Home 플랫폼</title>
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
    <section class="bg-half-260 d-table w-100" id="home" style="background: url('/resources/images/home/bg-bg.png') center center;">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row mt-5 justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="title-heading mt-4">
                        <h1 class="font-weight-bold mb-3 text-white title-dark">Software Developer</h1>
                        <p class="para-desc text-white-50 para-dark mx-auto">우리는
                            때로 무언가를
                            배워야만 합니다.</p>
                        <div class="mt-4 pt-2">
                            <a href="https://github.com/jaeseong35" class="btn btn-primary mt-2 scroll-down">Contact Me</a>
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
    <div class="position-relative">
        <div class="shape overflow-hidden text-white">
            <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
            </svg>
        </div>
    </div>
    <!-- Hero End -->


    <div class="container mt-100 mt-60" id="subscribe">
        <div class="py-5 px-4 bg-primary rounded-pill" style="background: url('images/home/subscribe.png') center center;">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="section-title text-center mb-6 pb-2">
                        <h4 class="title text-white mb-4">배우고, 나누고, 성장하세요</h4>
                    </div>
                </div>
                <!--end col-->
                <div class="col-lg-8">
                    <div class="subcribe-form mt-4">
                        <div class="form-group mb-0">
                            <form action="/products/paging" method="get">
                                <input type="text" class="rounded-pill" name="productName" placeholder="배우고 싶은 프로그래밍 언어나 기술스택을 검색해주세요" value="${not empty param.productName ? param.productName : ''}">
                                <input type="hidden" name="page" value="${page}">
                                <input type="hidden" name="productLine" value="${page}">
                                <button type="submit" class="btn btn-pills btn-success">Search Now</button>
                            </form>
                        </div>
                    </div>
                </div>
                <!--end col-->
            </div>
            <!--end row-->
        </div>
        <!--end div-->
    </div>
    <!--end container-->



    <section class="section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-5 col-12">
                    <div class="video-container">
                        <div class="video-wrapper">
                            <iframe width="400" height="280" src="https://www.youtube.com/embed/q_Dbhe3AuRw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
                <!--end col-->
                <div class="col-md-7 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                    <div class="section-title ml-lg-5">
                        <h4 class="title mb-4"><span class="font-weight-bold">꾸준함은 모든 것을 이긴다</span></h4>
                        <p class="text-muted mb-0">
                            A river cuts through rock not because of its power but because of its persistence. <br>- James Watkins -<br>
                            강물은 바위를 부술 수도 있다. 강물이 바위를 부술 수 있는 것은 강한 힘이 있어서가 아니고 꾸준하기 때문이다.
                        </p>

                        <div class="mt-4">
                            <a href="/products/paging" class="btn btn-primary">Learn Now<i data-feather="arrow-right" class="fea icon-sm"></i></a>
                        </div>
                    </div>
                </div>
                <!--end col-->
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>

    <div class="container mt-4 pt-2">
        <div class="row justify-content-center">
            <div class="col-lg-2 col-md-2 col-6 text-center py-4 py-sm-0 mt-md-4">
                <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white">
            </div>
            <!--end col-->

            <div class="col-lg-2 col-md-2 col-6 text-center py-4 py-sm-0 mt-md-4">
                <img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">
            </div>
            <!--end col-->

            <div class="col-lg-2 col-md-2 col-6 text-center py-4 py-sm-0 mt-md-4">
                <img src="https://img.shields.io/badge/linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">
            </div>
            <!--end col-->

            <div class="col-lg-2 col-md-2 col-6 text-center py-4 py-sm-0 mt-md-4">
                <img src="https://img.shields.io/badge/vue.js-4FC08D?style=for-the-badge&logo=vue.js&logoColor=white">
            </div>
            <!--end col-->

            <div class="col-lg-2 col-md-2 col-6 text-center pt-4 pt-sm-0 mt-md-4">
                <img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
            </div>
            <!--end col-->

            <div class="col-lg-2 col-md-2 col-6 text-center pt-4 pt-sm-0 mt-md-4">
                <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
            </div>
            <!--end col-->
        </div>
        <!--end row-->
    </div>
    <!--end container-->

    <div class="container mt-100 mt-60">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="section-title text-center mb-4 pb-2">
                    <h4 class="title mb-4">당연한 것을 간과하지 마세요</h4>
                    <p class="text-muted mb-0 para-desc mx-auto">새로운 기술을 탐구하고 혁신을 추구하는 개발자 블로그에 오신 것을 환영합니다. 창의적인 아이디어와 도전적인 마음으로 세상을 바꿀 수 있는 가능성을 탐험해보세요.</p>
                </div>
            </div>
            <!--end col-->
        </div>
        <!--end row-->

        <div class="row">
            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                <div class="card feature border-0 bg-transparent p-4 text-center">
                    <span class="text-primary h1"><i class="uil uil-presentation-line"></i></span>
                    <h5 class="mt-2">여러분의 실력에 대해 의심하지 마세요</h5>
                    <p class="text-muted mb-0">코드를 통해 혁신적인 아이디어를 실현하고, 독창적인 솔루션을 창조할 수 있습니다. </p>
                </div>
            </div>
            <!--end col-->

            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                <div class="card feature border-0 bg-transparent p-4 text-center">
                    <span class="text-primary h1"><i class="uil uil-compress-arrows"></i></span>
                    <h5 class="mt-2">오늘의 작은 노력이 내일의 큰 성과를 만듭니다</h5>
                    <p class="text-muted mb-0">지속적인 학습과 노력은 성공으로 이어집니다. 오늘의 작은 노력이 내일의 큰 성과를 만들어갈 수 있습니다</p>
                </div>
            </div>
            <!--end col-->

            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                <div class="card feature border-0 bg-transparent p-4 text-center">
                    <span class="text-primary h1"><i class="uil uil-eye"></i></span>
                    <h5 class="mt-2">열정과 꾸준함으로 개발자의 성장을 이뤄봅시다</h5>
                    <p class="text-muted mb-0">지금부터 시작하여 열정과 꾸준한 노력으로 개발자로서의 성장을 이루어나갑시다. 지식과 경험을 쌓아가며 끊임없이 발전해나갈 수 있습니다.</p>
                </div>
            </div>
            <!--end col-->

            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                <div class="card feature border-0 bg-transparent p-4 text-center">
                    <span class="text-primary h1"><i class="uil uil-heart"></i></span>
                    <h5 class="mt-2">혁신을 위해 도전하고 실패를 두려워하지 마세요</h5>
                    <p class="text-muted mb-0">새로운 아이디어를 시도하고, 실패를 두려워하지 마세요. 실패는 성공으로 가는 길에 포함된 소중한 경험입니다.</p>
                </div>
            </div>
            <!--end col-->

            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                <div class="card feature border-0 bg-transparent p-4 text-center">
                    <span class="text-primary h1"><i class="uil uil-layer-group"></i></span>
                    <h5 class="mt-2">문제는 언제나 해결될 수 있습니다</h5>
                    <p class="text-muted mb-0">문제에 직면했을 때 포기하지 마세요. 문제를 해결하는 데 집중하고 최선을 다하면 좋은 결과를 얻을 수 있습니다.</p>
                </div>
            </div>
            <!--end col-->

            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                <div class="card feature border-0 bg-transparent p-4 text-center">
                    <span class="text-primary h1"><i class="uil uil-flip-h"></i></span>
                    <h5 class="mt-2">개발자는 새로운 가능성을 창조합니다</h5>
                    <p class="text-muted mb-0">새로운 아이디어와 기술을 통해 혁신적인 솔루션을 만들어냄으로써 세상을 변화시키고 가능성을 확장합니다.</p>
                </div>
            </div>
            <!--end col-->
        </div>
        <!--end row-->
    </div>
    <!--end container-->

    <!-- start comment -->
    <section class="section">
        <div class="container mt-100 mt-60">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="section-title text-center mb-4 pb-2">
                        <h4 class="title mb-4"> ${CustomersNumbers} 명이
                            강의를 수강하고 있습니다.</h4>
                        <p class="text-muted mb-0 para-desc mx-auto">학교에서 배우기 어렵거나 큰 비용을
                            지불해야만 배울 수 있는 전문적인 지식들을 제공합니다.<br>
                            오픈 플랫폼의 이점을 통해 다양성과 경제성을 모두 높입니다.</p>
                    </div>
                </div>
                <!--end col-->
            </div>
            <!--end row-->

            <div class="row">
                <div class="col-12 mt-1 pt-2">
                    <div id="client-testi" class="owl-carousel owl-theme">
                        <c:forEach items="${resentCommentList}" var="resentCommentList">
                            <div class="client-testi rounded shadow-md text-center mt-5 m-3">
                                <c:if test="${ resentCommentList.image == null }">
                                    <img src="/resources/images/client/layer-group.svg" class="avatar avatar-small rounded-circle shadow-lg testi-img" alt="">
                                </c:if>
                                <c:if test="${ resentCommentList.image != null }">
                                    <img src="/resources/images/client/${resentCommentList.image}" class="avatar avatar-small rounded-circle shadow-lg testi-img" alt="">
                                </c:if>
                                <div class="content p-4">
                                    <ul class="list-unstyled mb-0 mt-4 text-warning">
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                    </ul>
                                    <p class="text-primary">${resentCommentList.commentWriter} <small class="text-muted d-block ml-2">${resentCommentList.commentCreatedTime}</small></p>
                                    <p class="text-muted mt-2 mb-0">" ${resentCommentList.commentContents} "</p>
                                </div>
                                <div class="quote-icon">
                                    <img src="/resources/images/illu/quotation.svg" class="avatar avatar-medium" style="opacity: 0.05;" alt="">
                                </div>
                                <!--end testi content-->
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-12 mt-4 pt-2 text-center">
                    <div class="alert alert-light alert-pills mb-0" role="alert">
                        <a href="javascript:void(0)" class="badge badge-pill badge-primary mr-2">Feedback</a>
                        <span class="content text-muted"> Leave your feedback</span>
                    </div>
                </div>
            </div>
            <!--end col-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->

    <!-- 로그인 계정 학습 강의 -->
    <c:if test="${ sessionScope.ContactFirstName != null }">
        <!-- Start Spaces -->
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="section-title text-center mb-4 pb-2">
                        <a href="/customers/courses">
                            <h4 class="title mb-4">내 학습<i class="mdi mdi-chevron-right"></i></h4>
                        </a>
                        <p class="text-muted mb-0 para-desc mx-auto">${sessionScope.ContactFirstName}님의 수강중인 강의</p>
                    </div>
                </div>
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
                    </div>
                    <!--end row-->

                    <div class="row projects-wrapper">
                        <c:forEach items="${myProductsList}" var="myProductsList">
                            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2 ${myProductsList.productLine}">
                                <div class="card work-container work-modern position-relative overflow-hidden shadow rounded-md border-0">
                                    <div class="card-body p-0">
                                        <img src="/resources/images/Lec/${myProductsList.image}" class="img-fluid" alt="">
                                        <div class="overlay-work bg-dark"></div>
                                        <div class="content">
                                            <a href="/products?productCode=${myProductsList.productCode}" class="product-name title text-white h5">${myProductsList.productName}</a>
                                            <li class="list-inline-item mr-2 mb-0"><a href="javascript:void(0)" class="text-white like"><i class="mdi mdi-sort-variant"></i>${myProductsList.productLine} </a></li>
                                            <li class="list-inline-item mr-2 mb-0"><a href="javascript:void(0)" class="text-white like"><i class="mdi mdi-folder-multiple"></i>${myProductsList.skillName} </a></li>
                                        </div>
                                        <div class="icons text-center">
                                            <a href="images/work/7.jpg" class="text-primary work-icon bg-white d-inline-block rounded-pill mfp-image"><i data-feather="camera" class="fea icon-sm"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end col-->
                        </c:forEach>
                    </div>
                    <!--end row-->
                </div>
                <!--end container-->
                <!-- End space -->
            </div>
        </div>
    </c:if>


    <!-- 로그인 계정 학습 추천 강의 -->
    <c:if test="${ sessionScope.ContactFirstName != null }">
        <section class="section">
            <div class="container mt-100 mt-60">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center mb-4 pb-2">
                            <h4 class="title mb-4">내가 학습한 분야 인기 강의</h4>
                            <p class="text-muted mb-0 para-desc mx-auto">${sessionScope.ContactFirstName}님이 수강한 강의의 분야 중 가장 인기있는 강의입니다.</p>
                        </div>
                    </div>
                    <!--end col-->
                </div>
                <!--end row-->
                <div class="row projects-wrapper2">
                    <c:forEach items="${RecommendProductsDTOList}" var="RecommendProductsDTOList">
                        <div class="col-lg-4 col-md-4 col-6 mt-4 pt-2">
                            <div class="card work-container work-modern position-relative overflow-hidden shadow rounded-md border-0">
                                <div class="card-body p-0">
                                    <a href="javascript:void(0)">
                                        <img src="resources/images/Lec/${RecommendProductsDTOList.image}" class="img-fluid rounded-md" alt="work-image">
                                        <div class="overlay-work bg-dark"></div>
                                    </a>
                                    <div class="content">
                                        <a href="/products?productCode=${RecommendProductsDTOList.productCode}" class="title text-white h5">${RecommendProductsDTOList.productName}</a>
                                        <h6 class="text-white d-block font-weight-bold mb-0">${RecommendProductsDTOList.skillName}</h6>
                                        <ul class="list-unstyled mb-0">
                                            <li class="list-inline-item mr-2 mb-0"><a href="javascript:void(0)" class="text-white like"><i class="mdi mdi-sort-variant"></i>${RecommendProductsDTOList.productLine} </a></li>
                                            <li class="list-inline-item"><a href="javascript:void(0)" class="text-white comments"><i class="mdi mdi-comment-outline mr-1"></i>${RecommendProductsDTOList.commentsNumber}</a></li>
                                            <li class="list-inline-item"><a href="javascript:void(0)" class="text-white comments"><i class="mdi mdi-currency-krw mr-1"></i>
                                                    <fmt:formatNumber value="${RecommendProductsDTOList.buyPrice}" pattern="#,###" /></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end col-->
                    </c:forEach>
                </div>
                <!--end container-->
            </div>
            <!--end row-->
        </section>
    </c:if>




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
    <section class="section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="section-title text-center mb-4 pb-2">
                        <a href="/products/paging">
                            <h4 class="title mb-4">신규 강의<i class="mdi mdi-chevron-right"></i></h4>
                        </a>
                        <p class="text-muted mb-0 para-desc mx-auto">따끈따끈, 신규 강의를 만나보세요!</p>
                    </div>
                </div>
                <!--end col-->
            </div>
            <!--end row-->
            <div class="row">
                <c:forEach items="${productsList}" var="products">
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card blog-post border-0 rounded shadow overflow-hidden">
                            <img src="resources/images/Lec/${products.image}" class="img-fluid" alt="">
                            <div class="card-body content p-4">
                                <a href="/products?productCode=${products.productCode}" class="product-name title text-dark h5">${products.productName}</a>
                                ${products.skillName}
                                <div class="post-meta d-flex justify-content-between mt-3">
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item mr-2 mb-0"><a href="javascript:void(0)" class="text-muted like"><i class="mdi mdi-sort-variant"></i>${products.productLine} </a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="text-muted comments"><i class="mdi mdi-comment-outline mr-1"></i>${products.commentsNumber}</a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="text-muted comments"><i class="mdi mdi-currency-krw mr-1"></i>
                                                <fmt:formatNumber value="${products.buyPrice}" pattern="#,###" /></a></li>
                                    </ul>
                                    <a href="/products?productCode=${products.productCode}" class="text-muted readmore">Read More <i class="mdi mdi-chevron-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end col-->
                </c:forEach>
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
    <!-- End blog -->



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
    <section class="section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="section-title text-center mb-4 pb-2">
                        <a href="/products/paging?page=&charge=free">
                            <h4 class="title mb-4">무료 강의<i class="mdi mdi-chevron-right"></i></h4>
                        </a>
                        <p class="text-muted mb-0 para-desc mx-auto">무료 강의부터 가볍게 시작해 보세요</p>
                    </div>
                </div>
                <!--end col-->
            </div>
            <!--end row-->

            <div class="row">
                <c:forEach items="${FreeProductsDTOList}" var="FreeProductsDTOList">
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card blog-post border-0 rounded shadow overflow-hidden">
                            <img src="resources/images/Lec/${FreeProductsDTOList.image}" class="img-fluid" alt="">
                            <div class="card-body content p-4">
                                <a href="/products?productCode=${FreeProductsDTOList.productCode}" class="product-name title text-dark h5">${FreeProductsDTOList.productName}</a>
                                <br>${FreeProductsDTOList.skillName}
                                <div class="post-meta d-flex justify-content-between mt-3">
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item mr-2 mb-0"><a href="javascript:void(0)" class="text-muted like"><i class="mdi mdi-sort-variant"></i>${FreeProductsDTOList.productLine} </a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="text-muted comments"><i class="mdi mdi-comment-outline mr-1"></i>${FreeProductsDTOList.commentsNumber}</a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="text-muted comments"><i class="mdi mdi-currency-krw mr-1"></i>무료</a></li>
                                    </ul>
                                    <a href="/products?productCode=${FreeProductsDTOList.productCode}" class="text-muted readmore">Read More <i class="mdi mdi-chevron-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end col-->
                </c:forEach>
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
    <!-- End blog -->
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
    <section class="section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="section-title text-center mb-4 pb-2">

                        <a href="/products/paging?productName=&productLine=입문&page=">
                            <h4 class="title mb-4">입문자분도 할 수 있어요.<i class="mdi mdi-chevron-right"></i></h4>
                        </a>
                        <p class="text-muted mb-0 para-desc mx-auto">이미 검증된 쉽고 친절한 입문자 강의!!</p>
                    </div>
                </div>
                <!--end col-->
            </div>
            <!--end row-->
            <div class="row">
                <c:forEach items="${beginnerProductsDTOList}" var="beginnerProductsDTOList">
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card blog-post border-0 rounded shadow overflow-hidden">
                            <img src="resources/images/Lec/${beginnerProductsDTOList.image}" class="img-fluid" alt="">
                            <div class="card-body content p-4">
                                <a href="/products?productCode=${beginnerProductsDTOList.productCode}" class="product-name title text-dark h5">${beginnerProductsDTOList.productName}</a>
                                ${beginnerProductsDTOList.skillName}
                                <div class="post-meta d-flex justify-content-between mt-3">
                                    <ul class="list-unstyled mb-0">
                                        <li class="list-inline-item mr-2 mb-0"><a href="javascript:void(0)" class="text-muted like"><i class="mdi mdi-sort-variant"></i></i>${beginnerProductsDTOList.productLine} </a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="text-muted comments"><i class="mdi mdi-comment-outline mr-1"></i>${beginnerProductsDTOList.commentsNumber}</a></li>


                                        <li class="list-inline-item"><a href="javascript:void(0)" class="text-muted comments"><i class="mdi mdi-currency-krw mr-1"></i>
                                                <fmt:formatNumber value="${beginnerProductsDTOList.buyPrice}" pattern="#,###" /></a></li>
                                    </ul>
                                    <a href="/products?productCode=${beginnerProductsDTOList.productCode}" class="text-muted readmore">Read More <i class="mdi mdi-chevron-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end col-->
                </c:forEach>
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
    <!-- End blog -->

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
    <script src="/resources/js/flickity.pkgd.min.js "></script>
    <script src="/resources/js/flickity.init.js "></script>
    <script src="/resources/js/owl.carousel.min.js "></script>
    <script src="/resources/js/owl.init.js "></script>
    <!-- Main Js -->
    <script src="/resources/js/app.js"></script>
    <script>
        const productNames = document.querySelectorAll('.product-name');

        productNames.forEach((productName) => {
            const lineHeight = parseInt(window.getComputedStyle(productName).getPropertyValue('line-height'));
            const desiredLines = 2; // 원하는 줄 수

            // 실제 텍스트의 줄 수 계산
            const lineCount = Math.ceil(productName.clientHeight / lineHeight);

            // 최소 줄 수에 맞게 컨테이너의 높이를 조정
            if (lineCount < desiredLines) {
                productName.style.height = lineHeight * desiredLines + 'px';
            }
        });
    </script>
</body>

</html>