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
    <jsp:include page="/WEB-INF/views/Event/header.jsp" />
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
                    <span class="contents-title">HOT</span>
                    <div class="searcher">
                        <input type="text" name="keyword" placeholder="검색어를 입력하세요." title="검색어를 입력하세요.">
                        <button type="button">검색</button>
                    </div>
                </div>
                <div class="content-wrapper">
                    <a href="#" class="content">
                        <img src="/static/images/event_hot01.jpg" alt="">
                        <span class="content-date">2022.04.04 ~ 2022.05.31</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_hot02.jpg" alt="">
                        <span class="content-date">2022.04.01 ~ 2022.04.30</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_hot03.jpg" alt="">
                        <span class="content-date">2022.03.31 ~ 2022.04.12</span>
                        <span class="d-day">D-2</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_hot04.jpg" alt="">
                        <span class="content-date">2022.02.18 ~ 2022.06.30</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_hot05.jpg" alt="">
                        <span class="content-date">2021.12.31 ~ 2022.12.31</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_hot06.jpg" alt="">
                        <span class="content-date">2021.12.31 ~ 2022.12.31</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_hot07.jpg" alt="">
                        <span class="content-date">2021.12.31 ~ 2022.12.31</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_hot08.jpg" alt="">
                        <span class="content-date">2021.12.22 ~ 2022.04.30</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_hot09.jpg" alt="">
                        <span class="content-date">2021.11.10 ~ 2022.05.31</span>
                    </a>
                </div>
                <button type="button" class="load-more-movies">
                    <span>더보기</span>
                    <img src="/static/images/small_down_arrow.png" alt="">
                </button>
            </div>
        </main>

    <jsp:include page="/WEB-INF/views/Event/banner.jsp" />
    <jsp:include page="/WEB-INF/views/Event/footer.jsp" />
    </div>

    <script src="/static/js/CinemaMall/scroll_control.js"></script>
    <script src="/static/js/CinemaMall/nav_control.js"></script>
    <script src="/static/js/CinemaMall/footer_banner_control.js"></script>
    <script src="/static/js/Event/movie.js"></script>
</body>

</html>