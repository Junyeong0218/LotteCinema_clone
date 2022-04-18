<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <title>LotteCinema</title>
        <link rel="stylesheet" href="/static/css/index.css">
        <link rel="stylesheet" href="/static/css/container.css">
        <link rel="stylesheet" href="/static/css/header.css">
    </head>

    <body>
        <jsp:include page="/WEB-INF/views/indexHeader.jsp" flush="false" />
        <div id="sub-section">
            <div class="all-menu-bg">
                <div class="all-menu">
                    <div class="all-menu-wrap">
                        <div class="all-menu-box">
                            <table>
                                <tr>
                                    <th scope="col" id="gmenu1">
                                        <span>예매</span>
                                    </th>
                                    <th scope="col" id="gmenu1">
                                        <span>영화</span>
                                    </th>
                                    <th scope="col" id="gmenu1">
                                        <span>영화관</span>
                                    </th>
                                    <th scope="col" id="gmenu1">
                                        <span>스페셜관</span>
                                    </th>
                                    <th scope="col" id="gmenu1">
                                        <span>스토어</span>
                                    </th>
                                    <th scope="col" id="gmenu1">
                                        <span>멤버쉽</span>
                                    </th>
                                </tr>
                                <tr>
                                    <td headers="gmenu1">
                                        <ul>
                                            <li><a href="#">예매하기</a></li>
                                            <li><a href="#">상영시간표</a></li>
                                            <li><a href="#">할인안내</a></li>
                                        </ul>
                                    </td>
                                    <td headers="gmenu2">
                                        <ul>
                                            <li><a href="#">홈</a></li>
                                            <li><a href="#">현재상영작</a></li>
                                            <li><a href="#">상영예정작</a></li>
                                            <li><a href="#">아르떼</a></li>
                                            <li><a href="#">국립극장</a></li>
                                        </ul>
                                    </td>
                                    <td headers="gmenu3">
                                        <ul>
                                            <li><a href="#">스페셜관</a></li>
                                            <li><a href="#">서울</a></li>
                                            <li><a href="#">경기/인천</a></li>
                                            <li><a href="#">충청/대전</a></li>
                                            <li><a href="#">전라/광주</a></li>
                                            <li><a href="#">경북/대구</a></li>
                                            <li><a href="#">경남/부산/울산</a></li>
                                            <li><a href="#">강원</a></li>
                                            <li><a href="#">제주</a></li>
                                        </ul>
                                    </td>
                                    <td headers="gmenu4">
                                        <ul>
                                            <li><a href="#">홈</a></li>
                                            <li><a href="#">샤롯데</a></li>
                                            <li><a href="#">수퍼플렉스 G</a></li>
                                            <li><a href="#">수퍼 S</a></li>
                                            <li><a href="#">수퍼플렉스</a></li>
                                            <li><a href="#">수퍼 4D</a></li>
                                            <li><a href="#">컬러리움</a></li>
                                            <li><a href="#">씨네살롱</a></li>
                                            <li><a href="#">씨네패밀리</a></li>
                                            <li><a href="#">씨네커플</a></li>
                                            <li><a href="#">씨네비즈</a></li>
                                            <li><a href="#">씨네컴포트(리클라이너)</a></li>
                                        </ul>
                                    </td>
                                    <td headers="gmenu5">
                                        <ul>
                                            <li><a href="#">베스트</a></li>
                                            <li><a href="#">포토카드</a></li>
                                            <li><a href="#">관람권</a></li>
                                            <li><a href="#">스낵음료</a></li>
                                        </ul>
                                    </td>
                                    <td headers="gmenu6">
                                        <ul>
                                            <li><a href="/membership/vipzone">VIP/Friend</a></li>
                                            <li><a href="/membership/mateclub">짝꿍클럽</a></li>
                                            <li><a href="/membership/teenteenclub">틴틴클럽</a></li>
                                            <li><a href="/membership/bravoclub">브라보클럽</a></li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="col" id="gmenu7">
                                        <span>마이</span>
                                    </th>
                                    <th scope="col" id="gmenu8">
                                        <span>고객센터</span>
                                    </th>
                                    <th scope="col" id="gmenu9">
                                        <span>회원 서비스</span>
                                    </th>
                                    <th scope="col" id="gmenu10">
                                        <span>이벤트</span>
                                    </th>
                                    <th scope="col" id="gmenu11">
                                        <span>할인안내</span>
                                    </th>
                                    <th scope="col" id="gmenu12">
                                        <span>회사소개</span>
                                    </th>
                                </tr>
                                <tr>
                                    <td headers="gmenu7">
                                        <ul>
                                            <li><a href="#">결제내역</a></li>
                                            <li><a href="#">쿠폰함</a></li>
                                            <li><a href="#">MY 이벤트</a></li>
                                            <li><a href="#">MY 클럽</a></li>
                                            <li><a href="#">MY 무비로그</a></li>
                                            <li><a href="#">MY 정보관리</a></li>
                                        </ul>
                                    </td>
                                    <td headers="gmenu8">
                                        <ul>
                                            <li><a href="#">FAQ</a></li>
                                            <li><a href="#">공지사항</a></li>
                                            <li><a href="#">1:1 문의</a></li>
                                            <li><a href="#">단체관람/대관문의</a></li>
                                            <li><a href="#">분실물문의</a></li>
                                        </ul>
                                    </td>
                                    <td headers="gmenu9">
                                        <ul>
                                            <li><a href="#">로그인</a></li>
                                            <li><a href="#">회원가입</a></li>
                                            <li><a href="#">아이디/비밀번호찾기</a></li>
                                            <li><a href="#">회원약관</a></li>
                                            <li><a href="#">개인정보처리방침</a></li>
                                            <li><a href="#">이메일무단수집거부</a></li>
                                            <li><a href="#">영상정보처리기기 운영 및 관리방침</a></li>
                                            <li><a href="#">L.POINT회원안내</a></li>
                                        </ul>
                                    </td>
                                    <td headers="gmenu10">
                                        <ul>
                                            <li><a href="/event">영화</a></li>
                                            <li><a href="/event/premiere">시사회/무대인사</a></li>
                                            <li><a href="/event/hot">HOT</a></li>
                                            <li><a href="/event/discount">제휴할인</a></li>
                                            <li><a href="/event/nearCinema">우리동네영화관</a></li>
                                        </ul>
                                    </td>
                                    <td headers="gmenu11">
                                        <ul>
                                            <li><a href="#">신용카드</a></li>
                                            <li><a href="#">포인트</a></li>
                                            <li><a href="#">통신사</a></li>
                                            <li><a href="#">기타결제수단</a></li>
                                        </ul>
                                    </td>
                                    <td headers="gmenu12">
                                        <ul>
                                            <li><a href="#">채용안내</a></li>
                                            <li><a href="#">광고/임대문의</a></li>
                                            <li><a href="#">윤리경영</a></li>
                                            <li><a href="#">기업정보</a></li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                            <div class="all-menu-login-box">
                                <div class="signin-and-signup-box">
                                    <button class="signin-btn">로그인</button>
                                    <div class="signup-box">
                                        <p>로그인 하시고<br>다양한 혜택을 확인하세요.</p>
                                        <a href="join">회원가입</a>
                                    </div>
                                    <div class="signup-in-banner">
                                        <a href="#"><img src="/static/images/Samsungfire_297125.png" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="all-menu-banner">
                            <a href="#"><img src="/static/images/Air_980180.jpg" alt=""></a>
                        </div>
                        <div class="all-menu-close">
                            <button class="all-menu-close-btn" type="button"></button>
                        </div>
                    </div>
                </div>

            </div>


            <div class="slide-btn">
                <button type="button" class="left-btn"></button>
                <button type="button" class="right-btn"></button>
            </div>
            <div class="dot-btns">
            </div>
            <div class="visual-ad">
                <ul class="slide-img">
                    <li>
                        <div><img src="/static/images/Air_1920774.jpg" alt=""></div>
                    </li>
                    <li>
                        <div><img src="/static/images/Ani_1920774.jpg" alt=""></div>
                    </li>
                    <li>
                        <div><img src="/static/images/Super_1920774.jpg" alt=""></div>
                    </li>
                    <li>
                        <div><img src="/static/images/Ruy_1920774.jpg" alt=""></div>
                    </li>
                    <li>
                        <div><img src="/static/images/Lost_1920774.jpg" alt=""></div>
                    </li>
                </ul>

            </div>
            <div id="main-banners">
                <div class="banner-wrapper">
                    <ul class="banner-list">
                        <span class="date">04.09 15:30기준</span>
                        <li class="poster-img-box">
                            <img src="/static/images/main_small_banner_01.jpg" alt="">
                            <span>1</span>
                            <div class="banner-desc">
                                <span class="banner-title">수퍼 소닉2</span>
                                <div class="scores">
                                    <span>예매율 37.9%</span>
                                    <span class="star">8.3</span>
                                    <button></button>
                                </div>
                            </div>
                        </li>

                        <li class="poster-img-box">
                            <img src="/static/images/main_small_banner_02.jpg" alt="">
                            <span>2</span>
                            <div class="banner-desc">
                                <span class="banner-title">신비한 동물들과 덤블도어의 비밀</span>
                                <div class="scores">
                                    <span>예매율 16.6%</span>
                                    <span class="d-day">D-4</span>
                                    <button></button>
                                </div>
                            </div>
                        </li>
                        <li class="poster-img-box">
                            <img src="/static/images/main_small_banner_03.jpg" alt="">
                            <span>3</span>
                            <div class="banner-desc">
                                <span class="banner-title">앰뷸런스</span>
                                <div class="scores">
                                    <span>예매율 8.6%</span>
                                    <span class="star">8.1</span>
                                    <button></button>
                                </div>
                            </div>
                        </li>
                        <li class="poster-img-box">
                            <img src="/static/images/main_small_banner_04.jpg" alt="">
                            <span>4</span>
                            <div class="banner-desc">
                                <span class="banner-title">모비우스</span>
                                <div class="scores">
                                    <span>예매율 8.6%</span>
                                    <span class="star">7.9</span>
                                    <button></button>
                                </div>
                            </div>
                        </li>
                        <li class="poster-img-box">
                            <img src="/static/images/main_small_banner_05.jpg" alt="">
                            <span>5</span>
                            <div class="banner-desc">
                                <span class="banner-title">앵커</span>
                                <div class="scores">
                                    <span>예매율 5.3%</span>
                                    <span class="d-day">D-11</span>
                                    <button></button>
                                </div>
                            </div>
                    </ul>
                </div>
            </div>
            <div id="content">
                <div id="main-special-cinema">
                    <div class="sec-title">
                        <span>스페셜관</span>
                        <a href="">더보기 ></a>
                    </div>
                    <ul class="ad-list-wrap">
                        <li><img src="/static/images/ad_img01.png" alt=""></li>
                        <li><img src="/static/images/ad_img02.png" alt=""></li>
                        <li><img src="/static/images/ad_img03.png" alt=""></li>
                        <li><img src="/static/images/ad_img04.png" alt=""></li>
                        <li><img src="/static/images/ad_img05.png" alt=""></li>
                        <li><img src="/static/images/ad_img06.png" alt=""></li>
                        <li><img src="/static/images/ad_img07.png" alt=""></li>
                        <li><img src="/static/images/ad_img08.png" alt=""></li>
                    </ul>

                </div>
                <div id="main-event-list">
                    <div class="event">
                        <span>이벤트</span>
                        <a href="">더보기 ></a>
                    </div>
                    <div class="event-wrap">
                        <div class="event-section">
                            <div class="event-list-box">
                                <a href=""><img src="/static/images/event_img_list01.jpg" alt=""></a>
                                <a href=""><img src="/static/images/event_img_list02.jpg" alt=""></a>
                                <a href=""><img src="/static/images/event_img_list03.jpg" alt=""></a>
                            </div>
                            <div class="event-list-box2">
                                <a href=""><img src="/static/images/event_img_list04.jpg" alt=""></a>
                                <a href=""><img src="/static/images/event_img_list05.jpg" alt=""></a>
                            </div>
                        </div>
                        <div>
                            <a href=""><img src="/static/images/event_img_list06.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="main-cont-premiere">
                    <div class="premiere-title">
                        <span>시사회/무대인사</span>
                        <a href="">더보기 ></a>
                    </div>
                    <div class="premiere-img-wrap">
                        <a href=""><img src="/static/images/premiere_img01.jpg" alt=""></a>
                        <a href=""><img src="/static/images/premiere_img02.jpg" alt=""></a>
                        <a href=""><img src="/static/images/premiere_img03.jpg" alt=""></a>
                    </div>
                </div>
                <div class="mid-menu-wrap">
                    <div class="mid-items-wrap">
                        <a href=""><img src="/static/images/mid_item_img01.png" alt=""></a>
                        <a href=""><img src="/static/images/mid_item_img02.png" alt=""></a>
                        <a href=""><img src="/static/images/mid_item_img03.png" alt=""></a>
                        <a href=""><img src="/static/images/mid_item_img04.png" alt=""></a>
                        <a href=""><img src="/static/images/mid_item_img05.png" alt=""></a>
                    </div>
                </div>
                <div class="main-cont-notice">
                    <div class="notice">
                        <span>공지사항</span>
                        <a href="">더보기 ></a>
                    </div>
                    <ul class="rolling-menu-wrap">
                        <li><a href="">2D 일반 관람권 활용 스페셜관 이용 안내</a></li>
                    </ul>
                </div>
            </div>

        </div>
        <div id="banner-section">
            <div class="banner-01">
                <a href=""><img src="" alt=""></a>
            </div>
            <div class="banner-02">
                <a href=""><img src="" alt=""></a>
            </div>
        </div>
        <div id="footer-section">
            <div class="inner">
                <div class="footer-logo">
                    <img src="/static/images/logo_footer.gif" alt="">
                </div>
                <ul class="footer-navi">
                    <li><a href="">회원약관</a></li>
                    <li><strong><a href="">개인정보처리방침</a></strong></li>
                    <li><a href="">이메일무단수집거부</a></li>
                    <li><a href="">영상정보처리기기 운영 및 관리방침</a></li>
                    <li><a href="">L.POINT회원안내</a></li>
                    <li><a href="">배정기준</a></li>
                    <li><a href="">채용안내</a></li>
                    <li><a href="">광고/임대문의</a></li>
                    <li><a href="">윤리경영</a></li>
                    <li><a href="">기업정보</a></li>
                </ul>
                <div class="address-box">
                    <span>서울특별시 송파구 올림픽로 300 롯데월드타워 27층</span>
                    <span>고객센터 1544-8855</span><br>
                    <span>대표이사 최병환</span>
                    <span>사업자등록번호 313-87-00979</span>
                    <span>통신판매업신고번호 제1184호</span>
                    <span>개인정보 보호 최고 책임자 김무성</span>
                </div>
                <span>COPYRIGHT© LOTTE CINEMA ALL RIGHT RESERVED.</span>
            </div>
            <div class="article-award">
                <img src="/static/images/footer_award_NCSI6.png" alt="">
                <img src="/static/images/footer_award_kcsi.png" alt="">
                <img src="/static/images/footer_award_kssqi-1.png" alt="">
                <img src="/static/images/footer_award_brandcinema.png" alt="">
                <img src="/static/images/footer_award_greenstar.png" alt="">
                <img src="/static/images/footer_award_brandstar.png" alt="">
                <img src="/static/images/footer_award_familyship.png" alt="">
                <img src="/static/images/footer_award_winner.png" alt="">
            </div>
        </div>
        <script src="/static/js/header.js"></script>
        <script src="/static/js/index.js"></script>
    </body>

    </html>