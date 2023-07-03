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
        <a href="//" class="text-white rounded d-inline-block text-center"><i data-feather="home" class="fea icon-sm"></i></a>
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
                            <h5 class="my-4">회원번호찾기</h5>
                        </div>
                        <form action="/customers/findPassword" method="post" class="findPassword-form">
                            <div class="row">

                                <% if (request.getAttribute("successMessage") != null) { %>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>나의 회원번호 <span class="text-danger">*</span></label>
                                        <input type="text" name="customerNumber" id="customerNumber" class="form-control" value="${customers.customerNumber}" readonly>
                                    </div>
                                </div>
                                 <div class="col-12">
                                    <a href="/products/login"><input type="button" class="btn btn-primary btn-block" value="로그인하러가기"></a>
                                 </div>
                                <% } %>

                                <% if (request.getAttribute("successMessage") == null) { %>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label class="cart-tmpl-label" for="phone">
                                            휴대폰 번호 <span class="cart-tmpl-label__required-sign"> * </span>
                                            (숫자만 입력)
                                        </label>
                                        <input type="text" name="phone" class="form-control" required="" placeholder="전화번호 :">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Password <span class="text-danger">*</span></label>
                                        <input type="text" name="contactFirstName" id="contactFirstName" class="form-control" required="" placeholder="이름 :">
                                        <p id="check-result"></p>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <input type="button" onclick="findByCustomerName()" class="btn btn-primary btn-block" value="인증요청">
                                </div>
                        </form>
                        <% } %>
                    </div>
                </div>
                <!--end login-->
            </div>
        </div>
        <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
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

<script>
    // 인증번호의 입력 창과 전송 버튼을 추가하는 함수
    // 인증번호의 입력 창과 전송 버튼을 추가하는 함수
    const addVerificationCodeInput = () => {
        const form = document.querySelector('.findPassword-form');

        // 기존의 인증번호 입력 창과 전송 버튼 제거
        const existingVerificationCodeInput = form.querySelector('input[name="verificationCode"]');
        const existingSubmitButton = form.querySelector('input[type="submit"]');
        if (existingVerificationCodeInput) {
            existingVerificationCodeInput.remove();
        }
        if (existingSubmitButton) {
            existingSubmitButton.remove();
        }

        // 새로운 인증번호 입력 창 생성
        const verificationCodeInput = document.createElement('input');
        verificationCodeInput.type = 'text';
        verificationCodeInput.name = 'verificationCode';
        verificationCodeInput.classList.add('form-control', 'mt-3');
        verificationCodeInput.required = true;
        verificationCodeInput.placeholder = '인증번호 입력';
        form.appendChild(verificationCodeInput);

        // 새로운 전송 버튼 생성
        const submitButton = document.createElement('input');
        submitButton.type = 'submit';
        submitButton.classList.add('btn', 'btn-primary', 'btn-block', 'mt-3');
        submitButton.value = '인증 확인';
        form.appendChild(submitButton);
    };


    // findByCustomerName 함수 수정
    const findByCustomerName = () => {
        const name = document.getElementById('contactFirstName').value;
        const checkResult = document.getElementById('check-result');
        console.log('입력한 이름', name);
        $.ajax({
            type: 'post',
            url: '/customers/findByCustomerName',
            data: {
                contactFirstName: name
            },
            success: function(res) {
                console.log('요청 성공', res);
                if (res === 'ok') {
                    console.log('인증번호가 카카오톡 또는 문자로 전송되었습니다');
                    checkResult.style.color = 'green';
                    checkResult.innerHTML = '인증번호가 카카오톡 또는 문자로 전송되었습니다';

                    // 인증번호 입력 창과 전송 버튼 추가
                    addVerificationCodeInput();
                } else {
                    console.log('이름을 다시 확인해주세요');
                    checkResult.style.color = 'red';
                    checkResult.innerHTML = '이름을 다시 확인해주세요';
                }
            },
            error: function(err) {
                console.log('에러 발생', err);
            }
        });
    };
</script>

</html>