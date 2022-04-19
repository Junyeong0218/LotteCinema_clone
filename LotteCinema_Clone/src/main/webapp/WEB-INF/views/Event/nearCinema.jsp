<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>지난 이벤트 - 롯데시네마</title>
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
                    <span class="contents-title">우리동네 영화관</span>
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
                <div class="content-button">
                    <button type="button" class="promotion-button">
                        <span class="promotion-region red">서울</span>
                        <span class="promotion-title">[수유] 평일 영화 할인 + 팝콘 증정 이벤트</span>
                        <span class="promotion-date">2022.02.15 ~ 2022.04.30</span>
                    </button>
                    <div class="button-description">
                        <ul>
                            <li>[티켓]</li>
                            <li>● 기간 : 22년 2월 15일 ~ 22년 4월 30일
                            </li>
                            <li>● 대상 : 성인, 청소년</li>
                            <li>● 혜택 : 평일 영화 3천원 할인</li>
                            <li>● 이용방법 :</li>
                            <li class="li-number">1) 온라인 : 롯데시네마 로그인 - 마이 - 쿠폰함 - 쿠폰등록 [인증번호
                                : 51522925]</li>
                            <li class="li-number">2) 오프라인 : 현장 티켓 발권 시 3천원 즉시 할인
                            </li>
                            <br>
                            <li>[매점]</li>
                            <li>● 기간 : 22년 2월 15일 ~ 22년 4월 30일</li>
                            <li>● 내용 : 팝콘 1 + 1 증정 이벤트</li>
                            <li>● 혜택 : 콤보, 단품으로 구매한 팝콘과 동일한 사이즈의 팝콘 한개 더 증정</li>
                        </ul>
                        <div class="caution">
                            <img src="/static/images/event_caution.png" alt="유의사항">
                            <span>유의사항</span>
                        </div>
                        <ul class="caution-messages">
                            <li>- 본 이벤트는 수유에서만 진행합니다.</li>
                            <li>- 조조, 심야, 우대, 경로, 문화의 날 등 및 타 프로모션 중복 할인 불가합니다.</li>
                            <li>- 영화관 사정에 따라 해당 이벤트는 조기종료 될 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="content-button">
                    <button type="button" class="promotion-button">
                        <span class="promotion-region purple">경남/부산/울산</span>
                        <span class="promotion-title">[부산지역] BNK부산은행 카드 결제 할인</span>
                        <span class="promotion-date">2022.02.10 ~ 2022.12.31</span>
                    </button>
                    <div class="button-description">
                        <ul>
                            <li>이벤트 내용</li>
                            <li>● 기간 : 2022년 1월 1일 ~ 2022년 12월 31일
                            </li>
                            <li>● 대상 : BNK부산은행 카드 결제 고객(단, 선불카드 및 기업카드 제외)</li>
                            <li>● 혜택</li>
                            <li class="li-number">1) 2인 이상 티켓 결제시 3천원 할인</li>
                            <li class="li-number">2) 매점 콤보 메뉴 2천원 할인(일부품목 제외)_매점 결제시 적용</li>
                            <li>● 이용방법</li>
                            <li class="li-number">1) 해당 카드 결제시 할인 적용</li>
                        </ul>
                        <div class="caution">
                            <img src="/static/images/event_caution.png" alt="유의사항">
                            <span>유의사항</span>
                        </div>
                        <ul class="caution-messages">
                            <li>- 본 이벤트는 부산본점, 광복, 동래, 센텀시티, 동부산아울렛, 대영, 서면, 오투(부산대), 명지,
                                프리미엄 해운대(장산)에서만 진행합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="content-button">
                    <button type="button" class="promotion-button">
                        <span class="promotion-region red">서울</span>
                        <span class="promotion-title">NH농협 임직원 할인</span>
                        <span class="promotion-date">2022.01.24 ~ 2022.12.31</span>
                    </button>
                    <div class="button-description">
                        <ul>
                            <li>● 기간 : 2022년 1월 1일 ~ 2022년 12월 31일
                            </li>
                            <li>● 대상 : 농협중앙회, 농협경제지주(계열사포함), NH농협금융지주(계열사포함), NH농협은행,
                                NH농협생명, NH농협손해보험, 지역 농·축협</li>
                            <li>● 혜택 : 영화 3천원 할인</li>
                            <li>● 이용방법 : </li>
                            <li class="li-number">1) 농협 임직원 사원증, 명함, 재직증명서 제시 (+신분증포함)</li>
                            <li class="li-number">2) 성인/청소년, 주중/주말 동반 3인까지 가능</li>
                        </ul>
                        <div class="caution">
                            <img src="/static/images/event_caution.png" alt="유의사항">
                            <span>유의사항</span>
                        </div>
                        <ul class="caution-messages">
                            <li>- 본 이벤트는 수락산, 인덕원, 영종하늘도시에서만 진행합니다.</li>
                            <li>- 조조, 심야, 우대, 경로, 문화의 날 등 및 타 프로모션 중복 할인 불가합니다.</li>
                            <li>- 현장(매표소) 발권 시 일반 2D영화에 한합니다.</li>
                            <li>- 배급사 사정에 따라 일부 영화는 제한될 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="content-button">
                    <button type="button" class="promotion-button">
                        <span class="promotion-region yellow">충청/대전</span>
                        <span class="promotion-title">[청주용암] 수퍼플렉스 청주최초 레이저 영사기 도입</span>
                        <span class="promotion-date">2021.07.30 ~ 2024.12.31</span>
                    </button>
                    <div class="button-description">
                        <ul>
                            <li>● 기간 : 21년 7월 23일(금)~</li>
                            <li class="li-number">청주용암 수퍼플렉스가 레이저 영사기로 업그레이드해서 왔습니다!</li>
                            <li>● 더욱 부드럽고, 선명한 청주최초 4K 레이저 영사기</li>
                            <li>● 17M 대형 스크린이 만드는 압도적인 영상</li>
                            <li>● DOLBY ATMOS가 만드는 전 좌석 360도 3D 입체 음향</li>
                        </ul>
                    </div>
                </div>
                <div class="content-button">
                    <button type="button" class="promotion-button">
                        <span class="promotion-region orange">경기/인천</span>
                        <span class="promotion-title">[인천터미널] 관람객 무료 주차 3시간</span>
                        <span class="promotion-date">2021.06.01 ~ 2023.12.31</span>
                    </button>
                    <div class="button-description">
                        <ul>
                            <li>● 기간 : 2021년 6월 1일 부터</li>
                            <li>● 대상 : 롯데시네마 인천터미널 이용객</li>
                            <li>● 혜택 : 기본 무료 주차 3시간</li>
                            <li>● 사전 정산기 위치 : 지하주차장 또는 주차타워 연결 통로</li>
                        </ul>
                        <div class="caution">
                            <img src="/static/images/event_caution.png" alt="유의사항">
                            <span>유의사항</span>
                        </div>
                        <ul class="caution-messages">
                            <li>● 이용방법</li>
                            <li class="li-number">1) 차량번호 검색 - 차량 확인 후 - 영수증 할인</li>
                            <li class="li-number">2) 티켓 하단 주차할인권 또는 무바일 주차권 인증</li>
                            <li class="li-number">3) 30분 내 출차 진행</li>
                            <li class="li-number">※ 출차 시간 초과 시 요금 발생</li>
                        </ul>
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