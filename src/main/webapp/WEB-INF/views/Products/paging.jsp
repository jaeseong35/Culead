<!DOCTYPE html>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="KR">

<head>
    <meta charset="utf-8" />
    <title>Culead - 강의 목록 </title>
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
                    <a href="/products/login" class="btn btn-primary scroll-down">Signup</a>
                </div>
                <!--end lo
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
                        <a href="/products/login"> ${sessionScope.ContactFirstName} Signup </a>
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
        <div class="bg-overlay" style="background-image: url('/resources/images/home/bg-bg.png')"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="title-heading">
                        <h3 class="text-white">Lecture Developer</h3>
                        <div class="breadcrumb-position">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow-md mb-0">
                                    <li class="breadcrumb-item"><a href="/">Culead</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">강의</li>
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

    <div id="전체" class='mt-5' style="width: 100vw; margin-left: calc(-50vw + 50%); margin-top: -48px; margin-bottom: -48px; background-color: #F2F2F2;">
        <div id="1단" style="max-width: 1200px; margin: 48px auto auto auto; padding-left: 18px; padding-right: 18px;">
            <h3 style="text-align: center;"><span style="font-size: 17px;">웹 페이지를 만드는 튼튼한 뼈대</span><br><strong>웹 코딩의 시작, <span style="box-shadow: inset 0 -10px #e3fff1;">HTML/CSS</span></strong></h3>
            <p style="text-align: center;"><img src="https://cdn.inflearn.com/public/files/posts/957fb468-6819-4a32-8789-1a27cefc204e/52-0.png" alt="" width="200" style="display: block; margin-left: auto; margin-right: auto;"></p>
            <p style="word-break: keep-all; word-wrap: break-word; text-align: center; margin-left: auto; margin-right: auto; max-width: 700px;">HTML/CSS는 <strong>웹 페이지를 제작하는 데 기본이 되는 기술</strong>로, 웹페이지를 만들기 위해 웹 브라우저가 이해할 수 있는 형태로 표시하고 구조화하는 언어입니다.</p>
        </div>
        <div id="중단바" style="padding-left: 20px; padding-right: 20px; margin: 42px auto 10px auto;">
            <p style="max-width: 920px; padding: 16px; border-top-left-radius: 10px; border-top-right-radius: 10px; background: #dbfbeb; line-height: 1.69; color: #1ecb82; font-size: 1rem; font-weight: bold; text-align: center; margin: 18px auto 20px auto;">웹 개발의 첫걸음을 떼고 싶다면 ✅</p>
        </div>
        <div id="카드" style="margin: auto; max-width: 960px; padding-left: 13px; padding-right: 13px; margin-bottom: 26px;">
            <div class="card-wrapper card-wrapper-2" style="display: flex; justify-content: center; max-width: 960px; margin: 0 auto;">
                <div class="card-el" style="margin: 16px; padding: 0 8px; text-align: center;">
                    <div><img src="https://cdn.inflearn.com/public/files/posts/9370e2d6-5b33-4b8c-8633-1cc4991a5f98/52-1.png" alt="" width="300" height="198"></div>
                    <p style="margin-top: 8px; line-height: 1.69; color: #495057; font-size: 18px; font-weight: bold; word-break: break-word;">HTML</p>
                    <p style="margin-bottom: 8px; padding: unset; line-height: 1.69; color: #495057; font-size: 16px; font-family: Arial, sans-serif; word-break: break-word;">HyperText Markup Language의 약자로, 웹페이지를 만들기 위한 마크업 언어입니다. 웹페이지에서 사용되는 텍스트, 이미지, 비디오, 오디오 등 다양한 요소를 구조화하고, 이를 웹 브라우저가 이해할 수 있는 형태로 표시합니다.</p>
                </div>
                <div class="card-el" style="margin: 16px; padding: 0 8px; text-align: center;">
                    <div><img src="https://cdn.inflearn.com/public/files/posts/b826d961-cb12-44d3-8dc7-63c334bb7e1a/52-2.png" alt="" width="300" height="198"></div>
                    <p style="margin-top: 8px; line-height: 1.69; color: #495057; font-size: 18px; font-weight: bold; word-break: break-word;">CSS</p>
                    <p style="margin-bottom: 8px; padding: unset; line-height: 1.69; color: #495057; font-size: 16px; font-family: Arial, sans-serif; word-break: break-word;">Cascading Style Sheets의 약자로, HTML로 작성된 요소들의 디자인을 꾸밀 때 사용되는 스타일 시트 언어입니다. CSS를 사용하여 색상, 폰트, 레이아웃 등을 조정할 수 있으며, 웹페이지의 시각적인 디자인을 결정하는 역할을 합니다.</p>
                </div>
            </div>
        </div>
    </div>

    <section class="editing__wrapper">
        <div class="editing__container" style="max-width: 1920px">
            <div id="전체2" class='mt-5' style="width: 100vw; margin-left: calc(-50vw + 50%); margin-top: -48px; margin-bottom: -48px;">
                <div id="1단" style="max-width: 1200px; margin: 48px auto auto auto; padding-left: 18px; padding-right: 18px;">
                    <h3 style="text-align: center;"><span style="font-size: 17px;">프론트엔드/백엔드, 모바일, 데스크톱 앱까지&nbsp;</span><br><strong><span style="box-shadow: inset 0 -10px #e3fff1;">다재다능 자바스크립트</span>의 모든 것&nbsp;</strong></h3>
                    <p><img src="https://cdn.inflearn.com/public/files/posts/5b8b022a-5155-48f4-aa49-c1121f1371a8/53-0.png" alt="" width="85" style="display: block; margin-left: auto; margin-right: auto;"></p>
                    <p style="text-align: center;">자바스크립트(JavaScript)는 웹에서 복잡한 기능을 구현할 수 있도록 고안된 프로그래밍 언어입니다.&nbsp;<br>웹 클라이언트에서의 동작뿐만 아니라 서버를 구현하고 운용하는 등 <strong>다양한 영역에서 활발하게</strong> 사용되고 있습니다.</p>
                </div>
                <div id="중단바" style="padding-left: 20px; padding-right: 20px; margin: 42px auto 10px auto;">
                    <p style="max-width: 1167px; padding: 16px; border-top-left-radius: 10px; border-top-right-radius: 10px; background: #dbfbeb; line-height: 1.69; color: #1ecb82; font-size: 1rem; font-weight: bold; text-align: center; margin: 18px auto 20px auto;">웹의 시대, 대세는 자바스크립트! ✅</p>
                </div>
                <div id="카드" style="margin: auto; max-width: 1210px; padding-left: 13px; padding-right: 13px; margin-bottom: 26px;">
                    <div class="card-wrapper card-wrapper-3" style="display: flex; flex-wrap: wrap; align-items: stretch;">
                        <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px; display: inline-block;">
                            <div style="padding: 20px 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                                <p style="margin: 0px; text-align: center; font-size: 1rem;"><strong>다양한 패러다임을 자유롭게</strong></p>
                                <p style="margin-top: -4px; margin-bottom: 0; text-align: center; font-size: 0.9rem; word-break: keep-all; word-wrap: break-word;">객체지향 프로그래밍(OOP), 함수형 프로그래밍(FP), 절자치향 프로그래밍(PP) 등 여러 가지 프로그래밍 패러다임을 자유롭게 따를 수 있습니다.</p>
                            </div>
                        </div>
                        <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px; display: inline-block;">
                            <div style="padding: 20px 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                                <p style="margin: 0px; text-align: center; font-size: 1rem;"><strong>압도적인 생태계 + 웹 친화적 언어</strong></p>
                                <p style="margin-top: -4px; margin-bottom: 0; text-align: center; font-size: 0.9rem; word-break: keep-all; word-wrap: break-word;">웹 기반 언어인 만큼 관련 정보가 방대하게 퍼져 있습니다. 컴파일이 필요하지 않아 빠른 시간 안에 스크립트를 짤 수 있는 점 역시 강점으로 꼽힙니다.</p>
                            </div>
                        </div>
                        <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px; display: inline-block;">
                            <div style="padding: 20px 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                                <p style="margin: 0px; font-size: 1rem; text-align: center;"><strong>풀스택 개발자를 꿈꾼다면</strong></p>
                                <p style="margin-top: -4px; margin-bottom: 0; text-align: center; font-size: 0.9rem; word-break: keep-all; word-wrap: break-word;">프로그래밍 언어 하나로 프론트엔드/백엔드를 전부!<br>언어를 추가로 배울 필요 없이, 자바스크립트로 Node.js 런타임 기반 환경에서 서버 개발까지 모두 할 수 있습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div id="전체3" class='mt-5' style="width: 100vw; margin-left: calc(-50vw + 50%); margin-top: -56px; margin-bottom: -48px;">
        <!-- 시작 -->
        <div id="인트로" style="max-width: 800px; margin: 48px auto auto auto; padding-left: 18px; padding-right: 18px;">
            <h3 style="text-align: center;"><strong>프런트엔드 라이브러리 점유율 1위, React!</strong></h3>
            <p style="margin-top: 0; margin-bottom: 0;"><img src="https://cdn.devinflearn.com/public/files/posts/8c923494-0ab0-4c34-8809-52591116ac71/React-icon.svg-removebg-preview.png" alt="" width="180" height="157" style="display: block; margin-left: auto; margin-right: auto;"></p>
            <p style="text-align: center;">FE 프레임워크/라이브러리 중 수년 연속 가장 높은 점유율을 차지하고 있는 React!<br>리액트는 프런트엔드 개발에 필요한 코드를 효율적으로 구축할 수 있는<br>자바스크립트(Javascript) 기반 라이브러리입니다.</p>
        </div>
        <div id="중단바" style="padding-left: 20px; padding-right: 20px; margin: 42px auto 10px auto;">
            <p style="max-width: 1167px; padding: 16px; border-top-left-radius: 10px; border-top-right-radius: 10px; background: #61DAFB; line-height: 1.69; color: #1ecb82; font-size: 1rem; font-weight: bold; text-align: center; margin: 18px auto 20px auto;"><span style="color: #34495e;">지금 React를 배워야 할 세 가지 이유 ✔️</span></p>
        </div>
        <div id="카드" style="margin: auto; max-width: 1210px; padding-left: 13px; padding-right: 13px; margin-bottom: 26px;">
            <div class="card-wrapper card-wrapper-3" style="display: flex; flex-wrap: wrap; align-items: stretch;">
                <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px; display: inline-block;">
                    <div style="padding: 20px 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                        <p style="margin: 0px; text-align: center; font-size: 1rem;"><b>코드 재사용성이 높아요</b></p>
                        <p style="margin-top: -4px; margin-bottom: 0; text-align: center; font-size: 0.9rem; word-break: keep-all; word-wrap: break-word;"><span style="font-size: 14.4px;">React에서 지원하는 컴포넌트를 이용하면 코드 재사용성이 높아져서 효율적이고 생산성이 뛰어난 개발이 가능해져요.<br><br></span></p>
                    </div>
                </div>
                <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px; display: inline-block;">
                    <div style="padding: 20px 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                        <p style="margin: 0px; text-align: center; font-size: 1rem;"><b>유지보수가 편리해요</b></p>
                        <p style="margin-top: -4px; margin-bottom: 0; text-align: center; font-size: 0.9rem; word-break: keep-all; word-wrap: break-word;">React는 가상 DOM을 지원하고 있어요. 가상 DOM을 이용하면 성능 최적화와 유지보수 및 관리가 쉽고 편리해져요.</p>
                    </div>
                </div>
                <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px; display: inline-block;">
                    <div style="padding: 20px 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                        <p style="margin: 0px; font-size: 1rem; text-align: center;"><b>잠재력이 커요</b></p>
                        <p style="margin-top: -4px; margin-bottom: 0; text-align: center; font-size: 0.9rem; word-break: keep-all; word-wrap: break-word;">압도적인 인기 만큼 시장에서의 수요도 커요. 대기업부터 스타트업까지, React를 잘 다루는 개발자에 대한 선호도가 높아요.</p>
                    </div>
                </div>
            </div>
            <p style="text-align: center; font-size: 14px; color: #adb5bd;">👇 인프런의 다양한 React 강의를 만나보세요! 👇</p>
        </div>
    </div>

    <div id="전체4" class='mt-5' style="width: 100vw; margin-left: calc(-50vw + 50%); margin-top: -48px; margin-bottom: -48px;">
        <div id="1단" style="max-width: 1180px; padding-left: 24px; padding-right: 24px; padding-top: 48px; margin: 0 auto;">
            <p style="margin-top: 0;"><img src="https://cdn.inflearn.com/public/files/posts/f707ce27-2197-409a-ad23-36a2bbf07275/Python_logo_wordmark.png" alt="" width="215" style="display: block; margin-left: auto; margin-right: auto;"></p>
            <h4 style="text-align: center; margin-top: 18px;"><strong>2020, 2021 <span style="text-emphasis-style: dot; text-emphasis-position: over left; -webkit-text-emphasis-style: dot; -webkit-text-emphasis-position: over; text-emphasis-color: #fa5251;">올해의 프로그래밍 언어</span> 선정!<br></strong></h4>
            <p style="text-align: center; max-width: 620px; margin-left: auto; margin-right: auto; word-break: keep-all; word-wrap: break-word;">파이썬(Python)은 업무 자동화, 웹 개발, 데이터 분석, 인공지능 등 다양한 분야에 걸쳐 쓰이고 있는 인기 프로그래밍 언어입니다. <strong>전문 개발자</strong>뿐 아니라, <strong>코딩이 처음인 입문자</strong>나 개발 외 분야에서 일하는 <strong>직장인</strong>들에게도 사랑받고 있습니다.</p>
        </div>
        <!-- 포인트A -->
        <div id="포인트전체" style="margin: 0 auto; padding-top: 24px; padding-bottom: 24px;">
            <div id="중단바" style="margin-left: auto; margin-right: auto; padding-left: 20px; padding-right: 20px;">
                <p style="max-width: 1167px; padding: 16px; border-top-left-radius: 10px; border-top-right-radius: 10px; background: #dbfbeb; line-height: 1.69; color: #1ecb82; font-size: 1rem; font-weight: bold; text-align: center; margin: 18px auto 20px auto;">지금 파이썬을 배워야 할 3가지 이유 ✅</p>
            </div>
            <div id="카드" style="max-width: 1210px; margin: 0 auto; padding-left: 12px; padding-right: 12px;">
                <div class="card-wrapper card-wrapper-3" style="display: flex; flex-wrap: wrap;">
                    <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px;">
                        <div style="padding: 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                            <p style="margin: 0;"><img src="https://cdn.inflearn.com/public/files/posts/15705312-47b0-445b-a657-057b21c2b715/check.png" alt="" width="58" style="margin: 0px auto; max-width: 100%; display: block;"></p>
                            <p style="margin: 0px; text-align: center; font-size: 1rem;"><strong>코딩 처음이라면 딱!</strong></p>
                            <p style="margin-top: -4px; margin-bottom: 0; text-align: center; font-size: 0.9rem; word-break: keep-all; word-wrap: break-word;">다른 프로그래밍 언어에 비해 쉽고 간결한 문법으로 이루어져 있어 초보가 배우기에 부담이 적습니다.</p>
                        </div>
                    </div>
                    <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px;">
                        <div style="padding: 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                            <p style="margin: 0;"><img src="https://cdn.inflearn.com/public/files/posts/15705312-47b0-445b-a657-057b21c2b715/check.png" alt="" width="58" style="margin: 0px auto; max-width: 100%; display: block;"></p>
                            <p style="margin: 0px; text-align: center; font-size: 1rem;"><strong>드넓은 생태계로 든든하게</strong></p>
                            <p style="margin-top: -4px; margin-bottom: 0; text-align: center; font-size: 0.9rem; word-break: keep-all; word-wrap: break-word;">사용자가 많은 만큼 관련 커뮤니티가 크고, 참고 자료나 패키지 등의 도움을 받기에도 편리합니다.</p>
                        </div>
                    </div>
                    <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px;">
                        <div style="padding: 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                            <p style="margin: 0;"><img src="https://cdn.inflearn.com/public/files/posts/15705312-47b0-445b-a657-057b21c2b715/check.png" alt="" width="58" style="margin: 0px auto; max-width: 100%; display: block;"></p>
                            <p style="margin: 0px; font-size: 1rem; text-align: center;"><strong>무궁무진한 활용 가능성</strong></p>
                            <p style="margin-top: -4px; margin-bottom: 0; text-align: center; font-size: 0.9rem; word-break: keep-all; word-wrap: break-word;">웹, 데이터, 보안, 해킹, 응용 프로그램 등 하나의 언어로 다양한 분야에 이용할 수 있습니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--풀페이지 끝 -->
    </div>


    <div id="전체5" class='mt-5' style="width: 100vw; margin-left: calc(-50vw + 50%); margin-top: -48px; margin-bottom: -48px;">
        <div id="1단" style="max-width: 1180px; padding-left: 24px; padding-right: 24px; padding-top: 48px; margin: 0 auto;">
            <p style="margin-top: 0;"><img src="https://cdn.devinflearn.com/public/files/posts/45a25c80-b53e-4631-b9b9-210ff1daeeec/Java-Logo.png" alt="" width="300" height="169" style="display: block; margin-left: auto; margin-right: auto;"></p>
            <h4 style="text-align: center; margin-top: 18px;"><strong>국내 개발자들이 가장 많이 사용하는 언어, JAVA!</strong></h4>
            <p style="text-align: center; max-width: 620px; margin-left: auto; margin-right: auto; word-break: keep-all; word-wrap: break-word;">자바(JAVA)는 2001년부터 현재까지 높은 인기를 유지하고 있습니다. 플랫폼에 독립적이라는 특징과 더불어 고성능 애플리케이션을 개발할 수 있다는 점 덕분에 많은 개발자의 사랑을 받고 있어요. 현재 자바는 <strong>백엔드 개발자 필수 언어</strong>라고 해도 과언이 아니죠.</p>
        </div>
        <!-- 포인트A -->
        <div id="포인트전체" style="margin: 0 auto; padding-top: 24px; padding-bottom: 24px;">
            <div id="중단바" style="margin-left: auto; margin-right: auto; padding-left: 20px; padding-right: 20px;">
                <p style="max-width: 1167px; padding: 16px; border-top-left-radius: 10px; border-top-right-radius: 10px; background: #dbfbeb; line-height: 1.69; color: #1ecb82; font-size: 1rem; font-weight: bold; text-align: center; margin: 18px auto 20px auto;">지금 자바를 배워야 할 3가지 이유 ✅</p>
            </div>
            <div id="카드" style="max-width: 1210px; margin: 0 auto; padding-left: 12px; padding-right: 12px;">
                <div class="card-wrapper card-wrapper-3" style="display: flex; flex-wrap: wrap;">
                    <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px;">
                        <div style="padding: 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                            <p style="margin: 0;"><img src="https://cdn.devinflearn.com/public/files/posts/c583860b-ce8b-4da5-8c00-a3063a12c815/blue-check.png" alt="" width="45" height="45" style="margin: 0px auto; max-width: 100%; display: block;"></p>
                            <p style="margin: 0px; text-align: center; font-size: 1rem;"><strong>배우기 쉬운 언어</strong></p>
                            <p style="margin-top: -4px; margin-bottom: 0; text-align: center; font-size: 0.9rem; word-break: keep-all; word-wrap: break-word;">객체 지향적인 언어인 자바를 활용하면 쉽게 코드를 작성하고 실행할 수 있으며, 강력한 디버깅을 제공합니다.</p>
                        </div>
                    </div>
                    <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px;">
                        <div style="padding: 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                            <p style="margin: 0;"><img src="https://cdn.devinflearn.com/public/files/posts/e66fe504-1a29-4393-aa28-c5ea1d118675/blue-check.png" alt="" width="45" height="45" style="margin: 0px auto; max-width: 100%; display: block;"></p>
                            <p style="margin: 0px; text-align: center; font-size: 1rem;"><strong>드넓은 생태계로 든든하게</strong></p>
                            <p style="margin-top: -4px; margin-bottom: 0; text-align: center; font-size: 0.9rem; word-break: keep-all; word-wrap: break-word;">사용자가 많은 만큼 관련 커뮤니티가 크고, 참고 자료나 패키지 등의 도움을 받기에도 편리합니다.</p>
                        </div>
                    </div>
                    <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px;">
                        <div style="padding: 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                            <p style="margin: 0;"><img src="https://cdn.devinflearn.com/public/files/posts/0b969267-bc3f-454c-84a2-1c894768becb/blue-check.png" alt="" width="45" height="45" style="margin: 0px auto; max-width: 100%; display: block;"></p>
                            <p style="margin: 0px; font-size: 1rem; text-align: center;"><strong>무궁무진한 활용 가능성</strong></p>
                            <p style="margin-top: -4px; margin-bottom: 0; text-align: center; font-size: 0.9rem; word-break: keep-all; word-wrap: break-word;">웹, 과학, 금융, 빅 데이터, 머신러닝 등 하나의 언어로 다양한 분야에 이용할 수 있습니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--풀페이지 끝 -->
    </div>


    <p style="font-size: medium;">&nbsp;</p>
    <div id="전체6" style="width: 100vw; margin-left: calc(-50vw + 50%); margin-top: -48px; margin-bottom: -48px;">
        <div id="1단" style="max-width: 1180px; padding-left: 24px; padding-right: 24px; padding-top: 48px; margin: 0 auto;">
            <p style="font-size: small;"><img src="https://cdn.devinflearn.com/public/files/posts/e45de389-bd50-43c1-9031-914f424e9384/1_hk.gif" alt="" width="800" height="156" style="display: block; margin-left: auto; margin-right: auto;"></p>
            <h3 style="text-align: center;">&nbsp;</h3>
            <h2 style="text-align: center;">🍃 <strong>왜</strong> <span style="color: #6db33f;"><strong>스프링 프레임워크</strong></span><strong>일까요?</strong></h2>
            <div id="카드" style="max-width: 1210px; margin: 0 auto; padding-left: 12px; padding-right: 12px;">
                <div class="card-wrapper card-wrapper-3" style="display: flex; flex-wrap: wrap;">
                    <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px;">
                        <div style="padding: 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                            <h2 style="margin: 0px; text-align: center;"><span style="color: #6db33f;"><strong>🛠<br></strong></span></h2>
                            <h4 style="margin: 0px; text-align: center;"><span style="color: #6db33f;"><strong>생산성</strong></span></h4>
                            <p style="margin: 0px; text-align: center; font-size: 15px;"><span style="color: #000000;"><br>DB 연동, 유저 인증, 화면 구현 등의 필수 기능을 제공해 주기에 <strong>Zero Base에서 짜는 것 보다 훨씬 빠르게 개발</strong>할 수 있어요.<br></span></p>
                        </div>
                    </div>
                    <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px;">
                        <div style="padding: 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                            <h2 style="margin: 0px; word-break: keep-all; overflow-wrap: break-word; text-align: center;"><span style="color: #6db33f;"><strong>👥</strong></span></h2>
                            <h4 style="margin: 0px; word-break: keep-all; overflow-wrap: break-word; text-align: center;"><span style="color: #6db33f;"><strong>일관성</strong></span></h4>
                            <p style="margin: 0px; text-align: center; font-size: 15px;"><span style="color: #000000;"><br>대규모 프로젝트를 공동 수행하는 개발자들이&nbsp;<strong>일관된 틀과 규칙 아래 개발</strong>할 수 있게 됩니다. 덕분에<strong> 유지보수 역시 쉬워집니다.</strong><br></span></p>
                        </div>
                    </div>
                    <div class="card-el" style="flex: 1 0 auto; margin-bottom: 16px; padding: 0 8px;">
                        <div style="padding: 24px; border-radius: 8px; border: 1px solid #DEE2E6; background-color: #ffffff;">
                            <h2 style="margin: 0px; word-break: keep-all; overflow-wrap: break-word; text-align: center;"><span style="color: #6db33f;"><strong>👷🏻</strong></span></h2>
                            <h4 style="margin: 0px; word-break: keep-all; overflow-wrap: break-word; text-align: center;"><span style="color: #6db33f;"><strong>퀄리티</strong></span></h4>
                            <p style="margin: 0px; text-align: center; font-size: 15px; word-break: keep-all; word-wrap: break-word;"><span style="color: #000000;"><strong><br></strong>이미 많은 개발자가 검증했기에<strong> 버그 발생 확률이 적습니다. </strong></span><span style="color: #000000;">오류 수정에 시간을 쏟지 않으면서, 양질의 개발이 가능합니다.</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>


    <!-- Start -->
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-7 col-12">
                <c:choose>
                    <c:when test="${empty productsList}">
                        <div class="empty-states d-flex flex-column justify-content-center align-items-center">
                            <img src="https://cdn.inflearn.com/assets/images/empty_states/otter_color.svg" alt="" aria-hidden="true" width="80" height="80">
                            <div class="empty-states__texts">
                                <p class="empty-states__title h5 text-center">찾는 주제의 강의가 없어요</p>
                                <p class="empty-states__body text-center desc-6-medium">필터를 다시 적용해보시거나 카테고리를 이동해보세요</p>
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                    <div class="row">
                        <c:forEach items="${productsList}" var="product">
                            <div class="col-lg-6 col-12 mb-4 pb-2">
                                <div class="card blog-post border-0 rounded shadow overflow-hidden">
                                    <img src="/resources/images/Lec/${product.image}" class="img-fluid" alt="">
                                    <div class="card-body content p-4">
                                        <a href="/products?productCode=${product.productCode}" class="product-name title text-dark h5">${product.productName}</a>
                                        ${product.skillName}
                                        <div class="post-meta d-flex justify-content-between mt-3">
                                            <ul class="list-unstyled mb-0">
                                                <li class="list-inline-item mr-2 mb-0"><a href="javascript:void(0)" class="text-muted like"><i class="mdi mdi-sort-variant"></i>${product.productLine} </a></li>
                                                <li class="list-inline-item">
                                                    <a href="javascript:void(0)" class="text-muted comments">
                                                        <c:choose>
                                                          <c:when test="${product.buyPrice == 0}">
                                                            ₩무료
                                                          </c:when>
                                                          <c:otherwise>
                                                            <c:if test="${product.discountBuyPrice == 0}">
                                                                <span style="font-weight: bold; color: #6563ff;">
                                                                ₩<fmt:formatNumber value="${product.buyPrice}" pattern="#,###" />
                                                                </span>
                                                            </c:if>
                                                            <c:if test="${product.discountBuyPrice != 0}">
                                                              <span style="text-decoration: line-through; font-size: small;">
                                                                ₩<fmt:formatNumber value="${product.buyPrice}" pattern="#,###" />
                                                              </span>
                                                              <span style="font-weight: bold; color: #6563ff;">
                                                                ₩<fmt:formatNumber value="${product.discountBuyPrice}" pattern="#,###" />
                                                              </span>
                                                            </c:if>
                                                          </c:otherwise>
                                                        </c:choose>

                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end col-->
                        </c:forEach>
                    </div>
                  </c:otherwise>
                </c:choose>
                    <!--end row-->

                    <!--paging-->
                    <div class="col-12">
                        <ul class="pagination justify-content-center mb-0">
                            <c:choose>
                                <%-- 현재 페이지가 1페이지면 이전 글자만 보여줌 --%>
                                <c:when test="${paging.page <= 1}">
                                    <li class="page-item"><a class="page-link" href="" aria-label="Previous">Previous</a></li>
                                </c:when>
                                <%-- 1페이지가 아닌 경우에는 [이전]을 클릭하면 현재 페이지보다 1 작은 페이지 요청 --%>
                                <c:otherwise>

                                    <li class="page-item"><a class="page-link" href="/products/paging?page=${paging.page-1}&productLine=${param.productLine}&productName=${param.productName}&charge=${param.charge}" aria-label="Previous">Previous</a></li>
                                </c:otherwise>
                            </c:choose>

                            <%-- for(int i=startPage; i<=endPage; i++) --%>
                            <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
                                <c:choose>
                                    <%-- 요청한 페이지에 있는 경우 현재 페이지 번호는 텍스트만 보이게 --%>

                                    <c:when test="${i eq paging.page}">
                                        <li class="page-item active"><a class="page-link" href="/products/paging?page=${i}">${i}</a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item"><a class="page-link" href="/products/paging?page=${i}&productLine=${param.productLine}&productName=${param.productName}&charge=${param.charge}">${i}</a></li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>

                            <c:choose>
                                <c:when test="${paging.page >= paging.maxPage}">
                                    <li class="page-item"><a class="page-link" href="" aria-label="Next">Next</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item"><a class="page-link" href="/products/paging?page=${paging.page+1}&productLine=${param.productLine}&productName=${param.productName}&charge=${param.charge}" aria-label="Next">Next</a></li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                    <!--end col-->
                </div>







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
                                    <c:forEach items="${skillNameCountList}" var="skillNameCountList">
                                        <li><a href="/products/paging?&productLine=&productName=${skillNameCountList.skillName}&page=">${skillNameCountList.skillName}</a>
                                            <span class="float-right">${skillNameCountList.skillNameCount}</span> </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                        </form>
                        <!-- CATAGORIES -->
                        <!-- TAG CLOUDS -->
                        <div class="widget mb-4 pb-4">
                            <h6 class="widget-title">Tags Cloud</h6>
                            <div class="tagcloud p-4 mt-4 rounded shadow">
                                <c:if test="${param.productLine == '입문'}">
                                    <a href="/products/paging?productName=${param.productName}&page=&charge=${param.charge}&discountStatus=${param.discountStatus}&productLine=" class="rounded" style="background: #6563ff; color: #ffffff;">#입문</a>
                                </c:if>
                                <c:if test="${ param.productLine != '입문' }">
                                    <a href="/products/paging?productName=${param.productName}&page=&charge=${param.charge}&discountStatus=${param.discountStatus}&productLine=입문" class="rounded">#입문</a>
                                </c:if>
                                <c:if test="${param.productLine == '초급'}">
                                    <a href="/products/paging?productName=${param.productName}&page=&charge=${param.charge}&discountStatus=${param.discountStatus}&productLine=" class="rounded" style="background: #6563ff; color: #ffffff;">#초급</a>
                                </c:if>
                                <c:if test="${ param.productLine != '초급' }">
                                    <a href="/products/paging?productName=${param.productName}&page=&charge=${param.charge}&discountStatus=${param.discountStatus}&productLine=초급" class="rounded">#초급</a>
                                </c:if>
                                <c:if test="${param.productLine == '중급'}">
                                    <a href="/products/paging?productName=${param.productName}&page=&charge=${param.charge}&discountStatus=${param.discountStatus}&productLine=" class="rounded" style="background: #6563ff; color: #ffffff;">#중급</a>
                                </c:if>
                                <c:if test="${ param.productLine != '중급' }">
                                    <a href="/products/paging?productName=${param.productName}&page=&charge=${param.charge}&discountStatus=${param.discountStatus}&productLine=중급" class="rounded">#중급</a>
                                </c:if>
                                <c:if test="${param.productLine == '고급'}">
                                    <a href="/products/paging?productName=${param.productName}&page=&charge=${param.charge}&discountStatus=${param.discountStatus}&productLine=" class="rounded" style="background: #6563ff; color: #ffffff;">#고급</a>
                                </c:if>
                                <c:if test="${ param.productLine != '고급' }">
                                    <a href="/products/paging?productName=${param.productName}&page=&charge=${param.charge}&discountStatus=${param.discountStatus}&productLine=고급" class="rounded">#고급</a>
                                </c:if>
                                <c:if test="${ param.charge == 'free' }">
                                <a href="/products/paging?productName=${param.productName}&productLine=${param.productLine}&page=&charge=" class="rounded"  style="background: #6563ff; color: #ffffff;">#무료</a>
                                </c:if>
                                <c:if test="${ param.charge != 'free' }">
                                <a href="/products/paging?productName=${param.productName}&productLine=${param.productLine}&page=&charge=free" class="rounded">#무료</a>
                                </c:if>
                                <c:if test="${ param.charge == 'paid' }">
                                <a href="/products/paging?productName=${param.productName}&productLine=${param.productLine}&page=&charge=" class="rounded" style="background: #6563ff; color: #ffffff;" >#유료</a>
                                </c:if>
                                <c:if test="${ param.charge != 'paid' }">
                                <a href="/products/paging?productName=${param.productName}&productLine=${param.productLine}&page=&charge=paid" class="rounded">#유료</a>
                                </c:if>
                                <c:if test="${ param.discountStatus == 'Y' }">
                               <a href="/products/paging?productName=${param.productName}&productLine=${param.productLine}&page=&charge=${param.charge}&discountStatus=" class="rounded" style="background: #6563ff; color: #ffffff;" >#할인중</a>
                                </c:if>
                                <c:if test="${ param.discountStatus != 'Y' }">
                                <a href="/products/paging?productName=${param.productName}&productLine=${param.productLine}&page=&charge=${param.charge}&discountStatus=Y" class="rounded">#할인중</a>
                                </c:if>
                                <a href="jvascript:void(0)" class="rounded">#FE</a>
                                <a href="jvascript:void(0)" class="rounded">#BE</a>
                                <a href="jvascript:void(0)" class="rounded">#DB</a>
                            </div>
                        </div>
                        <!-- TAG CLOUDS -->
                        <!-- RECENT POST -->
                        <div class="widget mb-4 pb-2">
                            <h6 class="widget-title">NEW 신규 강의</h6>
                            <div class="p-4 mt-4 rounded shadow">
                                <c:forEach items="${productsDTOList}" var="productsDTOList">
                                    <div class="clearfix post-recent">
                                        <div class="post-recent-thumb float-left"> <a href="/products?productCode=${productsDTOList.productCode}"> <img alt="img" src="/resources/images/Lec/${productsDTOList.image}" class="img-fluid rounded"></a></div>
                                        <div class="post-recent-content float-left"><a href="/products?productCode=${productsDTOList.productCode}">${productsDTOList.productName}</a><span class="text-muted mt-2">15th June, 2019</span></div>
                                    </div>
                                </c:forEach>
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
    <!-- Icon -->
    <script src="/resources/js/feather.min.js"></script>
    <script src="https://unicons.iconscout.com/release/v2.1.11/script/monochrome/bundle.js"></script>
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
    <script>
        // 현재 페이지의 URL을 가져오기
        var currentURL = window.location.href;

        // URL에 "HTML"이 포함되어 있는지 확인
        if (currentURL.includes("HTML")) {
            document.getElementById("전체").style.display = "block";
            document.getElementById("전체2").style.display = "none";
            document.getElementById("전체3").style.display = "none";
            document.getElementById("전체4").style.display = "none";
            document.getElementById("전체5").style.display = "none";
            document.getElementById("전체6").style.display = "none";
        } else if (currentURL.includes("JavaScript")) {
            document.getElementById("전체").style.display = "none";
            document.getElementById("전체2").style.display = "block";
            document.getElementById("전체3").style.display = "none";
            document.getElementById("전체4").style.display = "none";
            document.getElementById("전체5").style.display = "none";
            document.getElementById("전체6").style.display = "none";
        } else if (currentURL.includes("React")) {
            document.getElementById("전체").style.display = "none";
            document.getElementById("전체2").style.display = "none";
            document.getElementById("전체3").style.display = "block";
            document.getElementById("전체4").style.display = "none";
            document.getElementById("전체5").style.display = "none";
            document.getElementById("전체6").style.display = "none";
        } else if (currentURL.includes("Python")) {
            document.getElementById("전체").style.display = "none";
            document.getElementById("전체2").style.display = "none";
            document.getElementById("전체3").style.display = "none";
            document.getElementById("전체4").style.display = "block";
            document.getElementById("전체5").style.display = "none";
            document.getElementById("전체6").style.display = "none";
        } else if (currentURL.includes("Java")) {
            document.getElementById("전체").style.display = "none";
            document.getElementById("전체2").style.display = "none";
            document.getElementById("전체3").style.display = "none";
            document.getElementById("전체4").style.display = "none";
            document.getElementById("전체5").style.display = "block";
            document.getElementById("전체6").style.display = "none";
        } else if (currentURL.includes("Spring")) {
            document.getElementById("전체").style.display = "none";
            document.getElementById("전체2").style.display = "none";
            document.getElementById("전체3").style.display = "none";
            document.getElementById("전체4").style.display = "none";
            document.getElementById("전체5").style.display = "none";
            document.getElementById("전체6").style.display = "block";
        } else {
            document.getElementById("전체").style.display = "none";
            document.getElementById("전체2").style.display = "none";
            document.getElementById("전체3").style.display = "none";
            document.getElementById("전체4").style.display = "none";
            document.getElementById("전체5").style.display = "none";
            document.getElementById("전체6").style.display = "none";
        }
    </script>

</body>

</html>