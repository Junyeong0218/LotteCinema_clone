<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <title>이벤트 당첨자 - 롯데시네마</title>
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/header.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/aside_bar.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/banner_section.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/footer.css">
    <link rel="stylesheet" href="/static/css/Event/movie.css">
    <link rel="stylesheet" href="/static/css/Event/winnerList.css">
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
                    <span class="contents-title">당첨자발표</span>
                    <div class="searcher">
                        <select name="category">
                            <option value="0" selected>전체</option>
                            <option value="1">영화</option>
                            <option value="2">시사회/무대인사</option>
                            <option value="3">HOT</option>
                            <option value="4">제휴할인</option>
                            <option value="5">우리동네영화관</option>
                        </select>
                        <input type="text" name="keyword" placeholder="검색어를 입력하세요." title="검색어를 입력하세요.">
                        <button type="button">검색</button>
                    </div>
                </div>
                <table class="list-table">
                    <colgroup>
                        <col style="width: 15%;">
                        <col style="width: auto;">
                        <col style="width: 15%;">
                    </colgroup>
                    <tr>
                        <th>구분</th>
                        <th>제목</th>
                        <th>당첨자 발표일</th>
                    </tr>
                    <tr>
                        <td>HOT</td>
                        <td class="border-title">
                            <a href="#">
                                <span>축하합니다! 우리 영화 언제 봄: 에이드 맛있나 봄
                                    당첨자 발표</span>
                            </a>
                            <span class="new-border">NEW</span>
                        </td>
                        <td>2022.04.09</td>
                    </tr>
                    <tr>
                        <td>시사회/무대인사</td>
                        <td class="border-title">
                            <a href="#">
                                <span>&lt;공기살인&gt; 회원시사회 당첨자 발표</span>
                            </a>
                            <span class="new-border">NEW</span>
                        </td>
                        <td>2022.04.08</td>
                    </tr>
                    <tr>
                        <td>시사회/무대인사</td>
                        <td class="border-title">
                            <a href="#">
                                <span>&lt;앵커&gt; 회원시사회 당첨자 발표</span>
                            </a>
                            <span class="new-border">NEW</span>
                        </td>
                        <td>2022.04.08</td>
                    </tr>
                    <tr>
                        <td>시사회/무대인사</td>
                        <td class="border-title">
                            <a href="#">
                                <span>&lt;고스팅 글로리아&gt; 회원시사회 당첨자 발표</span>
                            </a>
                            <span class="new-border">NEW</span>
                        </td>
                        <td>2022.04.08</td>
                    </tr>
                    <tr>
                        <td>시사회/무대인사</td>
                        <td class="border-title">
                            <a href="#">
                                <span>&lt;루이스 웨인: 사랑을 그린 고양이 화가&gt; 회원시사회 당첨자 발표</span>
                            </a>
                        </td>
                        <td>2022.03.29</td>
                    </tr>
                    <tr>
                        <td>영화</td>
                        <td class="border-title">
                            <a href="#">
                                <span>&lt;이상한 나라의 수학자&gt; 올림피아드 당첨자 발표</span>
                            </a>
                        </td>
                        <td>2022.03.21</td>
                    </tr>
                    <tr>
                        <td>시사회/무대인사</td>
                        <td class="border-title">
                            <a href="#">
                                <span>&lt;사랑 후의 두 여자&gt; 회원시사회 당첨자 발표</span>
                            </a>
                        </td>
                        <td>2022.03.21</td>
                    </tr>
                    <tr>
                        <td>영화</td>
                        <td class="border-title">
                            <a href="#">
                                <span>&lt;더 배트맨&gt; SUPER WEEK! 당첨자 발표</span>
                            </a>
                        </td>
                        <td>2022.03.16</td>
                    </tr>
                    <tr>
                        <td>시사회/무대인사</td>
                        <td class="border-title">
                            <a href="#">
                                <span>&lt;드라이&gt; 회원시사회 당첨자 발표</span>
                            </a>
                        </td>
                        <td>2022.03.14</td>
                    </tr>
                    <tr>
                        <td>시사회/무대인사</td>
                        <td class="border-title">
                            <a href="#">
                                <span>&lt;가무악칠채&gt; 회원시사회 당첨자 발표</span>
                            </a>
                        </td>
                        <td>2022.03.11</td>
                    </tr>
                </table>
                <div class="pager">
                    <button type="button" class="to-first-page"></button>
                    <button type="button" class="to-prev-page"></button>
                    <strong title="현재 페이지">1</strong>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">6</a>
                    <a href="#">7</a>
                    <a href="#">8</a>
                    <a href="#">9</a>
                    <a href="#">10</a>
                    <button type="button" class="to-next-page"></button>
                    <button type="button" class="to-last-page"></button>
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
    <script src="/static/js/Event/home.js"></script>
</body>

</html>
</html>