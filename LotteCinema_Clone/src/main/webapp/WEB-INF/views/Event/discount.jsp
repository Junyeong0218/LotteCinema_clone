<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <title>이벤트 - 롯데시네마</title>
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/header.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/aside_bar.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/banner_section.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/footer.css">
    <link rel="stylesheet" href="/static/css/Event/movie.css">
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
                <div class="title-wrapper">
                    <span class="contents-title">제휴할인</span>
                    <div class="searcher">
                        <input type="text" name="keyword" placeholder="검색어를 입력하세요." title="검색어를 입력하세요.">
                        <button type="button">검색</button>
                    </div>
                </div>
                <div class="content-wrapper">
                    <a href="#" class="content">
                        <img src="/static/images/event_discount01.jpg" alt="">
                        <span class="content-date">2022.01.28 ~ 2022.07.31</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_discount02.jpg" alt="">
                        <span class="content-date">2021.02.01 ~ 2023.01.31</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_discount03.jpg" alt="">
                        <span class="content-date">2021.02.01 ~ 2024.01.31</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_discount04.jpg" alt="">
                        <span class="content-date">2019.12.27 ~ 2023.12.31</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_discount05.jpg" alt="">
                        <span class="content-date">2019.12.27 ~ 2023.12.31</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_discount06.jpg" alt="">
                        <span class="content-date">2019.12.27 ~ 2023.12.31</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_discount07.jpg" alt="">
                        <span class="content-date">2019.07.01 ~ 2023.06.30</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_discount08.jpg" alt="">
                        <span class="content-date">2019.03.19 ~ 2023.06.30</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_discount09.jpg" alt="">
                        <span class="content-date">2018.09.03 ~ 2023.08.31</span>
                    </a>
                </div>
                <button type="button" class="load-more-movies">
                    <span>더보기</span>
                    <img src="/static/images/small_down_arrow.png" alt="">
                </button>
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
    <script src="/static/js/Event/movie.js"></script>
</body>

</html>