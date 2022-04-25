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
    <link rel="stylesheet" href="/static/css/event/movie.css">
</head>

<body>
    <div class="container">
        
		<!-- top_banner -->
        <jsp:include page="/WEB-INF/templates/top_banner.jsp" />
        
        <!-- header -->
        <jsp:include page="/WEB-INF/templates/header.jsp" />
        
        <!-- aside_bar -->
        <jsp:include page="/WEB-INF/templates/aside_bar.jsp" />

        <main>
            <div id="contents">
                <div class="title-wrapper">
                    <span class="contents-title">영화</span>
                    <div class="searcher">
                        <input type="text" name="keyword" placeholder="검색어를 입력하세요." title="검색어를 입력하세요.">
                        <button type="button">검색</button>
                    </div>
                </div>
                <div class="content-wrapper">
                    <a href="#" class="content">
                        <img src="/static/images/event_movie01.jpg" alt="">
                        <span class="content-date">2022.04.13 ~ 2022.05.20</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_movie02.jpg" alt="">
                        <span class="content-date">2022.04.07 ~ 2022.04.10</span>
                        <span class="d-day">D-1</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_movie03.jpg" alt="">
                        <span class="content-date">2022.04.07 ~ 2022.04.14</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_movie04.jpg" alt="">
                        <span class="content-date">2022.04.07 ~ 2022.04.14</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_movie05.jpg" alt="">
                        <span class="content-date">2022.04.07 ~ 2022.04.14</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_movie06.jpg" alt="">
                        <span class="content-date">2022.04.07 ~ 2022.04.14</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_movie07.jpg" alt="">
                        <span class="content-date">2022.04.07 ~ 2022.04.14</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_movie08.jpg" alt="">
                        <span class="content-date">2022.04.07 ~ 2022.04.14</span>
                    </a>
                    <a href="#" class="content">
                        <img src="/static/images/event_movie09.jpg" alt="">
                        <span class="content-date">2022.04.07 ~ 2022.04.14</span>
                    </a>
                </div>
                <button type="button" class="load-more-movies">
                    <span>더보기</span>
                    <img src="/static/images/small_down_arrow.png" alt="">
                </button>
            </div>
        </main>

        <!-- side_banner -->
        <jsp:include page="/WEB-INF/templates/side_banner.jsp" />
        
        <!-- banner_section -->
        <jsp:include page="/WEB-INF/templates/banner_section.jsp" />
        
        <!-- footer -->
        <jsp:include page="/WEB-INF/templates/footer.jsp" />
        
    </div>

    <script src="/static/js/scroll_control.js"></script>
    <script src="/static/js/nav_control.js"></script>
    <script src="/static/js/footer_banner_control.js"></script>
    <script src="/static/js/event/movie.js"></script>
</body>

</html>