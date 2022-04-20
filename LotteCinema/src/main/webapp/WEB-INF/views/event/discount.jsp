<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이벤트 - 롯데시네마</title>
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/store/header.css">
    <link rel="stylesheet" href="/static/css/store/aside_bar.css">
    <link rel="stylesheet" href="/static/css/store/banner_section.css">
    <link rel="stylesheet" href="/static/css/store/footer.css">
    <link rel="stylesheet" href="/static/css/event/movie.css">
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

        <!-- side_banner -->
        <jsp:include page="/WEB-INF/templetes/side_banner.jsp" />
        
        <!-- banner_section -->
        <jsp:include page="/WEB-INF/templetes/banner_section.jsp" />
        
        <!-- footer -->
        <jsp:include page="/WEB-INF/templetes/footer.jsp" />
        
    </div>

    <script src="/static/js/store/scroll_control.js"></script>
    <script src="/static/js/store/nav_control.js"></script>
    <script src="/static/js/store/footer_banner_control.js"></script>
    <script src="/static/js/event/movie.js"></script>
</body>

</html>