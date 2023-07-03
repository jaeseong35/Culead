<!DOCTYPE html>
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
        <link rel="shortcut icon" href="resources/images/favicon.ico">
        <!-- Bootstrap css -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Icons -->
        <link href="resources/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.11/css/unicons.css">
        <!-- Icons -->
        <link href="resources/css/magnific-popup.css" rel="stylesheet" type="text/css" />
        <!-- Slider -->
        <link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>
        <link rel="stylesheet" href="resources/css/owl.theme.default.min.css"/>
        <!-- Date picker -->
        <link rel="stylesheet" href="resources/css/flatpickr.min.css">
        <!-- Main css File -->
        <link href="resources/css/style.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <!-- Loader Start -->
        <!-- <div id="preloader">
            <div id="status">
                <div class="logo">
                    <img src="resources/images/layer-group.svg" height="80" class="d-block mx-auto" alt="">
                </div>
            </div>
        </div> -->
        <!-- Loader End -->

        <!-- Navbar STart -->
        <header id="topnav" class="defaultscroll sticky">
            <div class="container">
                <!-- Logo container-->
                <a class="logo" href="index.jsp">
                    <div class="media align-items-center">
                        <span class="text-primary"><img src="resources/images/layer-group.svg" class="logo-icon mr-1" alt=""></span>
                        <div>
                            <img src="resources/images/logo.png" class="l-dark" height="16" alt="">
                            <img src="resources/images/logo-light.png" class="l-light" height="16" alt="">
                        </div>
                    </div>
                </a>
                <!-- Logo container -->
                <div class="buy-button">
                    <a href="#signup" class="btn btn-primary scroll-down">Signup</a>
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
                    <!-- Nav Menu-->
                    <ul class="navigation-menu nav-light">
                        <li class="has-submenu">
                            <a href="javascript:void(0)">강의</a><span class="menu-arrow"></span>
                            <ul class="submenu">
                                <li><a href="index.jsp">Home One</a></li>
                                <li><a href="index-two.jsp">Home Two</a></li>
                                <li><a href="index-three.jsp">Home Three</a></li>
                                <li><a href="index-four.jsp">Home Four</a></li>
                                <li><a href="index-five.jsp">Home Five</a></li>
                                <li><a href="index-six.jsp">Home Six</a></li>
                                <li><a href="index-seven.jsp">Home Seven</a></li>
                                <li><a href="index-eight.jsp">Home Eight</a></li>
                                <li><a href="index-nine.jsp">Home Nine</a></li>
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
                            <a href="javascript:void(0)">커뮤니티</a><span class="menu-arrow"></span>
                            <ul class="submenu">
                                <li><a href="event-over.jsp">Overview</a></li>
                                <li><a href="event-list.jsp">Event List</a></li>
                            </ul>
                        </li>

                        <li><a href="page-contact.jsp">후기 및 수강평</a></li>
                    </ul><!--end navigation menu-->
                    <div class="buy-menu-btn d-none">
                        <a href="#signup" class="btn btn-primary scroll-down">Signup</a>
                    </div><!--end login button-->
                </div><!--end navigation-->
            </div><!--end container-->
        </header><!--end header-->
        <!-- Navbar End -->

        <!-- Hero Start -->
        <section class="bg-half-260 d-table w-100" id="home" style="background: url('resources/images/home/bg-bg.png') center center;">
            <div class="bg-overlay"></div>
            <div class="container">
                <div class="row mt-5 justify-content-center">
                    <div class="col-lg-12 text-center">
                        <div class="title-heading mt-4">
                            <h1 class="font-weight-bold mb-3 text-white title-dark">Software Developer</h1>
                            <p class="para-desc text-white-50 para-dark mx-auto">끊임없는 성장과 개발 도전기</p>
                            <div class="mt-4 pt-2">
                                <a href="https://github.com/jaeseong35" class="btn btn-primary mt-2 scroll-down">Contact Us</a>
                            </div>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <div class="position-relative">
            <div class="shape overflow-hidden text-white">
                <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
                </svg>
            </div>
        </div>
        <!-- Hero End -->

        <section class="section">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-5 col-12">
                        <div class="positon-relative">
                            <img src="resources/images/home/Thumbnail.jpg" class="img-fluid rounded-md shadow-md" alt="">
                            <div class="play-icon">
                                <a href="https://www.youtube.com/watch?v=q_Dbhe3AuRw" class="play-btn video-play-icon">
                                    <i class="mdi mdi-play text-primary rounded-circle bg-white shadow-lg"></i>
                                </a>
                            </div>
                        </div>
                    </div><!--end col-->

                    <div class="col-md-7 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                        <div class="section-title ml-lg-5">
                            <h4 class="title mb-4"><span class="font-weight-bold">꾸준함은 모든 것을 이긴다</span></h4>
                            <p class="text-muted mb-0">
                                A river cuts through rock not because of its power but because of its persistence. <br>- James Watkins -<br>
                                강물은 바위를 부술 수도 있다. 강물이 바위를 부술 수 있는 것은 강한 힘이 있어서가 아니고 꾸준하기 때문이다.
                            </p>

                            <div class="mt-4">
                                <a href="page-about.jsp" class="btn btn-primary">Learn More<i data-feather="arrow-right" class="fea icon-sm"></i></a>
                            </div>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->

            <div class="container mt-4 pt-2">
                <div class="row justify-content-center">
                    <div class="col-lg-2 col-md-2 col-6 text-center py-4 py-sm-0 mt-md-4">
                        <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white">
                    </div><!--end col-->

                    <div class="col-lg-2 col-md-2 col-6 text-center py-4 py-sm-0 mt-md-4">
                       <img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">
                    </div><!--end col-->

                    <div class="col-lg-2 col-md-2 col-6 text-center py-4 py-sm-0 mt-md-4">
                        <img src="https://img.shields.io/badge/linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">
                    </div><!--end col-->

                    <div class="col-lg-2 col-md-2 col-6 text-center py-4 py-sm-0 mt-md-4">
                       <img src="https://img.shields.io/badge/vue.js-4FC08D?style=for-the-badge&logo=vue.js&logoColor=white">
                    </div><!--end col-->

                    <div class="col-lg-2 col-md-2 col-6 text-center pt-4 pt-sm-0 mt-md-4">
                        <img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
                    </div><!--end col-->

                    <div class="col-lg-2 col-md-2 col-6 text-center pt-4 pt-sm-0 mt-md-4">
                        <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->

            <div class="container mt-100 mt-60">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center mb-4 pb-2">
                            <h4 class="title mb-4">당연한 것을 간과하지 마세요</h4>
                            <p class="text-muted mb-0 para-desc mx-auto">새로운 기술을 탐구하고 혁신을 추구하는 개발자 블로그에 오신 것을 환영합니다. 창의적인 아이디어와 도전적인 마음으로 세상을 바꿀 수 있는 가능성을 탐험해보세요.</p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->

                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card feature border-0 bg-transparent p-4 text-center">
                            <span class="text-primary h1"><i class="uil uil-presentation-line"></i></span>
                            <h5 class="mt-2">여러분의 실력에 대해 의심하지 마세요</h5>
                            <p class="text-muted mb-0">코드를 통해 혁신적인 아이디어를 실현하고, 독창적인 솔루션을 창조할 수 있습니다. </p>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card feature border-0 bg-transparent p-4 text-center">
                            <span class="text-primary h1"><i class="uil uil-compress-arrows"></i></span>
                            <h5 class="mt-2">오늘의 작은 노력이 내일의 큰 성과를 만듭니다</h5>
                            <p class="text-muted mb-0">지속적인 학습과 노력은 성공으로 이어집니다. 오늘의 작은 노력이 내일의 큰 성과를 만들어갈 수 있습니다</p>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card feature border-0 bg-transparent p-4 text-center">
                            <span class="text-primary h1"><i class="uil uil-eye"></i></span>
                            <h5 class="mt-2">열정과 꾸준함으로 개발자의 성장을 이뤄봅시다</h5>
                            <p class="text-muted mb-0">지금부터 시작하여 열정과 꾸준한 노력으로 개발자로서의 성장을 이루어나갑시다. 지식과 경험을 쌓아가며 끊임없이 발전해나갈 수 있습니다.</p>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card feature border-0 bg-transparent p-4 text-center">
                            <span class="text-primary h1"><i class="uil uil-heart"></i></span>
                            <h5 class="mt-2">혁신을 위해 도전하고 실패를 두려워하지 마세요</h5>
                            <p class="text-muted mb-0">새로운 아이디어를 시도하고, 실패를 두려워하지 마세요. 실패는 성공으로 가는 길에 포함된 소중한 경험입니다.</p>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card feature border-0 bg-transparent p-4 text-center">
                            <span class="text-primary h1"><i class="uil uil-layer-group"></i></span>
                            <h5 class="mt-2">문제는 언제나 해결될 수 있습니다</h5>
                            <p class="text-muted mb-0">문제에 직면했을 때 포기하지 마세요. 문제를 해결하는 데 집중하고 최선을 다하면 좋은 결과를 얻을 수 있습니다.</p>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card feature border-0 bg-transparent p-4 text-center">
                            <span class="text-primary h1"><i class="uil uil-flip-h"></i></span>
                            <h5 class="mt-2">개발자는 새로운 가능성을 창조합니다</h5>
                            <p class="text-muted mb-0">새로운 아이디어와 기술을 통해 혁신적인 솔루션을 만들어냄으로써 세상을 변화시키고 가능성을 확장합니다.</p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->

            <!-- start testi -->
            <div class="container mt-100 mt-60">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center mb-4 pb-2">
                            <h4 class="title mb-4">Here from our members</h4>
                            <p class="text-muted mb-0 para-desc mx-auto">This is just a simple text made for this unique and awesome template, you can replace it with any text..</p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->

                <div class="row">
                    <div class="col-12 mt-1 pt-2">
                        <div id="client-testi" class="owl-carousel owl-theme">
                            <div class="client-testi rounded shadow-md text-center mt-5 m-3">
                                <img src="resources/images/client/01.jpg" class="avatar avatar-small rounded-circle shadow-lg testi-img" alt="">
                                <div class="content p-4">
                                    <ul class="list-unstyled mb-0 mt-4 text-warning">
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                    </ul>
                                    <p class="text-primary">Calvin Carlo <small class="text-muted d-block ml-2">Manager</small></p>
                                    <p class="text-muted mt-2 mb-0">" According to most sources, Lorum Ipsum can be traced back to a text composed by Cicero Launch your campaign and benefit from our expertise. "</p>
                                </div>
                                <div class="quote-icon">
                                    <img src="resources/images/illu/quotation.svg" class="avatar avatar-medium" style="opacity: 0.05;" alt="">
                                </div>
                            </div><!--end testi content-->

                            <div class="client-testi rounded shadow-md text-center mt-5 m-3">
                                <img src="resources/images/client/02.jpg" class="avatar avatar-small rounded-circle shadow-lg testi-img" alt="">
                                <div class="content p-4">
                                    <ul class="list-unstyled mb-0 mt-4 text-warning">
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                    </ul>
                                    <p class="text-primary">Lily Lamba <small class="text-muted d-block ml-2">Manager</small></p>
                                    <p class="text-muted mt-2 mb-0">" According to most sources, Lorum Ipsum can be traced back to a text composed by Cicero Launch your campaign and benefit from our expertise. "</p>
                                </div>
                                <div class="quote-icon">
                                    <img src="resources/images/illu/quotation.svg" class="avatar avatar-medium" style="opacity: 0.05;" alt="">
                                </div>
                            </div><!--end testi content-->

                            <div class="client-testi rounded shadow-md text-center mt-5 m-3">
                                <img src="resources/images/client/03.jpg" class="avatar avatar-small rounded-circle shadow-lg testi-img" alt="">
                                <div class="content p-4">
                                    <ul class="list-unstyled mb-0 mt-4 text-warning">
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                    </ul>
                                    <p class="text-primary">Crista Joseph <small class="text-muted d-block ml-2">Manager</small></p>
                                    <p class="text-muted mt-2 mb-0">" According to most sources, Lorum Ipsum can be traced back to a text composed by Cicero Launch your campaign and benefit from our expertise. "</p>
                                </div>
                                <div class="quote-icon">
                                    <img src="resources/images/illu/quotation.svg" class="avatar avatar-medium" style="opacity: 0.05;" alt="">
                                </div>
                            </div><!--end testi content-->

                            <div class="client-testi rounded shadow-md text-center mt-5 m-3">
                                <img src="resources/images/client/04.jpg" class="avatar avatar-small rounded-circle shadow-lg testi-img" alt="">
                                <div class="content p-4">
                                    <ul class="list-unstyled mb-0 mt-4 text-warning">
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                    </ul>
                                    <p class="text-primary">Ashu Kats <small class="text-muted d-block ml-2">Manager</small></p>
                                    <p class="text-muted mt-2 mb-0">" According to most sources, Lorum Ipsum can be traced back to a text composed by Cicero Launch your campaign and benefit from our expertise. "</p>
                                </div>
                                <div class="quote-icon">
                                    <img src="resources/images/illu/quotation.svg" class="avatar avatar-medium" style="opacity: 0.05;" alt="">
                                </div>
                            </div><!--end testi content-->

                            <div class="client-testi rounded shadow-md text-center mt-5 m-3">
                                <img src="resources/images/client/05.jpg" class="avatar avatar-small rounded-circle shadow-lg testi-img" alt="">
                                <div class="content p-4">
                                    <ul class="list-unstyled mb-0 mt-4 text-warning">
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                        <li class="list-inline-item"><i class="mdi mdi-star"></i></li>
                                    </ul>
                                    <p class="text-primary">Kavya Rocks <small class="text-muted d-block ml-2">Manager</small></p>
                                    <p class="text-muted mt-2 mb-0">" According to most sources, Lorum Ipsum can be traced back to a text composed by Cicero Launch your campaign and benefit from our expertise. "</p>
                                </div>
                                <div class="quote-icon">
                                    <img src="resources/images/illu/quotation.svg" class="avatar avatar-medium" style="opacity: 0.05;" alt="">
                                </div>
                            </div><!--end testi content-->
                        </div>
                    </div><!--end col-->

                    <div class="col-12 mt-4 pt-2 text-center">
                        <div class="alert alert-light alert-pills mb-0" role="alert">
                            <a href="javascript:void(0)" class="badge badge-pill badge-primary mr-2">Feedback</a>
                            <span class="content text-muted"> Leave your feedback</span>
                         </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
            <!-- end testi -->
<!-- 로그인  container-->
        <div class="container-fluid mt-100 mt-60" id="signup">
                <div class="rounded-lg px-md-5 py-5 px-4 bg-dark shadow" style="background: url('resources/images/cta.png') center center;">
                    <div class="row">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-lg-8 col-md-6 col-12">
                                    <div class="section-title text-center text-md-left mb-4 mb-sm-0 pb-2 pb-sm-0">
                                        <h6 class="text-white-50 mb-2">Join the community</h6>
                                        <h4 class="title text-white mb-4">Get inspired and get to work.</h4>
                                        <p class="text-white-50 mb-0 para-desc">This is just a simple text made for this unique and awesome template, you can replace it with any text..</p>
                                    </div>
                                </div><!--end col-->
                                <div class="col-lg-4 col-md-6 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                                    <div class="login-page bg-white shadow rounded p-4 position-relative">
                                        <div class="text-center">
                                            <h5 class="mb-4 pb-2">Sign Up</h5>
                                        </div>
                                        <!-- 로그인  container-->
                                        <form class="login-form" action="/login" method="post">
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <label>Your Email <span class="text-danger">*</span></label>
                                                        <input type="email" class="form-control" name="contactFirstName"  required="" placeholder="Your Email :">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <label>Password <span class="text-danger">*</span></label>
                                                        <input type="password"  class="form-control" name="customerNumber" placeholder="Password :">
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
                                                     <input type="submit" class="btn btn-primary btn-block" value="Create Account">
                                                </div>
                                                <div class="col-12 text-center">
                                                    <p class="mb-0 mt-3"><small class="text-dark mr-2">Already have an account ?</small> <a href="page-login.jsp" class="text-dark font-weight-bold">Sign in</a></p>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div><!--end col-->
                            </div><!--end row-->
                        </div><!--end container-->
                    </div><!--end row-->
                </div>
            </div><!--end container-->
        </section>
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
                            <h4 class="title mb-4">인기 게시물</h4>
                            <p class="text-muted mb-0 para-desc mx-auto">This is just a simple text made for this unique and awesome template, you can replace it with any text..</p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->

          <c:forEach items="${productsList}" var="products">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="card blog-post border-0 rounded shadow overflow-hidden">
                            <img src="resources/images/work/7.jpg" class="img-fluid" alt="">
                            <div class="card-body content p-4">
                                <a href="" class="title text-dark h5">${products.productName}</a>
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
            </div><!--end container-->
        </section><!--end section-->
        <!-- End blog -->

        <!-- Footer Start -->
        <footer class="footer bg-footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-12 mb-lg-0 mb-md-4 pb-lg-0 pb-md-2">
                        <a href="#" class="logo-footer">
                            <div class="media align-items-center">
                                <span class="text-primary"><img src="resources/images/layer-group.svg" class="logo-icon mr-1" alt=""></span>
                                <img src="resources/images/logo-light.png" height="16" alt="">
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

        <!-- javascript -->
        <script src="resources/js/jquery-3.5.1.min.js"></script>
        <script src="resources/js/bootstrap.bundle.min.js"></script>
        <script src="resources/js/jquery.easing.min.js"></script>
        <script src="resources/js/scrollspy.min.js"></script>
        <!-- Magnific popup -->
        <script src="resources/js/jquery.magnific-popup.min.js"></script>
        <script src="resources/js/isotope.js"></script>
        <script src="resources/js/portfolio.init.js"></script>
        <script src="resources/js/magnific.init.js"></script>
        <!-- Icon -->
        <script src="resources/js/feather.min.js"></script>
        <script src="https://unicons.iconscout.com/release/v2.1.11/script/monochrome/bundle.js"></script>
        <!-- SLIDER -->
        <script src="resources/js/owl.carousel.min.js "></script>
        <script src="resources/js/owl.init.js "></script>
        <!-- Main Js -->
        <script src="resources/js/app.js"></script>
    </body>
</html>