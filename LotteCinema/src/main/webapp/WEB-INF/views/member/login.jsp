<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <title>Login - 롯데시네마</title>
	<link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/store/header.css">
    <link rel="stylesheet" href="/static/css/store/aside_bar.css">
    <link rel="stylesheet" href="/static/css/store/banner_section.css">
    <link rel="stylesheet" href="/static/css/store/footer.css">
    <link rel="stylesheet" href="/static/css/member/login_content.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<div class="container">
	
		<!-- top_banner -->
        <jsp:include page="/WEB-INF/templetes/top_banner.jsp" />
        
        <!-- header -->
        <jsp:include page="/WEB-INF/templetes/header.jsp" />
        
        <!-- aside_bar -->
        <jsp:include page="/WEB-INF/templetes/aside_bar.jsp" />
        
        <main>
        	<div id="contents" class="contents">
        		<div class="select-button">
	                <div>
	                    <button type="button" class="member-btn current" data-tab="tab-section-1">회원</button>
	                </div>
	                <div>
	                    <button type="button" class="member-btn " data-tab="tab-section-2">비회원</button>
	                </div>
	                <div>
	                    <button type="button" class="member-btn " data-tab="tab-section-3">소셜 로그인</button>
	                </div>
	            </div>
	            <div class="select-contents">
	            
	                <section class="select-box current" id="tab-section-1">
	                    <div class="member">
	                        <div class="login-box">
	                            <p class="tip">L.POINT, 롯데시네마 ID로 별도의 회원가입 없이 이용 가능 합니다.</p>
	                            <div class="login-area">
	                                <div class="login-input-box">
	                                    <input type="text" class="username" placeholder="아이디 또는 이메일을 입력해 주세요.">
	                                    <input type="password" class="password" placeholder="비밀번호를 입력해 주세요.">
	                                </div>
	                                <button type="button" class="member-login">로그인</button>
	                            </div>
	                            <div class="login-assist">
	                                <div class="login-check">
	                                    <input type="checkbox" id="checkSavedID">
	                                    <label for="checkSavedID">아이디 저장</label>
	                                </div>
	                                <div class="login-menu">
	                                    <a href="/member/join">회원가입</a>
	                                    <a href="/member/join/find_id">아이디 찾기</a>
	                                    <a href="/member/join/find_password">비밀번호 찾기</a>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="login-banner">
	                            <a href="#"><img src="/static/images/login_banner.png"></a>
	                        </div>
	                    </div>
	                </section>

	            	<section class="select-box " id="tab-section-2">
	            		<div class="not-member">
	                        <div class="not-member-select-btn">
	                            <button type="button" class="not-member-login-button">비회원 로그인</button>
	                            <button type="button" class="not-member-reservation-button">비회원 예매확인</button>
	                        </div>
		                    <div class="not-member-login current">
		                        <div class="n-login-input-box">
		                            <div class="n-login-items">
		                                <div class="n-login-input">
		                                    <div class="label-box">
		                                        <label for="username">이름<input type="text"
		                                                placeholder="이름을 입력해 주세요"></label>
		                                    </div>
		                                    <div class="label-box">
		                                        <label for="userphone">휴대폰번호<input type="text"
		                                                placeholder="휴대폰 번호(- 생략)를 입력해 주세요."></label>
		                                    </div>
		                                    <div class="label-box">
		                                        <label for="birth" class="birth-year-label">생년월일</label>
		                                        <div class="birth-select">
		                                            <select name="birthyear"  id="birthyear">
		                                                <option value="">출생년도</option>
	                                                	
		                                            </select>
		                                            <select name="birthmonth"  id="birthmonth">
		                                                <option value="">월</option>
		                                                
		                                            </select>
		                                            <select name="birthday"  id="birthday">
		                                                <option value="">일</option>
		                                                
		                                            </select>
		                                        </div>
		                                    </div>
		                                    <div class="label-box">
		                                        <label for="passowrd2">예매 비밀번호<input type="text"
		                                                placeholder="예매 비밀번호 (4자리)를 입력해 주세요."></label>
		                                    </div>
		                                    <div class="label-box">
		                                        <label for="password3">예매 비밀번호 확인<input type="text"
		                                                placeholder="예매 비밀번호 (4자리)를 재입력해 주세요."></label>
		                                    </div>
		                                </div>
		                                <div class="n-login-banner">
		                                    <img src="/static/images/n_login_banner.jpg" alt="">
		                                </div>
	                            	</div>
		                            <div class="n-login-info">
		                                <p>비회원 로그인 시 예매 및 예매확인/취소 메뉴만 이용 가능하며 관람권, 할인권을 포함한 기타 결제, 할인수단은 정회원 로그인 시 사용 가능
		                                    합니다.
		                                </p>
		                            </div>
	                        	</div>
		                        <div class="txtarea-box">
		                            <div class="txtarea-box">
		                                <div class="txtarea">
		                                    <span class="focus-textarea"> 개인정보의 수집목적 및 항목</span><br>
		                                    ① 개인정보 수집 목적: 비회원 에매확인 및 이용자 식별<br>
		                                    ②수집항목: 이름, 휴대폰번호, 생년월일, 고유번호<br><br>
		                                    <span class="color-red">
		                                        <br>개인정보의 보유 및 이용기간<br>
		                                        개인정보는 영화 예매 완료 후 동의일로부터 70일까지 위 이용 목적으로 이용 및 보유 합니다. (단, 생년월일은 이용자 식별 목적으로
		                                        이용되며
		                                        별도 보관되지 않습니다.)<br>
		                                        다만, 상법 등 관련법령의 규정에 의하여 거래 관련 관리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우 아래와
		                                        같이
		                                        보유합니다.<br>
		                                        대금결제 및 재화 등의 공급에 관한 기록 : 5년
		                                    </span>
		                                    <br><br>※ 비회원 예매서비스 제공을 위한 최소한의 개인정보이며 거부할 수 있습니다. 다만, 수집에 동의하지 않을 경우 서비스 이용이
		                                    제한됩니다.
		                                </div>
		                            </div>
		                            <div class="agreement-check-box">
		                                <input type="radio" name="agree-check" id="privacy-Ok1">
		                                <label for="privacy-Ok1">동의</label>
		                                <input type="radio" name="agree-check" id="privacy-Ok2">
		                                <label for="privacy-Ok2">동의하지 않음</label>
		                            </div>
		                        </div>
		                        <div class="signup-signin-button">
		                            <a href="#" class="btn-signup">회원가입</a>
		                            <a href="#" class="btn-signin">비회원 로그인</a>
		                        </div>
	                    	</div>
		                    <div class="not-member-reservation">
		                        <div class="n-login-input-box">
		                            <div class="n-login-items">
		                                <div class="n-reservation-input">
		                                    <div class="label-box">
		                                        <label for="username">이름<input type="text"
		                                                placeholder="이름을 입력해 주세요"></label>
		                                    </div>
		                                    <div class="label-box">
		                                        <label for="userphone">휴대폰번호<input type="text"
		                                                placeholder="휴대폰 번호(- 생략)를 입력해 주세요."></label>
		                                    </div>
		                                    <div class="label-box">
		                                        <label for="passowrd2">예매 비밀번호<input type="text"
		                                                placeholder="예매 비밀번호 (4자리)를 입력해 주세요."></label>
		                                    </div>
		                                </div>
		                                <div class="n-login-banner">
		                                    <img src="/static/images/n_login_banner.jpg" alt="">
		                                </div>
		                            </div>
		                        </div>
		                        <div class="txtarea-box">
		                            <div class="txtarea-box">
		                                <div class="txtarea">
		                                    <span class="focus-textarea"> 개인정보의 수집목적 및 항목</span><br>
		                                    ① 개인정보 수집 목적: 비회원 에매확인 및 이용자 식별<br>
		                                    ②수집항목: 이름, 휴대폰번호, 생년월일, 고유번호<br><br>
		                                    <span class="color-red">
		                                        <br>개인정보의 보유 및 이용기간<br>
		                                        개인정보는 영화 예매 완료 후 동의일로부터 70일까지 위 이용 목적으로 이용 및 보유 합니다. (단, 생년월일은 이용자 식별 목적으로
		                                        이용되며
		                                        별도 보관되지 않습니다.)<br>
		                                        다만, 상법 등 관련법령의 규정에 의하여 거래 관련 관리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우 아래와
		                                        같이
		                                        보유합니다.<br>
		                                        대금결제 및 재화 등의 공급에 관한 기록 : 5년
		                                    </span>
		                                    <br><br>※ 비회원 예매서비스 제공을 위한 최소한의 개인정보이며 거부할 수 있습니다. 다만, 수집에 동의하지 않을 경우 서비스 이용이
		                                    제한됩니다.
		                                </div>
		                            </div>
		                            <div class="agreement-check-box">
		                                <input type="radio" name="agree-check" id="privacyOk1" checked>
		                                <label for="privacyOk1">동의</label>
		                                <input type="radio" name="agree-check" id="privacyOk2">
		                                <label for="privacyOk2">동의하지 않음</label>
		                            </div>
		                        </div>
		                        <div class="signup-signin-button">
		                            <a href="#" class="btn-signup">회원가입</a>
		                            <a href="#" class="btn-signin">비회원 예매확인</a>
		                        </div>
	                    	</div>
                    	</div>
                	</section>
                		
               		<section class="select-box " id="tab-section-3">
	                    <div class="login-box-social">
	                        <div class="login-items-social">
	                            <div class="a-box-social">
	                                <a href="#" class="btn-naver-social" title="네이버 계정으로 새창열기">네이버 계정으로 로그인</a>
	                                <a href="#" class="btn-cacao-social" title="카카오 계정으로 새창열기">카카오 계정으로 로그인</a>
	                                <div class="login-menu-social">
	                                    <a href="#" title="페이지 이동">회원가입</a>
	                                    <a href="#" title="페이지 이동">아이디 찾기</a>
	                                    <a href="#" title="페이지 이동">비밀번호 찾기</a>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="login-banner-social">
	                            <img src="/static/images/n_login_banner.jpg" alt="">
	                        </div>
	                    </div>
	                </section>
				</div>
        	</div>
        </main>
        
        <!-- side_banner -->
        <jsp:include page="/WEB-INF/templetes/side_banner.jsp" />
        
        <!-- banner_section -->
        <jsp:include page="/WEB-INF/templetes/banner_section.jsp" />
        
        <!-- footer -->
        <jsp:include page="/WEB-INF/templetes/footer.jsp" />
	</div>
	
	<script src="/static/js/store/nav_control.js"></script>
    <script src="/static/js/store/scroll_control.js"></script>
    <script src="/static/js/store/footer_banner_control.js"></script>
    <script src="/static/js/member/login_tab_control.js"></script>
    <script src="/static/js/member/login.js"></script>
</body>

</html>