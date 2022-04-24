<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디찾기완료 &lt; 아이디찾기 &lt; L.POINT</title>
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/member/join/join_header.css">
    <link rel="stylesheet" href="/static/css/member/join/join_footer.css">
    <link rel="stylesheet" href="/static/css/member/join/find_id_result.css">

<body>
    <div class="container">
        
		<!-- header -->
		<jsp:include page="/WEB-INF/templetes/member/header.jsp" />

        <main>
            <div class="title">아이디 찾기</div>
            <div class="page-description">
                <span>입력하신 정보와</span>
                <span>일치하는 아이디 정보입니다.</span>
            </div>
            <div class="underline-title">아이디 찾기 결과</div>
            <div class="find-result-wrapper">
                <span>L.POINT ID</span>
                <span class="find-result">${sessionScope.username}</span>
            </div>
            <div class="description">- 개인정보보호를 위해 아이디 뒷자리는 ***로 표시됩니다.</div>
            <div class="underline-title">아이디 전체 확인</div>
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
            <span class="description">- 법인 명의 휴대폰 사용자는 통신사 지점 또는 대리점에 방문하여 법인명의 실사용자 등록 후 휴대폰
                인증이 가능합니다.</span>
            <a class="circle red" href="/member/login">확인</a>
        </main>
    </div>

    <!-- footer -->
    <jsp:include page="/WEB-INF/templetes/member/footer.jsp" />
    
</body>

</html>