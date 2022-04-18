<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <title>멤버십_짝꿍클럽 - 롯데시네마</title>
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/header.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/aside_bar.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/banner_section.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/footer.css">
    <link rel="stylesheet" href="/static/css/Membership/mate_club.css">
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
                            <span>VIP의 풍성한 혜택을 만나보세요.</span>
                        </div>
                        <a href="#">회원가입</a>
                        <div class="to-signin">
                            <span>이미 L.POINT 회원이신가요?</span>
                            <a href="#">로그인</a>
                        </div>
                    </div>
                </div>
                <div class="mate-club-banner">
                    <img src="/static/images/membership_mate_club_banner.jpg" alt="">
                </div>
                <div class="mate-club-information">
                    <img src="/static/images/membership_pink-quote.png" alt="">
                    <p class="information-title">
                        너와나의 무비시그널, 짝꿍클럽
                    </p>
                    <p>
                        <span>커플, 단짝 모두 이용 가능한 롯데시네마의 2인 전용 클럽 멤버십 서비스로</span>
                        <span>씨네커플 상시 할인, 기념일 쿠폰, 등급별 영화/매점 쿠폰과 짝꿍클럽 전용 이벤트 응모 혜택이 주어집니다.</span>
                    </p>
                    <p>
                        <span>(롯데시네마 모바일 앱을 통해서만 가입 가능하며,</span>
                        <span>만 13세인 중학교 1학년의 경우 온라인 회원 가입 제한으로 인해 제외됨을 알려 드립니다.)</span>
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
                                <span class="step-text">짝꿍정보 수집 동의 체크</span>
                            </div>
                            <div class="step">
                                <span class="step-title">STEP03</span>
                                <span class="step-text">모바일 메신저로 짝꿍 신청</span>
                            </div>
                            <div class="step">
                                <span class="step-title">STEP04</span>
                                <span class="step-text">상대방 짝꿍 동의</span>
                            </div>
                        </div>
                        <div class="join-flow">
                            <div class="flow-title">짝꿍클럽 가입 방법</div>
                            <span class="flow-text">1. 롯데시네마 모바일 앱 실행 &gt; 로그인 &gt; 마이 &gt;
                                MY 클럽 선택</span>
                            <span class="flow-text">2. 짝꿍정보 수집 동의 > 모바일 메신저(카카오톡)로 짝꿍 신청
                                &gt; 상대방 짝꿍 동의 > 짝꿍클럽 가입 완료</span>
                            <span class="flow-text">※ 롯데시네마 모바일 APP을 통해서만 가입 가능(롯데시네마 영화관 현장
                                및 모바일 Web, PC Web 가입 불가)</span>
                            <span class="flow-text">※ 모바일 메신저(카카오톡) 별도 설치 필요</span>
                            <span class="flow-text">※ 하단 QR코드 인식 후 가입 가능</span>
                        </div>
                        <div class="qr-code-wrapper">
                            <img src="/static/images/membership_mate_club_qrcode.png" alt="">
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