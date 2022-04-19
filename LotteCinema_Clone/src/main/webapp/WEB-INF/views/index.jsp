<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LotteCinema</title>
    <link rel="stylesheet" href="/static/css/index.css">
    <link rel="stylesheet" href="/static/css/container.css">
</head>

<body>
    <div class="top-banner">
        <div class="banner-img-wrap">
            <button type="button" class="banner-close"></button>
        </div>
    </div>
    
    <!-- header 자리 -->
    <jsp:include page="/WEB-INF/views/header.jsp" />
    
    <div id="sub-section">
        <div class="slide-btn">
            <button type="button" class="left-btn"></button>
            <button type="button" class="right-btn"></button>
        </div>
        <div class="dot-btns">
        </div>
        <div class="visual-ad">
            <ul class="slide-img">
                <li><div><img src="/static/images/Air_1920774.jpg" alt=""></div></li>
                <li><div><img src="/static/images/Ani_1920774.jpg" alt=""></div></li>
                <li><div><img src="/static/images/Super_1920774.jpg" alt=""></div></li>
                <li><div><img src="/static/images/Ruy_1920774.jpg" alt=""></div></li>
                <li><div><img src="/static/images/Lost_1920774.jpg" alt=""></div></li>
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
    
    <jsp:include page="/WEB-INF/views/banner_section.jsp" />
    
    <jsp:include page="/WEB-INF/views/footer.jsp" />
    
    <script src="/static/js/index.js"></script>
</body>

</html>