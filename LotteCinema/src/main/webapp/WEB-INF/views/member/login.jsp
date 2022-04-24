<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<title>Document</title>
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
						<button type="button" class="member-btn current"
							data-tab="tab-section-1">회원</button>
					</div>
					<div>
						<button type="button" class="member-btn " data-tab="tab-section-2">비회원</button>
					</div>
					<div>
						<button type="button" class="member-btn " data-tab="tab-section-3">소셜
							로그인</button>
					</div>
				</div>
				<div class="select-contents">

					<section class="select-box current" id="tab-section-1">
						<div class="member">
							<div class="login-box">
								<p class="tip">L.POINT, 롯데시네마 ID로 별도의 회원가입 없이 이용 가능 합니다.</p>
								<div class="login-area">
									<form action="/member/login" class="login-input-box">
										<input type="text" class="username" name="username"
											placeholder="아이디 또는 이메일을 입력해 주세요."> <input
											type="password" class="password" name="password"
											placeholder="비밀번호를 입력해 주세요.">
									</form>
									<button class="login">로그인</button>
								</div>
								<div class="login-assist">
									<div class="login-check">
										<input type="checkbox" id="checkSavedID"> <label
											for="checkSavedID">아이디 저장</label>
									</div>
									<div class="login-menu">
										<a href="#">회원가입</a> <a href="#">아이디 찾기</a> <a href="#">비밀번호
											찾기</a>
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
								<button type="button">비회원 로그인</button>
								<button type="button">비회원 예매확인</button>
							</div>
							<div class="n-login-input-box current">
								<div class="not-member-login">
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
													<select name="birthyear" id="birthyear">
														<option value="">출생년도</option>
														<!-- <option value="2022">2022</option>
														<option value="2021">2021</option>
														<option value="2020">2020</option>
														<option value="2019">2019</option>
														<option value="2018">2018</option>
														<option value="2017">2017</option>
														<option value="2016">2016</option>
														<option value="2015">2015</option>
														<option value="2014">2014</option>
														<option value="2013">2013</option>
														<option value="2012">2012</option>
														<option value="2011">2011</option>
														<option value="2010">2010</option>
														<option value="2009">2009</option>
														<option value="2008">2008</option>
														<option value="2007">2007</option>
														<option value="2006">2006</option>
														<option value="2005">2005</option>
														<option value="2004">2004</option>
														<option value="2003">2003</option>
														<option value="2002">2002</option>
														<option value="2001">2001</option>
														<option value="2000">2000</option>
														<option value="1999">1999</option>
														<option value="1998">1998</option>
														<option value="1997">1997</option>
														<option value="1996">1996</option>
														<option value="1995">1995</option>
														<option value="1994">1994</option>
														<option value="1993">1993</option>
														<option value="1992">1992</option>
														<option value="1991">1991</option>
														<option value="1990">1990</option>
														<option value="1989">1989</option>
														<option value="1988">1988</option>
														<option value="1987">1987</option>
														<option value="1986">1986</option>
														<option value="1985">1985</option>
														<option value="1984">1984</option>
														<option value="1983">1983</option>
														<option value="1982">1982</option>
														<option value="1981">1981</option>
														<option value="1980">1980</option>
														<option value="1979">1979</option>
														<option value="1978">1978</option>
														<option value="1977">1977</option>
														<option value="1976">1976</option>
														<option value="1975">1975</option>
														<option value="1974">1974</option>
														<option value="1973">1973</option>
														<option value="1972">1972</option>
														<option value="1971">1971</option>
														<option value="1970">1970</option>
														<option value="1969">1969</option>
														<option value="1968">1968</option>
														<option value="1967">1967</option>
														<option value="1966">1966</option>
														<option value="1965">1965</option>
														<option value="1964">1964</option>
														<option value="1963">1963</option>
														<option value="1962">1962</option>
														<option value="1961">1961</option>
														<option value="1960">1960</option>
														<option value="1959">1959</option>
														<option value="1958">1958</option>
														<option value="1957">1957</option>
														<option value="1956">1956</option>
														<option value="1955">1955</option>
														<option value="1954">1954</option>
														<option value="1953">1953</option>
														<option value="1952">1952</option>
														<option value="1951">1951</option>
														<option value="1950">1950</option>
														<option value="1949">1949</option>
														<option value="1948">1948</option>
														<option value="1947">1947</option>
														<option value="1946">1946</option>
														<option value="1945">1945</option>
														<option value="1944">1944</option>
														<option value="1943">1943</option>
														<option value="1942">1942</option>
														<option value="1941">1941</option>
														<option value="1940">1940</option>
														<option value="1939">1939</option>
														<option value="1938">1938</option>
														<option value="1937">1937</option>
														<option value="1936">1936</option>
														<option value="1935">1935</option>
														<option value="1934">1934</option>
														<option value="1933">1933</option>
														<option value="1932">1932</option>
														<option value="1931">1931</option>
														<option value="1930">1930</option>
														<option value="1929">1929</option>
														<option value="1928">1928</option>
														<option value="1927">1927</option>
														<option value="1926">1926</option>
														<option value="1925">1925</option>
														<option value="1924">1924</option>
														<option value="1923">1923</option>
														<option value="1922">1922</option>
														<option value="1921">1921</option>
														<option value="1920">1920</option>
														<option value="1919">1919</option>
														<option value="1918">1918</option>
														<option value="1917">1917</option>
														<option value="1916">1916</option>
														<option value="1915">1915</option>
														<option value="1914">1914</option>
														<option value="1913">1913</option>
														<option value="1912">1912</option>
														<option value="1911">1911</option>
														<option value="1910">1910</option>
														<option value="1909">1909</option>
														<option value="1908">1908</option>
														<option value="1907">1907</option>
														<option value="1906">1906</option>
														<option value="1905">1905</option>
														<option value="1904">1904</option>
														<option value="1903">1903</option>
														<option value="1902">1902</option>
														<option value="1901">1901</option>
														<option value="1900">1900</option> -->
													</select> <select name="birthmonth" id="birthmonth">
														<option value="">월</option>
														<option value="01">1</option>
														<option value="02">2</option>
														<option value="03">3</option>
														<option value="04">4</option>
														<option value="05">5</option>
														<option value="06">6</option>
														<option value="07">7</option>
														<option value="08">8</option>
														<option value="09">9</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
													</select> <select name="birthday" id="birthday">
														<option value="">일</option>
														<option value="01">1</option>
														<option value="02">2</option>
														<option value="03">3</option>
														<option value="04">4</option>
														<option value="05">5</option>
														<option value="06">6</option>
														<option value="07">7</option>
														<option value="08">8</option>
														<option value="09">9</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>
														<option value="17">17</option>
														<option value="18">18</option>
														<option value="19">19</option>
														<option value="20">20</option>
														<option value="21">21</option>
														<option value="22">22</option>
														<option value="23">23</option>
														<option value="24">24</option>
														<option value="25">25</option>
														<option value="26">26</option>
														<option value="27">27</option>
														<option value="28">28</option>
														<option value="29">29</option>
														<option value="30">30</option>
														<option value="31">31</option>
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
										<p>비회원 로그인 시 예매 및 예매확인/취소 메뉴만 이용 가능하며 관람권, 할인권을 포함한 기타 결제,
											할인수단은 정회원 로그인 시 사용 가능 합니다.</p>
									</div>
								</div>
								<div class="txtarea-box">
									<div class="txtarea-box">
										<div class="txtarea">
											<span class="focus-textarea"> 개인정보의 수집목적 및 항목</span><br>
											① 개인정보 수집 목적: 비회원 에매확인 및 이용자 식별<br> ②수집항목: 이름, 휴대폰번호,
											생년월일, 고유번호<br> <br> <span class="color-red">
												<br>개인정보의 보유 및 이용기간<br> 개인정보는 영화 예매 완료 후 동의일로부터
												70일까지 위 이용 목적으로 이용 및 보유 합니다. (단, 생년월일은 이용자 식별 목적으로 이용되며 별도
												보관되지 않습니다.)<br> 다만, 상법 등 관련법령의 규정에 의하여 거래 관련 관리 의무 관계의
												확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우 아래와 같이 보유합니다.<br> 대금결제
												및 재화 등의 공급에 관한 기록 : 5년
											</span> <br> <br>※ 비회원 예매서비스 제공을 위한 최소한의 개인정보이며 거부할 수
											있습니다. 다만, 수집에 동의하지 않을 경우 서비스 이용이 제한됩니다.
										</div>
									</div>
									<div class="agreement-check-box">
										<input type="radio" name="agree-check" id="privacy-Ok1">
										<label for="privacy-Ok1">동의</label> <input type="radio"
											name="agree-check" id="privacy-Ok2"> <label
											for="privacy-Ok2">동의하지 않음</label>
									</div>
								</div>
								<div class="signup-signin-button">
									<a href="#" class="btn-signup">회원가입</a> <a href="#"
										class="btn-signin">비회원 로그인</a>
								</div>
							</div>
							<div class="n-login-input-box">
								<div class="not-member-reservation">
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
											① 개인정보 수집 목적: 비회원 에매확인 및 이용자 식별<br> ②수집항목: 이름, 휴대폰번호,
											생년월일, 고유번호<br> <br> <span class="color-red">
												<br>개인정보의 보유 및 이용기간<br> 개인정보는 영화 예매 완료 후 동의일로부터
												70일까지 위 이용 목적으로 이용 및 보유 합니다. (단, 생년월일은 이용자 식별 목적으로 이용되며 별도
												보관되지 않습니다.)<br> 다만, 상법 등 관련법령의 규정에 의하여 거래 관련 관리 의무 관계의
												확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우 아래와 같이 보유합니다.<br> 대금결제
												및 재화 등의 공급에 관한 기록 : 5년
											</span> <br> <br>※ 비회원 예매서비스 제공을 위한 최소한의 개인정보이며 거부할 수
											있습니다. 다만, 수집에 동의하지 않을 경우 서비스 이용이 제한됩니다.
										</div>
									</div>
									<div class="agreement-check-box">
										<input type="radio" name="agree-check" id="privacyOk1" checked>
										<label for="privacyOk1">동의</label> <input type="radio"
											name="agree-check" id="privacyOk2"> <label
											for="privacyOk2">동의하지 않음</label>
									</div>
								</div>
								<div class="signup-signin-button">
									<a href="#" class="btn-signup">회원가입</a> <a href="#"
										class="btn-signin">비회원 예매확인</a>
								</div>
							</div>
						</div>
					</section>

					<section class="select-box " id="tab-section-3">
						<div class="login-box-social">
							<div class="login-items-social">
								<div class="a-box-social">
									<a href="#" class="btn-naver-social" title="네이버 계정으로 새창열기">네이버
										계정으로 로그인</a> <a href="#" class="btn-cacao-social"
										title="카카오 계정으로 새창열기">카카오 계정으로 로그인</a>
									<div class="login-menu-social">
										<a href="#" title="페이지 이동">회원가입</a> <a href="#" title="페이지 이동">아이디
											찾기</a> <a href="#" title="페이지 이동">비밀번호 찾기</a>
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
	<script src="/static/js/member/login.js"></script>
</body>

</html>