<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>일반회원 인증방법 선택 &lt; 비밀번호찾기 &lt; L.POINT</title>
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/member/join/find_id.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <div class="container">
    
        <!-- header -->
		<jsp:include page="/WEB-INF/templates/member/header.jsp" />

        <main>
            <div class="title">비밀번호 찾기</div>
            <div class="page-description">
                <span>본인확인 수단을</span>
                <span>선택해주세요.</span>
            </div>
            <div class="find-way-wrapper">
                <div class="find-way">
                    <input type="radio" id="certificate" name="select_way" class="radio-input" checked>
                    <label for="certificate">본인인증</label>
                    <div class="input-form">
                        <div class="certificate-buttons">
                            <button type="button" class="certificate-button">
                                <img src="/static/images/find_id_naver.png" alt="">
                                <span>네이버</span>
                            </button>
                            <button type="button" class="certificate-button">
                                <img src="/static/images/find_id_toss.png" alt="">
                                <span>토스</span>
                            </button>
                            <button type="button" class="certificate-button">
                                <img src="/static/images/find_id_card.png" alt="">
                                <span>카드</span>
                            </button>
                            <button type="button" class="certificate-button">
                                <img src="/static/images/find_id_phone.png" alt="">
                                <span>휴대폰</span>
                            </button>
                        </div>
                        <span class="certificate-description">- 법인 명의 휴대폰 사용자는 통신사 지점 또는 대리점에 방문하여 법인명의 실사용자 등록 후 휴대폰
                            인증이 가능합니다.</span>
                    </div>
                </div>
            </div>
            <div class="buttons">
                <button type="button" class="cancel-button">이전</button>
            </div>
        </main>
    </div>

    <!-- footer -->
	<jsp:include page="/WEB-INF/templates/member/footer.jsp" />
	
	<script src="/static/js/member/join/find_password_certificate.js"></script>
</body>

</html>