<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>카드본인인증 &lt; 회원가입 &lt; L.POINT</title>
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/member/join/join_header.css">
    <link rel="stylesheet" href="/static/css/member/join/join_footer.css">
    <link rel="stylesheet" href="/static/css/member/join/certificate_header.css">
    <link rel="stylesheet" href="/static/css/member/join/certificate_footer.css">
    <link rel="stylesheet" href="/static/css/member/join/card_certificate.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <main class="container">
        
        <!-- header -->
		<jsp:include page="/WEB-INF/templetes/member/header.jsp" />
        
        <!-- certificate 작업 필요 -->
        <div class="mast-body">
            <div class="main-container">
                <div class="main-toparea">
                    <h2 class="main-title">
                        <span>회원가입</span>
                    </h2>
                    <div class="main-headline">
                        <span>회원가입을 위해</span><br>
                        <span>카드 본인 인증해주세요.</span>
                    </div>
                </div>
                <div class="main-contents">
                    <div class="card-section">
                        <div class="select-card">
                            <span>카드사 선택</span>
                        </div>
                        <div class="kind-card">
                            <div class="card-list">
                                <button type="button" class="logo-img">
                                   	<img src="/static/images/lotteCard_LOGO_01.png" alt="">
                                </button>
                                <button type="button" class="logo-img">
                                   	<img src="/static/images/CDCO_LOGO_02.png" alt="">
                                </button>
                                <button type="button" class="logo-img">
                                   	<img src="/static/images/CDCO_LOGO_03.png" alt="">
                                </button>
                                <button type="button" class="logo-img">
                                   	<img src="/static/images/CDCO_LOGO_04.png" alt="">
                                </button>
                                <button type="button" class="logo-img">
                                   	<img src="/static/images/CDCO_LOGO_05.png" alt="">
                                </button>
                                <button type="button" class="logo-img">
                                   	<img src="/static/images/CDCO_LOGO_06.png" alt="">
                                </button>
                                <button type="button" class="logo-img">
                                   	<img src="/static/images/CDCO_LOGO_07.png" alt="">
                                </button>
                                <button type="button" class="logo-img">
                                   	<img src="/static/images/CDCO_LOGO_08.png" alt="">
                                </button>
                            </div>
                        </div>
                        <div class="card-desceiption">
                            <p>- 카드사 정보는 <a href="#">여기를 클릭</a>해주세요</p>
                            <p>- 소지하신 카드에 BC 로고가 있는 경우 BC카드를 선택해주세요.</p>
                        </div>
                    </div>
                    <div class="card-number-section">
                    	<div class="title">카드번호 입력</div>
                    	<div class="card-inputs">
                    		<input type="number" min="0" max="9999" name="first_number">
                    		<span class="separator">-</span>
                    		<input type="number" min="0" max="9999" name="second_number">
                    		<span class="separator">-</span>
                    		<input type="number" min="0" max="9999" name="third_number">
                    		<span class="separator">-</span>
                    		<input type="number" min="0" max="9999" name="fourth_number">
                    	</div>
                    	<div class="form-message"></div>
                    </div>
                    <div class="type-section">
                        <div class="select-subject">
                            <span>인증유형 선택</span>
                        </div>
                        <div class="checking">
                            <div class="checking-box">
                                <div>
                                    <input type="radio" name="certificate_flag" class="app-cert">
                                    <label for="checking-box">간편인증(APP카드)</label>
                                </div>
                                <button type="button">자세히</button>
                            </div>
                            <div class="checking-box">
                                <div>
                                    <input type="radio" name="certificate_flag" class="app-cert">
                                    <label for="checking-box">일반인증(ARS)</label>
                                </div>
                                <button type="button">자세히</button>
                            </div>
                            <div class="checking-box">
                                <div>
                                    <input type="radio" name="certificate_flag" class="app-cert">
                                    <label for="checking-box">홈페이지 인증</label>
                                </div>
                                <button type="button">자세히</button>
                            </div>
                            <div class="checking-box"></div>
                        </div>
                    </div>
                    <div class="btn-center">
                        <button type="button">취소</button>
                        <button type="button">다음으로</button>
                    </div>
                </div>
            </div>
        </div>
    </main>

	<!-- footer -->
	<jsp:include page="/WEB-INF/templetes/member/footer.jsp" />    

    <script src="/static/js/member/join/footer_insite.js"></script>
    <script src="/static/js/member/join/card_certificate.js"></script>
</body>

</html>