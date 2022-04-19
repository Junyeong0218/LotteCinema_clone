<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>Document</title>
        <link rel="stylesheet" href="/static/css/container.css">
        <link rel="stylesheet" href="/static/css/Member/login_header.css">
        <link rel="stylesheet" href="/static/css/Member/login.css">
        <link rel="stylesheet" href="/static/css/Member/login_footer.css">
        <link rel="stylesheet" href="/static/css/Member/login_quick_menu.css">
        <link rel="stylesheet" href="/static/css/Member/login_content.css">

    </head>

    <body>
        <div class="container">
            <header class="h-container">
                <h1 class="logo"><a href="/index"><img src="/static/images/logo.png" alt="LotteCinema"></a></h1>
                <div class="high-box">
                    <ul class="h-menu1">
                        <li><a href="#" class="btn-facebook">페이스북</a></li>
                        <li><a href="#" class="btn-youtube">유튜브</a></li>
                        <li><a href="#" class="btn-instagram">인스타그램</a></li>
                    </ul>
                    <ul class="h-menu2">
                        <li>
                            <a href="#">멤버쉽</a>
                        </li>
                        <li>
                            <a href="#">고객센터</a>
                        </li>
                        <li>
                            <a href="#">단체관람/대관문의</a>
                        </li>
                        <li>
                            <a href="#">로그인</a>
                        </li>
                    </ul>
                    <ul class="h-menu3">
                        <li>
                            <a href="/join" class="signup">회원가입</a>
                        </li>
                        <li>
                            <a href="#" class="now-reser">바로예매</a>
                        </li>
                        <li>
                            <button class="btn-menu-all">전체 메뉴 레이어 열기</button>
                        </li>
                    </ul>
                </div>
                <div id="nav" class="nav">
                    <ul>
                        <li>
                            <a href="#">예매</a>
                            <div style="display: none;" class="nav-sub-list-hidden">
                                <ul style="opacity: 0;">
                                    <li>
                                        <a href="#" title="예매하기">예매하기</a>
                                    </li>
                                    <li>
                                        <a href="#" title="상영시간표">상영시간표</a>
                                    </li>
                                    <li>
                                        <a href="#" title="할인안내">할인안내</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#">영화</a>
                            <div style="display: none;" class="nav-sub-list-hidden">
                                <ul style="opacity: 0;">
                                    <li>
                                        <a href="#" title="홈">홈</a>
                                    </li>
                                    <li>
                                        <a href="#" title="현재상영작">현재상영작</a>
                                    </li>
                                    <li>
                                        <a href="#" title="상영예정작">상영예정작</a>
                                    </li>
                                    <li>
                                        <a href="#" title="아르떼">아르떼</a>
                                    </li>
                                    <li>
                                        <a href="#" title="국립극장">국립극장</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#">영화관</a>
                            <div style="display: none;" class="nav-sub-list-hidden">
                                <ul style="opacity: 0;">
                                    <li>
                                        <a href="#" title="스페셜관">스페셜관</a>
                                        <div style="display: none;">
                                            <ul style="opacity: 0;">
                                                <li><a href="#">홈</a></li>
                                                <li><a href="#">샤롯데</a></li>
                                                <li><a href="#">수퍼플렉스G</a></li>
                                                <li><a href="#">수퍼S</a></li>
                                                <li><a href="#">수퍼플렉스</a></li>
                                                <li><a href="#">수퍼4D</a></li>
                                                <li><a href="#">컬러리움</a></li>
                                                <li><a href="#">씨네살롱</a></li>
                                                <li><a href="#">씨네패밀리</a></li>
                                                <li><a href="#">씨네커플</a></li>
                                                <li><a href="#">씨네비즈</a></li>
                                                <li><a href="#">씨네컴포트(리클라이너)</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#" title="서울">서울</a>
                                        <div style="display: none;">
                                            <ul style="opacity: 0;">
                                                <li><a href="#">가산디지털</a></li>
                                                <li><a href="#">가양</a></li>
                                                <li><a href="#">강동</a></li>
                                                <li><a href="#">건대입구</a></li>
                                                <li><a href="#">김포공항</a></li>
                                                <li><a href="#">노원</a></li>
                                                <li><a href="#">도곡</a></li>
                                                <li><a href="#">독산</a></li>
                                                <li><a href="#">브로드웨이(신사)</a></li>
                                                <li><a href="#">서울대입구</a></li>
                                                <li><a href="#">수락산</a></li>
                                                <li><a href="#">수유</a></li>
                                                <li><a href="#">신도림</a></li>
                                                <li><a href="#">신림</a></li>
                                                <li><a href="#">에비뉴엘(명동)</a></li>
                                                <li><a href="#">영등포</a></li>
                                                <li><a href="#">용산</a></li>
                                                <li><a href="#">월드타워</a></li>
                                                <li><a href="#">은평(롯데몰)</a></li>
                                                <li><a href="#">중랑</a></li>
                                                <li><a href="#">청량리</a></li>
                                                <li><a href="#">합정</a></li>
                                                <li><a href="#">홍대입구</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#" title="경기/인천">경기/인천</a>
                                        <div style="display: none;">
                                            <ul style="opacity: 0;">
                                                <li><a href="#">광교아울렛</a></li>
                                                <li><a href="#">광명(광명사거리)</a></li>
                                                <li><a href="#">광명아울렛</a></li>
                                                <li><a href="#">광주터미널</a></li>
                                                <li><a href="#">구리아울렛</a></li>
                                                <li><a href="#">동탄</a></li>
                                                <li><a href="#">라페스타</a></li>
                                                <li><a href="#">마석</a></li>
                                                <li><a href="#">별내</a></li>
                                                <li><a href="#">병점</a></li>
                                                <li><a href="#">부천(신중동역)</a></li>
                                                <li><a href="#">부천역</a></li>
                                                <li><a href="#">부평</a></li>
                                                <li><a href="#">부평역사</a></li>
                                                <li><a href="#">북수원(천천동)</a></li>
                                                <li><a href="#">산본피트인</a></li>
                                                <li><a href="#">서수원</a></li>
                                                <li><a href="#">성남중앙(신흥역)</a></li>
                                                <li><a href="#">센트럴락</a></li>
                                                <li><a href="#">송탄</a></li>
                                                <li><a href="#">수원(수원역)</a></li>
                                                <li><a href="#">수지</a></li>
                                                <li><a href="#">시화</a></li>
                                                <li><a href="#">시흥장현</a></li>
                                                <li><a href="#">안산</a></li>
                                                <li><a href="#">안산고잔</a></li>
                                                <li><a href="#">안성</a></li>
                                                <li><a href="#">안양(안양역)</a></li>
                                                <li><a href="#">안양일번가</a></li>
                                                <li><a href="#">영종하늘도시</a></li>
                                                <li><a href="#">오산</a></li>
                                                <li><a href="#">용인기흥</a></li>
                                                <li><a href="#">용인역북</a></li>
                                                <li><a href="#">위례</a></li>
                                                <li><a href="#">의정부민락</a></li>
                                                <li><a href="#">인덕원</a></li>
                                                <li><a href="#">인천아시아드</a></li>
                                                <li><a href="#">인천터미널</a></li>
                                                <li><a href="#">주엽</a></li>
                                                <li><a href="#">진접</a></li>
                                                <li><a href="#">파주운정</a></li>
                                                <li><a href="#">판교(창조경제밸리)</a></li>
                                                <li><a href="#">평촌(범계역)</a></li>
                                                <li><a href="#">평택비전(뉴코아)</a></li>
                                                <li><a href="#">하남미사</a></li>
                                                <li><a href="#">향남</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#" title="충청/대전">충천/대전</a>
                                        <div style="display: none;">
                                            <ul style="opacity: 0;">
                                                <li><a href="#">당진</a></li>
                                                <li><a href="#">대전(백화점)</a></li>
                                                <li><a href="#">대전관저</a></li>
                                                <li><a href="#">대전둔산(월평동)</a></li>
                                                <li><a href="#">대전센트럴</a></li>
                                                <li><a href="#">서산</a></li>
                                                <li><a href="#">서청주(아울렛)</a></li>
                                                <li><a href="#">아산터미널</a></li>
                                                <li><a href="#">천안불당</a></li>
                                                <li><a href="#">청주용암</a></li>
                                                <li><a href="#">충주(모다아울렛)</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#" title="전라/광주">전라/광주</a>
                                        <div style="display: none;">
                                            <ul style="opacity: 0;">
                                                <li><a href="#">광주(백화점)</a></li>
                                                <li><a href="#">광주광산</a></li>
                                                <li><a href="#">군산나운</a></li>
                                                <li><a href="#">군산몰</a></li>
                                                <li><a href="#">수완(아울렛)</a></li>
                                                <li><a href="#">익산모현</a></li>
                                                <li><a href="#">전주(백화점)</a></li>
                                                <li><a href="#">전주송천</a></li>
                                                <li><a href="#">전주평화</a></li>
                                                <li><a href="#">충장로</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#" title="경북/대구"></a>
                                        <div style="display: none;">
                                            <ul style="opacity: 0;">
                                                <li><a href="#">경산</a></li>
                                                <li><a href="#">경주</a></li>
                                                <li><a href="#">경주황성</a></li>
                                                <li><a href="#">구미공단</a></li>
                                                <li><a href="#">대구광장</a></li>
                                                <li><a href="#">대구을하</a></li>
                                                <li><a href="#">대구현풍</a></li>
                                                <li><a href="#">동성로</a></li>
                                                <li><a href="#">상인</a></li>
                                                <li><a href="#">상주</a></li>
                                                <li><a href="#">성서</a></li>
                                                <li><a href="#">영주</a></li>
                                                <li><a href="#">영천</a></li>
                                                <li><a href="#">포항</a></li>
                                                <li><a href="#">프리미엄구미센트럴</a></li>
                                                <li><a href="#">프리미엄만경</a></li>
                                                <li><a href="#">프리미엄안동</a></li>
                                                <li><a href="#">프리미엄칠곡</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#" title="경남/부산/울산">경남/부산/울산</a>
                                        <div style="display: none;">
                                            <ul style="opacity: 0;">
                                                <li><a href="#">거창</a></li>
                                                <li><a href="#">광복</a></li>
                                                <li><a href="#">김해부원</a></li>
                                                <li><a href="#">김해아울렛(장유)(</a></li>
                                                <li><a href="#">대영</a></li>
                                                <li><a href="#">동래</a></li>
                                                <li><a href="#">동부산아울렛</a></li>
                                                <li><a href="#">드라이브 오시리아</a></li>
                                                <li><a href="#">마산(합성동)</a></li>
                                                <li><a href="#">부산명지</a></li>
                                                <li><a href="#">부산본점</a></li>
                                                <li><a href="#">사천</a></li>
                                                <li><a href="#">서면(전포동)</a></li>
                                                <li><a href="#">센텀시티</a></li>
                                                <li><a href="#">양산물금</a></li>
                                                <li><a href="#">엠비씨네(진주)</a></li>
                                                <li><a href="#">오투(부산대)</a></li>
                                                <li><a href="#">울산(백화점)</a></li>
                                                <li><a href="#">울산성남</a></li>
                                                <li><a href="#">진주혁신(롯데몰)</a></li>
                                                <li><a href="#">진해</a></li>
                                                <li><a href="#">창원</a></li>
                                                <li><a href="#">통영</a></li>
                                                <li><a href="#">프리미엄경남대</a></li>
                                                <li><a href="#">프리미엄진주(중안)</a></li>
                                                <li><a href="#">프리미엄해운대(장산역)</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#" title="강원">강원</a>
                                        <div style="display: none;">
                                            <ul style="opacity: 0;">
                                                <li><a href="#">남원주</a></li>
                                                <li><a href="#">동해</a></li>
                                                <li><a href="#">속초</a></li>
                                                <li><a href="#">원주무실</a></li>
                                                <li><a href="#">춘천</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#" title="제주">제주</a>
                                        <div style="display: none;">
                                            <ul style="opacity: 0;">
                                                <li><a href="#">서귀포</a></li>
                                                <li><a href="#">제주삼화지구</a></li>
                                                <li><a href="#">제주아라</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#">이벤트</a>
                            <div style="display: none;" class="nav-sub-list-hidden">
                                <ul style="opacity: 0;">
                                    <li><a href="#" title="홈">홈</a></li>
                                    <li><a href="#" title="영화">영화</a></li>
                                    <li><a href="#" title="시사회/무대인사">시사회/무대인사</a></li>
                                    <li><a href="#" title="HOT">HOT</a></li>
                                    <li><a href="#" title="제휴할인">제휴할인</a></li>
                                    <li><a href="#" title="우리동네영화관">우리동네영화관</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#">스토어</a>
                            <div style="display: none;" class="nav-sub-list-hidden">
                                <ul style="opacity: 0;">
                                    <li><a href="#" title="베스트">베스트</a></li>
                                    <li><a href="#" title="관람권">관람권</a></li>
                                    <li><a href="#" title="스낵음료">스낵음료</a></li>
                                    <li><a href="#" title="포토카드">포토카드</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </header>
            <div class="quick-wrap">
                <div class="quick-menu">
                    <a href="#"><img src="/static/images/aside_bar_booking.png" alt=""></a>
                    <a href="#"><img src="/static/images/aside_bar_timetable.png" alt=""></a>
                    <a href="#"><img src="/static/images/aside_bar_discount_info.png" alt=""></a>
                    <a href="#"><img src="/static/images/aside_bar_club_membership.png" alt=""></a>
                    <a href="#"><img src="/static/images/aside_bar_customer_center.png" alt=""></a>
                    <a href="#"><img src="/static/images/aside_bar_special_theater.png" alt=""></a>
                    <a href="#" class="quick-top">TOP</a>
                </div>
            </div>
            <div class="contents">
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
                                    <button>로그인</button>
                                </div>
                                <div class="login-assist">
                                    <div class="login-check">
                                        <input type="checkbox" id="checkSavedID">
                                        <label for="checkSavedID">아이디 저장</label>
                                    </div>
                                    <div class="login-menu">
                                        <a href="#">회원가입</a>
                                        <a href="#">아이디 찾기</a>
                                        <a href="#">비밀번호 찾기</a>
                                    </div>
                                </div>
                            </div>
                            <div class="login-banner">
                                <a href="#"><img src="/static/images/login_banner.png"></a>
                            </div>
                        </div>
                        <div class="login-banner">
                            <a href="#"><img src="/static/images/login_banner.png"></a>
                        </div>
                </div>
                <div class="not-member">
                    </section>
                    <section class="select-box " id="tab-section-2">
                        <div class="not-member-login">
                            <div class="not-member-select-btn">
                                <button>비회원 로그인</button>
                                <button>비회원 예매확인</button>
                            </div>
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
                                                <select name="birthyear" id="birthyear">
                                                    <option value="">출생년도</option>
                                                    <option value="2022">2022</option>
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
                                                    <option value="1900">1900</option>
                                                </select>
                                                <select name="birthmonth" id="birthmonth">
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
                                                </select>
                                                <select name="birthday" id="birthday">
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
                            <div class="not-member-select-btn">
                                <button>비회원 로그인</button>
                                <button>비회원 예매확인</button>
                            </div>
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
                    <div class="banner-side">
                        <a href="#"><img src="/static/images/side_banner_01.png"></a>
                        <button class="btn-close"></button>
                    </div>
                    <div class="banner">
                        <div class="h-banner">
                            <a href="#"><img src="/static/images/under_main_banner_05.jpg" alt=""></a>
                        </div>
                        <div class="f-banner">
                            <a href="#"><img src="/static/images/footer_banner_01.jpg" alt=""></a>
                        </div>
                    </div>
                    <div class="footer">
                        <div class="inner">
                            <span class="f-logo">
                                <img src="/static/images/logo_footer.gif" alt="LOTTE CINEMA">
                            </span>
                            <ul class="f-menu">
                                <li><a href="">회원약관</a></li>
                                <li><a href="">개인정보처리방침</a></li>
                                <li><a href="">이메일무단수집거부</a></li>
                                <li><a href="">영상정보처리기기 운영 및 관리 방침</a></li>
                                <li><a href="">L.point회원안내</a></li>
                                <li><a href="">배정기준</a></li>
                                <li><a href="">채용안내</a></li>
                                <li><a href="">광고/임대문의</a></li>
                                <li><a href="">윤리경영</a></li>
                                <li><a href="">기업정보</a></li>
                            </ul>
                            <div class="bx-address">
                                <div>
                                    <span>서울특별시 송파구 올림픽로 300 롯데월드타워 27층</span>
                                    <span class="bar">고객센터1544-8855</span><br>
                                </div>
                                <div>
                                    <span>대표이사 최병환</span>
                                    <span class="bar">사업자등록번호 313-87-00979</span>
                                    <span class="bar">통신판매업신고번호 제1184호</span>
                                    <span class="bar">개인정보 보호 최고 책임자 김무성</span>
                                </div>
                            </div>
                            <p class="copyright">COPYRIGHT© LOTTE CINEMA ALL RIGHT RESERVED.</p>
                        </div>
                        <div class="award">
                            <ul>
                                <li><img src="/static/images/footer_award_NCSI6.png" alt="NCSI / NCSI 영화관부문 6년 연속 1위">
                                </li>
                                <li><img src="/static/images/footer_award_kcsi.png" alt="KCSI 영화관부문 7년 연속 1위(총12회)">
                                </li>
                                <li><img src="/static/images/footer_award_kssqi-1.png"
                                        alt="KS-SQI 영화관부문 9년 연속 1위(총12회)">
                                </li>
                                <li><img src="/static/images/footer_award_brandcinema.png"
                                        alt="올해의 브랜드대상 영화관 부문 10년 연속 1위">
                                </li>
                                <li><img src="/static/images/footer_award_greenstar.png" alt="그린스타 영화관 부문 4년 연속 1위">
                                </li>
                                <li><img src="/static/images/footer_award_brandstar.png" alt="대한민국 브랜드 스타 영화관 부문 1위">
                                </li>
                                <li><img src="/static/images/footer_award_familyship.png" alt="가족친화 인증기업 선정"></li>
                                <li><img src="/static/images/footer_award_winner.png" alt="소셜미디어 브랜드분야 WINNER 수상"></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <script src="/static/js/Member/login.js"></script>
    </body>

    </html>