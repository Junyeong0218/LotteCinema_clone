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
                    <span class="contents-title">지난 이벤트</span>
                    <div class="searcher">
                        <select name="region">
                            <option value="0" selected>전체</option>
                            <option value="1">서울</option>
                            <option value="2">경기/인천</option>
                            <option value="3">충청/대전</option>
                            <option value="4">전라/광주</option>
                            <option value="5">경북/대구</option>
                            <option value="6">강원</option>
                            <option value="7">제주</option>
                            <option value="8">경남/부산/울산</option>
                        </select>
                        <select name="cinema">
                            <option value="0" selected>전체</option>
                        </select>
                        <input type="text" name="keyword" placeholder="검색어를 입력하세요." title="검색어를 입력하세요.">
                        <button type="button">검색</button>
                    </div>
                </div>
                <ul class="event-tab">
                    <li><button type="button" class="tab-button active">영화</button></li>
                    <li><button type="button" class="tab-button">시사회/무대인사</button></li>
                    <li><button type="button" class="tab-button">HOT</button></li>
                    <li><button type="button" class="tab-button">제휴할인</button></li>
                    <li><button type="button" class="tab-button">우리동네영화관</button></li>
                </ul>
                <div id="movie-wrapper" class="past-content-wrapper">
                    <div class="content-wrapper">
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_movie01.png" alt="">
                            <span class="content-date">2022.04.08 ~ 2022.04.15</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_movie02.jpg" alt="">
                            <span class="content-date">2022.03.31 ~ 2022.04.05</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_movie03.jpg" alt="">
                            <span class="content-date">2022.03.30 ~ 2022.04.08</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_movie04.jpg" alt="">
                            <span class="content-date">2022.03.24 ~ 2022.03.29</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_movie05.jpg" alt="">
                            <span class="content-date">2022.03.24 ~ 2022.04.06</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_movie06.jpg" alt="">
                            <span class="content-date">2022.03.23 ~ 2022.04.05</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_movie07.jpg" alt="">
                            <span class="content-date">2022.03.23 ~ 2022.04.05</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_movie08.png" alt="">
                            <span class="content-date">2022.03.23 ~ 2022.04.05</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_movie09.jpg" alt="">
                            <span class="content-date">2022.03.23 ~ 2022.04.05</span>
                        </a>
                    </div>
                    <button type="button" class="load-more-movies">
                        <span>더보기</span>
                        <img src="/static/images/small_down_arrow.png" alt="">
                    </button>
                </div>
                <div id="premiere-wrapper" class="past-content-wrapper hidden">
                    <div class="content-wrapper">
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_premiere01.jpg" alt="">
                            <span class="content-date">2022.03.31 ~ 2022.04.07</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_premiere02.jpg" alt="">
                            <span class="content-date">2022.03.30 ~ 2022.04.03</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_premiere03.jpg" alt="">
                            <span class="content-date">2022.03.29 ~ 2022.04.07</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_premiere04.jpg" alt="">
                            <span class="content-date">2022.03.28 ~ 2022.04.07</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_premiere05.jpg" alt="">
                            <span class="content-date">2022.03.23 ~ 2022.04.02</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_premiere06.jpg" alt="">
                            <span class="content-date">2022.03.22 ~ 2022.03.27</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_premiere07.jpg" alt="">
                            <span class="content-date">2022.03.22 ~ 2022.04.02</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_premiere08.jpg" alt="">
                            <span class="content-date">2022.03.21 ~ 2022.04.03</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_premiere09.png" alt="">
                            <span class="content-date">2022.03.16 ~ 2022.03.26</span>
                        </a>
                    </div>
                    <button type="button" class="load-more-movies">
                        <span>더보기</span>
                        <img src="/static/images/small_down_arrow.png" alt="">
                    </button>
                </div>
                <div id="hot-wrapper" class="past-content-wrapper hidden">
                    <div class="content-wrapper">
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_hot01.png" alt="">
                            <span class="content-date">2022.04.07 ~ 2022.04.08</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_hot02.jpg" alt="">
                            <span class="content-date">2022.04.04 ~ 2022.04.06</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_hot03.jpg" alt="">
                            <span class="content-date">2022.04.01 ~ 2022.04.03</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_hot04.jpg" alt="">
                            <span class="content-date">2022.03.29 ~ 2022.04.01</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_hot05.jpg" alt="">
                            <span class="content-date">2022.03.25 ~ 2022.03.31</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_hot06.jpg" alt="">
                            <span class="content-date">2022.03.21 ~ 2022.04.03</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_hot07.jpg" alt="">
                            <span class="content-date">2022.03.13 ~ 2022.03.20</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_hot08.jpg" alt="">
                            <span class="content-date">2022.03.12 ~ 2022.03.12</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_hot09.jpg" alt="">
                            <span class="content-date">2022.03.11 ~ 2022.03.31</span>
                        </a>
                    </div>
                    <button type="button" class="load-more-movies">
                        <span>더보기</span>
                        <img src="/static/images/small_down_arrow.png" alt="">
                    </button>
                </div>
                <div id="discount-wrapper" class="past-content-wrapper hidden">
                    <div class="content-wrapper">
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_discount01.jpg" alt="">
                            <span class="content-date">2022.04.04 ~ 2022.04.08</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_discount02.jpg" alt="">
                            <span class="content-date">2022.03.07 ~ 2022.03.11</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_discount03.jpg" alt="">
                            <span class="content-date">2022.03.07 ~ 2022.03.27</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_discount04.png" alt="">
                            <span class="content-date">2022.03.02 ~ 2022.03.31</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_discount05.png" alt="">
                            <span class="content-date">2022.03.24 ~ 2022.03.31</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_discount06.jpg" alt="">
                            <span class="content-date">2022.02.17 ~ 2022.02.17</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_discount07.jpg" alt="">
                            <span class="content-date">2022.02.04 ~ 2022.02.11</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_discount08.png" alt="">
                            <span class="content-date">2022.02.03 ~ 2022.02.27</span>
                        </a>
                        <a href="#" class="past-content">
                            <div class="event-done-message">이벤트 종료</div>
                            <img src="/static/images/past_discount09.png" alt="">
                            <span class="content-date">2022.02.01 ~ 2022.02.28</span>
                        </a>
                    </div>
                    <button type="button" class="load-more-movies">
                        <span>더보기</span>
                        <img src="/static/images/small_down_arrow.png" alt="">
                    </button>
                </div>
                <div id="promotion-button-wrapper" class="past-content-wrapper hidden">
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region">경북/대구</span>
                            <span class="promotion-title">[대구/울산/경북/강원] 3월, 31일 간 3+1
                                프로모션</span>
                            <span class="promotion-date">2022.03.01 ~ 2022.03.31</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li>● 기간 : 2022년 3월 1일 ~ 3월 31일
                                </li>
                                <li>● 대상 : 3인 관람 고객</li>
                                <li>● 혜택 : 2D영화 4인 관람 시 1인 무료 (3+1)</li>
                                <li>● 이용방법 : 현장 발권 시 적용</li>
                                <li>● 진행 영화관</li>
                                <li class="li-number">- 대구ㆍ경북 : 성서, 상인, 대구율하, 대구광장, 동성로,
                                    경산, 구미공단</li>
                                <li class="li-number">- 울산 : 울산, 울산성남</li>
                                <li class="li-number">- 강원 : 원주무실, 남원주, 동해</li>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>- 본 이벤트는 롯데시네마 해당 영화관에서만 진행합니다.</li>
                                <li>- 2D영화 성인 및 청소년 요금에 한해 적용 가능합니다.</li>
                                <li>- 조조 및 타 할인 중복 불가합니다.</li>
                                <li>- 4인 현장 예매 시 당일 영화에 한해 적용 가능합니다.</li>
                                <li>- 배급사 사정에 따라 일부 영화는 제한될 수 있습니다.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region red">서울</span>
                            <span class="promotion-title">[독산]&lt;더 배트맨&gt;관람객 무료 주차
                                4시간</span>
                            <span class="promotion-date">2022.02.28 ~ 2022.03.13</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li>● 기간 : &lt;더 배트맨&gt; 종영 시 까지</li>
                                <li>● 대상 : &lt;더 배트맨&gt; 관람객</li>
                                <li>● 혜택 : 기본 무료 주차 3시간 + 1시간 총 4시간 무료</li>
                                <li class="li-number"><b>※ 출차 시 티켓 인증 (모바일티켓 가능)</b>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>타 영화 관람객 기본 3시간 적용</li>
                            </ul>
                        </div>
                    </div>
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region orange">경기/인천</span>
                            <span class="promotion-title">롯데시네마 수원 미식가이드</span>
                            <span class="promotion-date">2022.02.25 ~ 2022.03.06</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li>1. 기간 : ~ 22년 3월 6일(일)</li>
                                <li>2. 대상 : 당일 영화관람 티켓 소지 고객</li>
                                <li>3. 혜택 : 롯데몰&백화점 수원 F&B 매장 할인 및 혜택 제공</li>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>- 롯데시네마 수원 및 롯데몰&백화점 수원에 한하여 진행</li>
                                <li>- 당일 영화관람 티켓 확인 후 혜택 제공</li>
                                <li>- 이벤트 참여 매장에 한함(참여 매장 및 혜택은 영화관 홀 배너 참고)</li>
                            </ul>
                        </div>
                    </div>
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region purple">경남/부산/울산</span>
                            <span class="promotion-title">[부산명지] MY 영화관 등록 이벤트</span>
                            <span class="promotion-date">2022.02.15 ~ 2022.02.28</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li>● 참여방법 : 현장 티켓 발권 전 MY 영화관 등록 화면을 직원에게 보여주세요!
                                </li>
                                <li class="li-number">※ MY 영화관 등록방법 : 롯데시네마 로그인 - 마이페이지
                                    - MY 영화관 설정 - '부산명지' 등록</li>
                                <li>● 기간 : 22년 2월 15일 ~ 22년 2월 28일</li>
                                <li>● 혜택</li>
                                <li class="li-number">- 일반관 청소년 2천원 / 성인 3천원 할인</li>
                                <li class="li-number">- 리클라이너관 청소년 3천원 / 성인 4천원 할인</li>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>- 본 이벤트는 부산명지에서만 진행합니다.</li>
                                <li>- 조조, 심야, 우대, 경로, 문화의 날 등 및 타 프로모션 중복 할인 불가합니다.</li>
                                <li>- 현장(매표소) 발권 시 일반 2D 영화에 한합니다.</li>
                                <li>- 배급사 사정에 따라 일부 영화는 제한될 수 있습니다.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region">경북/대구</span>
                            <span class="promotion-title">[경산] 회원 감사 이벤트</span>
                            <span class="promotion-date">2021.11.29 ~ 2021.12.19</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li>● 진행 영화관 : 롯데시네마 경산</li>
                                <li>● 기간 : 21년 11월 25일(목) ~ 12월 19일(일)</li>
                                <li>● 대상 : 롯데시네마 APP 인증 성인 회원</li>
                                <li>● 혜택</li>
                                <li class="li-number">1) 롯데시네마 APP 회원 인증 시 주중/주말 영화 1만원
                                    관람</li>
                                <li class="li-number">2) 콤보 구매 시 팝콘 사이즈 업 및 카라멜 맛 변경
                                    FREE</li>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>● 조조 및 타 할인 중복적용 불가</li>
                            </ul>
                        </div>
                    </div>
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region orange">경기/인천</span>
                            <span class="promotion-title">[하남미사] 하남이마트/코스트코 고객 영화 할인
                                안내</span>
                            <span class="promotion-date">2021.11.18 ~ 2021.12.31</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li><b>[하남미사]하남이마트/코스트코 고객 영화 할인 안내</b></li>
                                <br>
                                <li>● 기간 : ~21년 12월 31일(금)</li>
                                <li>● 대상 : 이마트/코스트코 하남점 이용고객</li>
                                <li>● 혜택 : 영화관람 3천원 할인</li>
                                <li>● 이용방법</li>
                                <li class="li-number">1) 이마트 영수증 쿠폰 및 코스트코 회원증 제시</li>
                                <li class="li-number">2) 동반 3인까지 사용 가능</li>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>1. 조조 및 타 프로모션 중복 할인 불가</li>
                                <li>2. 롯데시네마 하남미사관 현장매표소에서만 가능</li>
                                <li>※ 오시는 길 : 현대지식산업센터 한강미사 2차 C,D동 지하 1층</li>
                                <li>※ 주차안내 : 3시간 무료</li>
                            </ul>
                        </div>
                    </div>
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region red">서울</span>
                            <span class="promotion-title">[노원] '이터널스' 관람고객 프로모션</span>
                            <span class="promotion-date">2021.11.05 ~ 2021.11.14</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li>&lt;이벤트 1&gt;</li>
                                <li>● <b>기간 : 11/5(금) ~ 11/14(일),</b> (TGIF 11/9(화)부터
                                    진행)
                                </li>
                                <li>● 혜택 : TGIF 3만원 이상 구매시 → 생맥주 2잔 제공</li>
                                <li class="li-number">아그라 4만원 이상 구매시 → 병맥주 1병 제공</li>
                                <br>
                                <li>&lt;이벤트 2&gt;</li>
                                <li>● <b>기간 : 11/5(금) ~ 11/14(일)</b></li>
                                <li>● 혜택 : 패션(2F,8F) 및 화장품 10만원 이상 구매 시 → 영화초대권 1매 제공
                                </li>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>● 롯데시네마 노원관, 롯데백화점 노원점에서만 진행</li>
                                <li>● 해당 이벤트는 선착순으로 진행</li>
                                <li>● 이벤트마다 기간이 다릅니다.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region red">서울</span>
                            <span class="promotion-title">[노원] 롯데백화점 노원점 연계 프로모션</span>
                            <span class="promotion-date">2021.09.01 ~ 2021.10.31</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li>● 기간 : 21년 9월 1일(수) ~ 21년 10월 31일(일)</li>
                                <li class="li-number">(금,토,일,공휴일 한정)</li>
                                <li>&lt;이벤트 1&gt;</li>
                                <li>● 대상 : 영화관람 고객 중 영캐쥬얼(8F)에서 10만원 이상 구매고객</li>
                                <li>● 혜택 : 5% 상품권 페이백(5천원)</li>
                                <li>● 수령처 : 7F 사은행사장</li>
                                <li>&lt;이벤트 2&gt;</li>
                                <li>● 대상 : 백화점에서 5만원 이상 구매고객 중 영화관람 고객</li>
                                <li>● 혜택 : 팝콘M 증정(오리지널, 카라멜 중 선택)</li>
                                <li>● 수령처 : 롯데시네마 스위트샵(저녁 8시까지 증정)</li>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>● 본 이벤트는 노원점에서만 진행합니다.</li>
                                <li>● 금,토,일,공휴일 한정 이벤트 진행</li>
                                <li>● 당일 티켓, 당일 영수증 한정</li>
                            </ul>
                        </div>
                    </div>
                    <div class="content-button">
                        <button type="button" class="promotion-button">
                            <span class="promotion-region red">서울</span>
                            <span class="promotion-title">[노원] 주말3시간 무료주차로 여유로운 무비&쇼핑</span>
                            <span class="promotion-date">2021.09.01 ~ 2021.10.31</span>
                        </button>
                        <div class="button-description">
                            <ul>
                                <li>● 기간 : 21년 9월 1일(수) ~ 21년 10월 31일(일), 2개월간 진행</li>
                                <li>● 대상 : 주말/공휴일 영화관람 고객</li>
                                <li>● 혜택 : 백화점 주차장에 주차 시 총 3시간 무료주차 가능</li>
                            </ul>
                            <div class="caution">
                                <img src="/static/images/event_caution.png" alt="유의사항">
                                <span>유의사항</span>
                            </div>
                            <ul class="caution-messages">
                                <li>● 주차권 바코드 주차정산기에 등록 후 출차</li>
                                <li>● 주차권 바코드 위치 : 종이티켓 하단 or 어플 바로티켓 상단</li>
                                <li>※ 본 주차 혜택은 2021년 9월~10월(2개월)에 한하여 진행하오니</li>
                                <li class="li-number">추후 방문 시 착오 없으시길 바랍니다.</li>
                            </ul>
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
    <script src="/static/js/Event/home.js"></script>
    <script src="/static/js/Event/past_event_tab_control.js"></script>
</body>

</html>