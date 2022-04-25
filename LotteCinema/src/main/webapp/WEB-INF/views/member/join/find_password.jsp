<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디확인 &lt; 비밀번호찾기 &lt; L.POINT</title>
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/member/join/find_password.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <div class="container">
        
		<!-- header -->
    	<jsp:include page="/WEB-INF/templates/member/header.jsp" />

        <main>
            <div class="title">비밀번호 찾기</div>
            <div class="page-description">
                <span>아이디 확인 후</span>
                <span>비밀번호를 다시 설정하실 수 있습니다.</span>
            </div>
            <div class="find-way-wrapper">
                <div class="find-way">
                    <div class="input-row">
                        <span class="input-title">아이디</span>
                        <input class="input-text" type="text" name="username" placeholder="한글 또는 영문으로 입력해주세요.">
                        <button class="submit-button" type="button">확인</button>
                    </div>
                </div>
            </div>
            <div class="buttons">
                <button type="button" class="cancel-button">취소</button>
            </div>
        </main>
    </div>

    <!-- footer -->
    <jsp:include page="/WEB-INF/templates/member/footer.jsp" />
    
    <script src="/static/js/member/join/find_password.js"></script>
</body>

</html>