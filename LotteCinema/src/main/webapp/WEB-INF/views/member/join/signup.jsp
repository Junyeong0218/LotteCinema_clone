<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>정보입력 &lt; 회원가입 &lt; L.POINT</title>
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/member/join/join_header.css">
    <link rel="stylesheet" href="/static/css/member/join/join_footer.css">
    <link rel="stylesheet" href="/static/css/member/join/signup.css">
</head>

<body>
    <div class="container">

        <!-- header -->
		<jsp:include page="/WEB-INF/templetes/member/header.jsp" />

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
                        <input type="text" name="username">
                    </div>
                    <div class="form-row">
                        <span class="asterisk">*<span class="row-title">이름</span></span>
                        <input type="text" name="name">
                    </div>
                    <div class="form-row">
                        <span class="asterisk">*<span class="row-title">휴대폰 번호</span></span>
                        <div class="input-and-message">
                            <input type="text" name="phone">
                            <span class="form-message">*휴대폰 번호를 정확하게 입력하지 않을 경우 회원 혜택이 제한될 수 있습니다.</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <span class="asterisk">*<span class="row-title">이메일 주소</span></span>
                        <input type="text" name="email">
                    </div>
                </form>
                <div class="agree-marketing">
                    <span class="form-title">마케팅 정보 수신동의</span>
                    <div class="check-all">
                        <input type="radio" id="checkAll" name="check-all" class="radiobox" checked>
                        <label for="checkAll"><img src="/static/images/radio_button_img.png" alt=""></label>
                        <span>전체동의</span>
                    </div>
                    <div class="radio-button-wrapper">
                        <span class="row-title">롯데컬처웍스</span>
                        <div class="radio-buttons">
                            <input type="radio" id="emailAccept" name="email-accept" class="radiobox">
                            <label for="emailAccept"><img src="/static/images/radio_button_img.png" alt=""></label>
                            <span>E-mail</span>
                            <input type="radio" id="smsAccept" name="sms-accept" class="radiobox">
                            <label for="smsAccept"><img src="/static/images/radio_button_img.png" alt=""></label>
                            <span>SMS</span>
                        </div>
                    </div>
                    <div class="benefit-message">
                        <span>- 정보수신동의를 하시면, 고객혜택 및 이벤트 등 다양한 정보를 받으실 수 있습니다.</span>
                    </div>
                </div>
                <div class="submit-buttons">
                    <button type="button" class="cancel-button">취소</button>
                    <button type="button" class="submit-button">다음</button>
                </div>
            </div>
        </main>
    </div>

    <!-- footer -->
	<jsp:include page="/WEB-INF/templetes/member/footer.jsp" />
	
	<script src="/static/js/member/join/footer_insite.js"></script>
</body>

</html>