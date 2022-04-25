<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디찾기 방법선택 &lt; 아이디찾기 &lt; L.POINT</title>
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/member/join/find_id.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <div class="container">
    
        <!-- header -->
		<jsp:include page="/WEB-INF/templates/member/header.jsp" />

        <main>
            <div class="title">아이디 찾기</div>
            <div class="page-description">
                <span>등록된 회원정보로</span>
                <span>아이디를 찾으실 수 있습니다.</span>
            </div>
            <div class="find-way-wrapper">
                <div class="find-way">
                    <input type="radio" id="phone" name="select_way" class="radio-input" checked>
                    <label for="phone">휴대폰 번호로 찾기</label>
                    <div class="input-form">
                        <div class="input-row">
                            <span class="input-title">이름</span>
                            <input class="input-text" type="text" name="name" placeholder="한글 또는 영문으로 입력해주세요.">
                        </div>
                        <div class="input-row">
                            <span class="input-title">휴대폰 번호</span>
                            <select name="first_number" class="select-box">
                                <option value="" selected>선택</option>
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                            <input type="number" name="middle_number" class="input-number" min="0" max="9999">
                            <span class="separator">-</span>
                            <input type="number" name="last_number" class="input-number" min="0" max="9999">
                        </div>
                    </div>
                </div>
                <div class="find-way">
                    <input type="radio" id="email" name="select_way" class="radio-input" selected>
                    <label for="email">이메일로 찾기</label>
                    <div class="input-form">
                        <div class="input-row">
                            <span class="input-title">이름</span>
                            <input class="input-text" type="text" name="name" placeholder="한글 또는 영문으로 입력해주세요.">
                        </div>
                        <div class="input-row">
                            <span class="input-title">이메일 주소</span>
                            <input class="input-text" type="text" name="email" placeholder="한글 또는 영문으로 입력해주세요.">
                        </div>
                    </div>
                </div>
                <div class="find-way">
                    <input type="radio" id="company_name" name="select_way" class="radio-input" selected>
                    <label for="company_name">사업자등록번호로 찾기</label>
                    <div class="input-form">
                        <div class="input-row">
                            <span class="input-title">법인명</span>
                            <input class="input-text" type="text" name="company_name" placeholder="한글 또는 영문으로 입력해주세요.">
                        </div>
                        <div class="input-row">
                            <span class="input-title">사업자번호</span>
                            <input class="input-number" type="text" name="first_number">
                            <span class="separator">-</span>
                            <input class="input-number" type="text" name="middle_number">
                            <span class="separator">-</span>
                            <input class="input-number" type="text" name="last_number">
                        </div>
                    </div>
                </div>
                <div class="find-way">
                    <input type="radio" id="certificate" name="select_way" class="radio-input" selected>
                    <label for="certificate">본인인증으로 찾기</label>
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
                <button type="button" class="cancel-button">취소</button>
                <button type="button" class="submit-button">다음</button>
            </div>
        </main>
    </div>

    <!-- footer -->
	<jsp:include page="/WEB-INF/templates/member/footer.jsp" />
	
	<script src="/static/js/member/join/find_id.js"></script>
</body>

</html>