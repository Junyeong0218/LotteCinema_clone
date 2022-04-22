<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 완료 &lt; 회원가입 &lt; L.POINT</title>
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/member/join/join_header.css">
    <link rel="stylesheet" href="/static/css/member/join/join_footer.css">
    <link rel="stylesheet" href="/static/css/member/join/complete.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <div class="container">
        
		<!-- header -->
    	<jsp:include page="/WEB-INF/templetes/member/header.jsp" />

        <main>
            <div class="title">회원가입</div>
            <div class="complete-messages">
                <img src="/static/images/signup_success.png" alt="회원가입 완료">
                <span class="message"><span class="username">${sessionScope.name}</span>님 환영합니다.</span>
                <span class="message">서비스 이용을 위해</span>
                <span class="message">다시 로그인을 해주세요.</span>
            </div>
            <div class="to-login-button">
                <a href="/member/login" class="to-login">로그인<span class="circle red">하기</span></a>
            </div>
        </main>

    </div>

	<!-- footer -->
    <jsp:include page="/WEB-INF/templetes/member/footer.jsp" />

</body>

</html>