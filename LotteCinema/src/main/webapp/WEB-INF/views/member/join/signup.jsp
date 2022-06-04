<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="ko">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>정보입력 &lt; 회원가입 &lt; L.POINT</title>
            <link rel="stylesheet" href="/static/css/container.css">
            <link rel="stylesheet" href="/static/css/member/join/signup.css">
            <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        </head>

        <body>
            <div class="container">

                <!-- header -->
                <jsp:include page="/WEB-INF/templates/member/header.jsp" />

                <main>
                    <div id="contents">
                        <div class="contents-header">
                            <h2 class="contents-title">회원가입</h2>
                            <div class="step-image">
                                <img src="/static/images/img-step.png" alt="">
                            </div>
                            <div class="step-description">
                                <span>짠! 벌써</span>
                                <span>마지막 단계에요!</span>
                            </div>
                        </div>
                        <form action="" method="post">
                            <span class="form-title">회원정보입력</span>
                            <div class="form-row">
                                <span class="asterisk">*<span class="row-title">아이디</span></span>
                                <div class="input-and-message">
                                    <input type="text" name="username">
                                    <span class="form-message black">아이디는 영소문자와 숫자로 6자 이상 15자 이하여야합니다.</span>
                                </div>
                            </div>
                            <div class="form-row">
                                <span class="asterisk">*<span class="row-title">비밀번호</span></span>
                                <div class="input-and-message">
                                    <input type="password" name="password">
                                    <span class="form-message black">비밀번호는 영문, 숫자, 특수문자를 포함하여 8자 이상 16자 이하여야 합니다.</span>
                                </div>
                            </div>
                            <div class="form-row">
                                <span class="asterisk">*<span class="row-title">비밀번호 확인</span></span>
                                <div class="input-and-message">
                                    <input type="password" name="password_confirm">
                                    <span class="form-message"></span>
                                </div>
                            </div>
                            <div class="form-row">
                                <span class="asterisk">*<span class="row-title">이름</span></span>
                                <div class="input-and-message">

                                    <c:if test="${sessionScope.category == 'phone_signup'}">
                                        <input type="text" name="name" readonly
                                            value="${sessionScope.signupRequestDto.name}">
                                    </c:if>
                                    <c:if test="${sessionScope.category != 'phone_signup'}">
                                        <input type="text" name="name">
                                    </c:if>

                                    <span class="form-message"></span>
                                </div>
                            </div>
                            <div class="form-row">
                                <span class="asterisk">*<span class="row-title">휴대폰 번호</span></span>
                                <div class="input-and-message">

                                    <c:if test="${sessionScope.category == 'phone_signup'}">
                                        <input type="text" name="phone" readonly
                                            value="${sessionScope.signupRequestDto.phone}">
                                    </c:if>
                                    <c:if test="${sessionScope.category != 'phone_signup'}">
                                        <input type="text" name="phone" placeholder="ex) 010-1234-5678">
                                    </c:if>

                                    <span class="form-message"></span>
                                    <span class="form-message red">*휴대폰 번호를 정확하게 입력하지 않을 경우 회원 혜택이 제한될 수 있습니다.</span>
                                </div>
                            </div>
                            <div class="form-row">
                                <span class="asterisk">*<span class="row-title">이메일 주소</span></span>
                                <div class="input-and-message">
                                    <input type="text" name="email">
                                    <span class="form-message"></span>
                                </div>
                            </div>
                            <div class="form-row">
                                <span class="asterisk">*<span class="row-title">주소</span></span>
                                <div class="input-and-message">
                                    <input type="text" name="address">
                                    <span class="form-message"></span>
                                </div>
                            </div>
                        </form>
                        <div class="agree-marketing">
                            <span class="form-title">마케팅 정보 수신동의</span>
                            <div class="check-all">
                                <input type="checkbox" id="checkAll" name="check-all" class="checkbox">
                                <label for="checkAll">
                                    <img src="/static/images/radio_button_img.png" alt="">
                                </label>
                                <span>전체동의</span>
                            </div>
                            <div class="checkbox-wrapper">
                                <span class="row-title">롯데컬처웍스</span>
                                <div class="check-boxes">
                                    <input type="checkbox" id="emailAccept" name="email-accept" class="checkbox">
                                    <label for="emailAccept"><img src="/static/images/radio_button_img.png"
                                            alt=""></label>
                                    <span>E-mail</span>
                                    <input type="checkbox" id="smsAccept" name="sms-accept" class="checkbox">
                                    <label for="smsAccept"><img src="/static/images/radio_button_img.png"
                                            alt=""></label>
                                    <span>SMS</span>
                                </div>
                            </div>
                </main>
            </div>

            <!-- footer -->
            <jsp:include page="/WEB-INF/templates/member/footer.jsp" />

            <script src="/static/js/member/join/footer_insite.js"></script>
            <script src="/static/js/member/join/signup.js"></script>
        </body>

        </html>