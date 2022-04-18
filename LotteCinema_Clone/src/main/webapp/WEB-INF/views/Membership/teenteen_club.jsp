<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <title>멤버십_틴틴클럽 - 롯데시네마</title>
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/header.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/aside_bar.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/banner_section.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/footer.css">
    <link rel="stylesheet" href="/static/css/Membership/teenteen_club.css">
</head>

<body>
    <div class="container">
       	<jsp:include page="/WEB-INF/views/header.jsp" flush="false"/>
        <aside class="aside-wrapper" style="top: 195px;">
            <div class="aside-menu">
                <a href="#">
                    <img src="/static/images/aside_bar_booking.png" alt="예매하기">
                </a>
                <a href="#">
                    <img src="/static/images/aside_bar_timetable.png" alt="예매하기">
                </a>
                <a href="#">
                    <img src="/static/images/aside_bar_discount_info.png" alt="예매하기">
                </a>
                <a href="#">
                    <img src="/static/images/aside_bar_club_membership.png" alt="예매하기">
                </a>
                <a href="#">
                    <img src="/static/images/aside_bar_customer_center.png" alt="예매하기">
                </a>
                <a href="#">
                    <img src="/static/images/aside_bar_special_theater.png" alt="예매하기">
                </a>
                <a href="#" class="to-top">
                    <span>TOP</span>
                </a>
            </div>
        </aside>
        <main>
            <div id="contents">
                <div class="top-information">
                    <div class="nouser-form">
                        <div class="signup-message">
                            <span>회원가입 하시고</span>
                            <span>틴틴클럽의 풍성한 혜택을 만나보세요.</span>
                        </div>
                        <a href="#">회원가입</a>
                        <div class="to-signin">
                            <span>이미 L.POINT 회원이신가요?</span>
                            <a href="#">로그인</a>
                        </div>
                    </div>
                </div>
                <div class="mate-club-banner">
                    <img src="/static/images/membership_teen_club_banner.jpg" alt="">
                </div>
                <div class="mate-club-information">
                    <img src="/static/images/membership_pink-quote.png" alt="">
                    <p class="information-title">
                        신규혜택! 굿노트 다이어리를 소개합니다!
                    </p>
                    <p><span>- 하단 [틴틴굿즈 다운로드] 버튼 클릭하면 다이어리 파일이 다운로드 됩니다.</span></p>
                    <p>
                        <span>- 굿노트 속지 적용 방법</span>
                        <span>[굿노트 APP 우상단 설정] → [노트북템플릿] → [불러오기] → [파일 앱에서] → [파일선택]</span>
                    </p>
                    <p>
                        <span>- 해당파일은 이용하시는 기기 환경에 따라 여백이 생길 수 있습니다.</span>
                    </p>
                    <p>
                        <a href="#">틴틴굿즈 다운로드</a>
                    </p>
                </div>
                <div class="mate-club-information">
                    <img src="/static/images/membership_pink-quote.png" alt="">
                    <p class="information-title">
                        영화로 감성 포텐 폭발! 틴틴 클럽
                    </p>
                    <p>
                        <span>청소년 (2004년생~2008년생) 전용 클럽 멤버십 서비스로</span>
                        <span>연중 영화 할인,매점 할인, 회원 전용 이벤트로 응모 혜택이 주어집니다.</span>
                    </p>
                    <p>
                        <span class="gray">(만 13세인 중학교 1학년의 경우 온라인 회원 가입 제한으로 인해 제외됨을 알려
                            드립니다.)</span>
                    </p>
                </div>
                <div class="join-descripitions">
                    <div class="description-title">가입방법</div>
                    <div class="description-texts">
                        <div class="steps">
                            <div class="step">
                                <span class="step-title">STEP01</span>
                                <span class="step-text">롯데시네마 회원가입</span>
                            </div>
                            <div class="step">
                                <span class="step-title">STEP02</span>
                                <span class="step-text">롯데시네마 ID로 L.POINT 앱 로그인</span>
                            </div>
                            <div class="step">
                                <span class="step-title">STEP03</span>
                                <span class="step-text">틴틴클럽 카드 신청하면 끝!</span>
                            </div>
                        </div>
                        <div class="join-flow">
                            <div class="flow-title">틴틴클럽 가입 방법</div>
                            <span class="flow-text">1. L.POINT 앱 실행 &gt; 메뉴 &gt; 카드 &gt;
                                틴틴클럽 카드 선택 &gt; 카드발급</span>
                            <span class="flow-text">2. 롯데시네마 앱 실행 &gt; 로그인 &gt; 틴틴클럽 가입
                                완료</span>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <div class="side-banner-wrapper" style="top: 441px;">
            <img src="" alt="">
            <span class="side-banner-closer"></span>
        </div>
       <jsp:include page="/WEB-INF/views/banner_section.jsp" flush="false"/>
       <jsp:include page="/WEB-INF/views/footer.jsp" flush="false"/>
    </div>

    <script src="/static/js/CinemaMall/scroll_control.js"></script>
    <script src="/static/js/CinemaMall/nav_control.js"></script>
    <script src="/static/js/CinemaMall/footer_banner_control.js"></script>
    <script src="/static/js/Membership/mate_club.js"></script>
</body>

</html>