<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            <jsp:include page="/WEB-INF/views/header.jsp" flush="false" />
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
                        <span class="contents-title">시사회/무대인사</span>
                        <div class="searcher">
                            <input type="text" name="keyword" placeholder="검색어를 입력하세요." title="검색어를 입력하세요.">
                            <button type="button">검색</button>
                        </div>
                    </div>
                    <div class="content-wrapper">
                        <a href="#" class="content">
                            <img src="/static/images/event_premiere01.jpg" alt="">
                            <span class="content-date">2022.04.08 ~ 2022.04.14</span>
                        </a>
                        <a href="#" class="content">
                            <img src="/static/images/event_premiere02.jpg" alt="">
                            <span class="content-date">2022.04.08 ~ 2022.04.14</span>
                        </a>
                        <a href="#" class="content">
                            <img src="/static/images/event_premiere03.jpg" alt="">
                            <span class="content-date">2022.04.23 ~ 2022.04.24</span>
                        </a>
                        <a href="#" class="content">
                            <img src="/static/images/event_premiere04.jpg" alt="">
                            <span class="content-date">2022.04.15 ~ 2022.04.15</span>
                        </a>
                        <a href="#" class="content">
                            <img src="/static/images/event_premiere05.jpg" alt="">
                            <span class="content-date">2022.04.09 ~ 2022.04.10</span>
                            <span class="d-day finish">오늘종료</span>
                        </a>
                        <a href="#" class="content">
                            <img src="/static/images/event_premiere06.jpg" alt="">
                            <span class="content-date">2022.04.06 ~ 2022.04.10</span>
                            <span class="d-day finish">오늘종료</span>
                        </a>
                        <a href="#" class="content">
                            <img src="/static/images/event_premiere07.jpg" alt="">
                            <span class="content-date">2022.04.06 ~ 2022.04.19</span>
                        </a>
                    </div>
                    <!-- <button type="button" class="load-more-movies">
                                        <span>더보기</span>
                                        <img src="/static/images/small_down_arrow.png" alt="">
                                </button> -->
                </div>
            </main>

            <div class="side-banner-wrapper" style="top: 441px;">
                <img src="" alt="">
                <span class="side-banner-closer"></span>
            </div>
            <jsp:include page="/WEB-INF/views/banner_section.jsp" flush="false" />
            <jsp:include page="/WEB-INF/views/footer.jsp" flush="false" />
        </div>

        <script src="/static/js/CinemaMall/scroll_control.js"></script>
        <script src="/static/js/CinemaMall/nav_control.js"></script>
        <script src="/static/js/CinemaMall/footer_banner_control.js"></script>
        <script src="/static/js/Event/movie.js"></script>
    </body>

    </html>