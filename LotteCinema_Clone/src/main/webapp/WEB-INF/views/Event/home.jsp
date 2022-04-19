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
    <link rel="stylesheet" href="/static/css/Event/home.css">
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
                <div class="contents-title">
                    <h2>전체 이벤트</h2>
                    <div class="to-event-board">
                        <a href="#">당첨자 발표</a>
                        <a href="#">응모내역</a>
                        <a href="#">지난 이벤트</a>
                    </div>
                </div>
                <div class="content-list">
                    <div class="title-wrapper">
                        <h3>영화</h3>
                        <a href="#">
                            <span>더보기</span>
                            <img src="/static/images/small_right_arrow.png" alt="더보기">
                        </a>
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
                    </div>
                </div>
                <div class="content-list">
                    <div class="title-wrapper">
                        <h3>시사회/무대인사</h3>
                        <a href="#">
                            <span>더보기</span>
                            <img src="/static/images/small_right_arrow.png" alt="더보기">
                        </a>
                    </div>
                    <div class="content-wrapper">
                        <a href="#" class="content">
                            <img src="/static/images/event_premiere03.jpg" alt="">
                            <span class="content-date">2022.04.23 ~ 2022.04.24</span>
                        </a>
                        <a href="#" class="content">
                            <img src="/static/images/event_premiere04.jpg" alt="">
                            <span class="content-date">2022.04.15 ~ 2022.04.15</span>
                            <span class="d-day">D-1</span>
                        </a>
                        <a href="#" class="content">
                            <img src="/static/images/event_premiere01.jpg" alt="">
                            <span class="content-date">2022.04.08 ~ 2022.04.14</span>
                        </a>
                    </div>
                </div>
                <div class="content-list">
                    <div class="title-wrapper">
                        <h3>HOT</h3>
                        <a href="#">
                            <span>더보기</span>
                            <img src="/static/images/small_right_arrow.png" alt="더보기">
                        </a>
                    </div>
                    <div class="content-wrapper">
                        <a href="#" class="content">
                            <img src="/static/images/event_hot01.jpg" alt="">
                            <span class="content-date">2022.04.04 ~ 2022.05.31</span>
                        </a>
                        <a href="#" class="content">
                            <img src="/static/images/event_hot02.jpg" alt="">
                            <span class="content-date">2022.04.01 ~ 2022.04.30</span>
                            <span class="d-day">D-1</span>
                        </a>
                        <a href="#" class="content">
                            <img src="/static/images/event_hot03.jpg" alt="">
                            <span class="content-date">2022.03.31 ~ 2022.04.12</span>
                        </a>
                    </div>
                </div>
                <div class="content-list">
                    <div class="title-wrapper">
                        <h3>제휴할인</h3>
                        <a href="#">
                            <span>더보기</span>
                            <img src="/static/images/small_right_arrow.png" alt="더보기">
                        </a>
                    </div>
                    <div class="content-wrapper">
                        <a href="#" class="content">
                            <img src="/static/images/event_discount01.jpg" alt="">
                            <span class="content-date">2022.01.28 ~ 2022.07.31</span>
                        </a>
                        <a href="#" class="content">
                            <img src="/static/images/event_discount02.jpg" alt="">
                            <span class="content-date">2022.02.01 ~ 2023.01.31</span>
                            <span class="d-day">D-1</span>
                        </a>
                        <a href="#" class="content">
                            <img src="/static/images/event_discount03.jpg" alt="">
                            <span class="content-date">2021.02.01 ~ 2024.01.31</span>
                        </a>
                    </div>
                </div>
                <div class="content-list">
                    <div class="title-wrapper">
                        <h3>우리동네영화관</h3>
                        <a href="#">
                            <span>더보기</span>
                            <img src="/static/images/small_right_arrow.png" alt="더보기">
                        </a>
                    </div>
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region">경북/대구</span>
                            <span class="promotion-title">[대구율하] 롯데아울렛 대구율하점 연계 프로모션</span>
                            <span class="promotion-date">2022.04.04 ~ 2022.04.30</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li>● 기간 : 2022년 4월 5일 ~ 2022년 4월 30일
                                </li>
                                <li>● 대상 : 롯데백화점 대구율하점 APP [러블리키즈] 클럽
                                    內
                                    할인쿠폰 다운로드 고객</li>
                                <li>● 혜택 : 2D영화 3천원 할인</li>
                                <li>● 이용방법</li>
                                <li class="li-number">1. 롯데백화점 APP → 아울렛 대구율하점 클럽바로가기 →
                                    [러블리키즈] 클럽 가입 후 할인쿠폰 다운로드</li>
                                <li class="li-number">2. 롯데시네마 대구율하관 매점에서 쿠폰 제시 후 할인 발권
                                </li>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>- 본 이벤트는 롯데시네마 대구율하에서만 진행합니다.</li>
                                <li>- 조조 및 타 할인 중복 불가합니다.</li>
                                <li>- 현장 발권 시 2D영화에 한해 적용 가능합니다.</li>
                                <li>- 배급사 사정에 따라 일부 영화는 제한될 수 있습니다.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region red">서울</span>
                            <span class="promotion-title">건국대학교 학생 및 교직원 할인</span>
                            <span class="promotion-date">2022.04.04 ~ 2022.12.31</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li>● 대상 : 건국대학교 학생 및 교직원(동반 1인 포함)
                                </li>
                                <li>● 혜택 : 영화 2천원 할인 / 매점 콤보 2천원 할인 / 엔제리너스 커피류 20% 할인
                                </li>
                                <li>● 혜택 : 2D영화 3천원 할인</li>
                                <li>● 이용방법</li>
                                <li class="li-number">1. 오프라인 : 학생증 또는 재직증명
                                    제시시(영화/매점/엔제리너스)</li>
                                <li class="li-number">2. 온라인 : 오프라인 할인 적용 익월부터 고객 ID 內
                                    할인권 발송(영화/매점 月4매 )
                                </li>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>*본 이벤트는 롯데시네마 건대입구에서만 진행됩니다.</li>
                                <li>*오프라인 할인 시 본인 ID로 L포인트를 적립하여야 익월 할인권이 발송됩니다.</li>
                                <li>*주중/주말,공휴일 모두 적용 가능합니다.</li>
                                <li>*샤롯데 및 타할인 중복 불가합니다.</li>
                                <li>*2D영화에 한해 적용 가능합니다.</li>
                                <li>*2D영화에 한해 적용 가능합니다.</li>
                                <li>*배급사 사정에 의해 일부 영화는 제한될 수 있습니다.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region">경북/대구</span>
                            <span class="promotion-title">[구미공단] 공단 기업체 임직원 프로모션</span>
                            <span class="promotion-date">2022.03.01 ~ 2022.12.31</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li>● 기간 : 2022년 3월 1일 ~ 2022년 12월 31일
                                </li>
                                <li>● 대상 : 구미공단 기업체 임직원</li>
                                <li>● 혜택 : 2D영화 3천원 할인</li>
                                <li>● 이용방법</li>
                                <li class="li-number">1. 온라인 : 롯데시네마 APP → 마이 → 쿠폰함 →
                                    쿠폰등록 [인증번호 : 91922186] 후 할인</li>
                                <li class="li-number">2. 오프라인 : 현장에서 기업체 사원증, 명함, 재직증명서
                                    등 인증 후 할인
                                </li>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>- 본 이벤트는 롯데시네마 구미공단에서만 진행합니다.</li>
                                <li>- 조조 및 타 할인 중복 불가합니다.</li>
                                <li>- 현장 발권 시 2D영화에 한해 적용 가능합니다.</li>
                                <li>- 배급사 사정에 따라 일부 영화는 제한될 수 있습니다.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region">경북/대구</span>
                            <span class="promotion-title">[경산] 경산시 대학생 프로모션</span>
                            <span class="promotion-date">2022.03.01 ~ 2022.12.31</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li>● 기간 : 2022년 3월 1일 ~ 2022년 12월 31일
                                </li>
                                <li>● 대상 : 경산시 대학교 학생</li>
                                <li>● 혜택 : 2D영화 3천원 할인</li>
                                <li>● 이용방법</li>
                                <li class="li-number">1. 온라인 : 롯데시네마 APP → 마이 → 쿠폰함 →
                                    쿠폰등록 [인증번호 : 38522716] 후 할인</li>
                                <li class="li-number">2. 오프라인 : 현장에서 경산시 대학교 학생증 인증 후 할인
                                </li>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>- 본 이벤트는 롯데시네마 경산에서만 진행합니다.</li>
                                <li>- 조조 및 타 할인 중복 불가합니다.</li>
                                <li>- 현장 발권 시 2D영화에 한해 적용 가능합니다.</li>
                                <li>- 배급사 사정에 따라 일부 영화는 제한될 수 있습니다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    <jsp:include page="/WEB-INF/views/Event/banner.jsp" />
    <jsp:include page="/WEB-INF/views/Event/footer.jsp" />
    </div>
    <script src="/static/js/CinemaMall/scroll_control.js"></script>
    <script src="/static/js/CinemaMall/nav_control.js"></script>
    <script src="/static/js/CinemaMall/footer_banner_control.js"></script>
    <script src="/static/js/Event/home.js"></script>
</body>

</html>