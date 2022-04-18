<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <title>멤버십 - 롯데시네마</title>
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/header.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/aside_bar.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/banner_section.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/footer.css">
    <link rel="stylesheet" href="/static/css/Membership/vip_zone.css">
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
                <h2 class="contents-title">멤버십</h2>
                <ul class="tab-selector">
                    <li><button type="button" class="active">Friends</button></li>
                    <li><button type="button">VIP</button></li>
                </ul>
                <div class="content-wrapper">
                    <div class="content friends active">
                        <div class="content-title">
                            <img src="/static/images/membership_friends_title.png" alt="Friends 분기마다 쉽고 빠르게 Level-Up!">
                        </div>
                        <div class="top-information">
                            <div class="nouser-form">
                                <div class="signup-message">
                                    <span>회원가입 하시고</span>
                                    <span>VIP의 풍성한 혜택을 만나보세요.</span>
                                </div>
                                <a href="#">회원가입</a>
                                <div class="to-signin">
                                    <span>이미 L.POINT 회원이신가요?</span>
                                    <a href="#">로그인</a>
                                </div>
                            </div>
                        </div>
                        <div class="benefit-wrapper">
                            <h2 class="benefit-title">Friends 혜택</h2>
                            <div class="card-wrapper">
                                <div class="card">
                                    <span class="level">
                                        <img src="/static/images/membership_level01.png" alt="">
                                    </span>
                                    <div class="level-description">
                                        <span>직전 분기 2만원 이상 이용</span>
                                        <span class="description-row">
                                            <span>· 영화 4천원 할인권</span>
                                            <span><span class="ticket-count">1</span>
                                                매</span>
                                        </span>
                                    </div>
                                </div>
                                <div class="card">
                                    <span class="level">
                                        <img src="/static/images/membership_level02.png" alt="">
                                    </span>
                                    <div class="level-description">
                                        <span>직전 분기 4만원 이상 이용</span>
                                        <span class="description-row">
                                            <span>· 영화 4천원 할인권</span>
                                            <span><span class="ticket-count">2</span>
                                                매</span>
                                        </span>
                                        <span class="description-row">
                                            <span>· 콤보 4천원 할인권</span>
                                            <span><span class="ticket-count">1</span>
                                                매</span>
                                        </span>
                                    </div>
                                </div>
                                <div class="card">
                                    <span class="level">
                                        <img src="/static/images/membership_level03.png" alt="">
                                    </span>
                                    <div class="level-description">
                                        <span>직전 분기 6만원 이상 이용</span>
                                        <span class="description-row">
                                            <span>· 스페셜관 관람권</span>
                                            <span><span class="ticket-count">1</span>
                                                매</span>
                                        </span>
                                        <span class="description-row">
                                            <span>· 영화 4천원 할인권</span>
                                            <span><span class="ticket-count">2</span>
                                                매</span>
                                        </span>
                                        <span class="description-row">
                                            <span>· 콤보 4천원 할인권</span>
                                            <span><span class="ticket-count">1</span>
                                                매</span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="benefit-wrapper">
                            <h4 class="description-title">Friends 승급안내</h4>
                            <ul class="description-texts">
                                <li class="description-text">분기별 티켓 누적 금액 기준으로
                                    Friends 등급이 선정되며, 매분기 종료 3일 후 등급이
                                    반영됩니다.</li>
                                <li class="description-text">VIP회원의 경우 Friends
                                    승급에 해당되지 않습니다.</li>
                                <li class="description-text">정회원에 한하여 Friends
                                    승급이 가능하며, 온라인 간편가입 회원의 경우 정회원 전환 후 혜택 이용
                                    가능합니다.</li>
                            </ul>
                        </div>
                        <div class="benefit-wrapper">
                            <h4 class="description-title">Friends 승급 금액 반영 안내</h4>
                            <ul class="description-texts">
                                <li class="description-text">승급 금액이란 롯데시네마 티켓 구매를 통해
                                    누적되는 결제 금액으로 매점 결제 금액은 제외됩니다.</li>
                                <li class="description-text">승급 금액은 영화 관람일로부터 2~3일 후
                                    반영됩니다.
                                    <ul class="description-texts gray">
                                        <li class="description-text">온라인 예매 시 :
                                            예매하신 ID로 반영됩니다.</li>
                                        <li class="description-text">현장 결제 시 :
                                            회원 조회 기준으로 우선 반영되며, 회원 미 조회 시에는
                                            L.POINT 적립 기준으로 반영됩니다.</li>
                                    </ul>
                                </li>
                                <li class="description-text">가족 카드로 조회 및 적립을 하신 경우, 가족
                                    카드 명의자에게 승급 금액이 반영됩니다.</li>
                                <li class="description-text">법적 가족 관계와 관계없이 승급 금액 합산은
                                    불가합니다.</li>
                                <li class="description-text">관람권 사용 시 승급 금액은 관람권 판매 금액으로
                                    반영됩니다. (단, 프로모션 관람권 / 타 사이트 구매 관람권의 경우 승급 금액이 판매
                                    금액과 상이할 수 있습니다.)</li>
                                <li class="description-text">관람권 판매 금액보다 낮은 금액의 티켓 구매 시
                                    판매 금액이 아닌 티켓 금액으로 승급 금액이 반영됩니다. (예 : 조조, 문화의 날
                                    등)</li>
                                <span>다음의 [승급금액 미반영]되는 경우를 꼭 확인해주세요.</span>
                                <li class="description-text">현장 결제 시 L.POINT 카드를 제시하지 않아
                                    회원 조회 및 포인트 적립이 이루어지지 않은 경우</li>
                                <li class="description-text">초대관람권, VIP 관람권, Friends 관람권
                                    등 무료 관람권을 사용하는 경우</li>
                                <li class="description-text">기타 제휴 포인트를 사용하여 할인 받은 금액
                                    (할인 금액을 제외한 결제 금액만 포함)</li>
                                <li class="description-text">동일영화 6회 초과분에 대한 결제 금액 ( 동일
                                    영화 6회까지의 결제 금액 포함)</li>
                                <li class="description-text">단체 영화 관람을 통하여 가격 할인을 받은 경우
                                </li>
                                <li class="description-text">SKT 및 KT를 제외한 예매대행사를 통해
                                    예매하신 경우</li>
                                <li class="description-text">시사회, 초청 이벤트 등 실제 결제 금액이 없는
                                    경우</li>
                                <li class="description-text">비회원 예매 시 L.POINT 번호를 입력하지
                                    않으신 경우</li>
                            </ul>
                        </div>
                        <div class="benefit-wrapper">
                            <h4 class="description-title">Friends 쿠폰북 유의사항</h4>
                            <ul class="description-texts">
                                <strong>&lt;공통&gt;</strong>
                                <li class="description-text">Friends 쿠폰은 유효기간 내에서만 사용
                                    가능합니다. (영화 관람쿠폰의 경우 상영일 기준)</li>
                                <li class="description-text">Friends 영화 관람권 사용 시 L.POINT
                                    적립이 되지 않습니다.</li>
                                <li class="description-text">영화 및 콤보 4천원 할인권의 경우 결제금액에
                                    대해서만 L.POINT 적립이 가능합니다.</li>
                                <li class="description-text">예매 및 구매 취소 후 쿠폰 재사용이 가능합니다.
                                </li>
                                <li class="description-text">환불 시 현금 및 지류 관람권으로 교환이
                                    불가합니다.</li>
                                <li class="description-text">Friends 혜택을 영리 목적으로 대가를 받고
                                    판매 및 양도하는 경우, 서비스 이용 제한 및 회원 자격이 정지 또는 상실될 수
                                    있습니다.</li>
                                <li class="description-text">[쿠폰함] &ndash; [VIP/클럽]에서 사용
                                    불가 영화관을 확인해주세요.
                                    <ul class="description-texts gray">
                                        <li class="description-text">사용 불가 영화관은
                                            추가/변경될 수 있습니다.</li>
                                    </ul>
                                </li>
                                <span>&lt;영화쿠폰&gt;</span>
                                <li class="description-text">스페셜관 및 일반관에서 사용 가능합니다. (샤롯데
                                    및 씨네패밀리 제외)</li>
                                <span>&lt;스위트샵(매점) 쿠폰&gt;</span>
                                <li class="description-text">영화관 사정에 따라 쿠폰 적용 가능 상품 종류가
                                    상이 할 수 있으며, 이벤트 콤보에 대하여 사용이 제한됩니다.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="content vip">
                        <div class="content-title">
                            <img src="/static/images/membership_vip_title.png" alt="VIP ZONE 롯데시네마 VIP전용 혜택을 만나보세요.">
                        </div>
                        <div class="top-information">
                            <div class="nouser-form">
                                <div class="signup-message">
                                    <span>회원가입 하시고</span>
                                    <span>VIP의 풍성한 혜택을 만나보세요.</span>
                                </div>
                                <a href="#">회원가입</a>
                                <div class="to-signin">
                                    <span>이미 L.POINT 회원이신가요?</span>
                                    <a href="#">로그인</a>
                                </div>
                            </div>
                        </div>
                        <div class="rank-wrapper">
                            <h4 class="benefit-title">VIP 선정 및 유지 기준</h4>
                            <table class="rank-table">
                                <colgroup>
                                    <col style="width: 12%;">
                                    <col style="width: 22%;">
                                    <col style="width: 22%;">
                                    <col style="width: 22%;">
                                    <col style="width: 22%;">
                                </colgroup>
                                <tr>
                                    <th>&nbsp;</th>
                                    <th><span class="vip-text">VIP</span></th>
                                    <th><span class="vvip-text">VVIP</span></th>
                                    <th><span class="gold-text">GOLD</span></th>
                                    <th><span class="platinum-text">PLATINUM</span>
                                    </th>
                                </tr>
                                <tr>
                                    <td>선정</td>
                                    <td>일반회원 26만원 이상</td>
                                    <td>VIP 1년 유지</td>
                                    <td>VVIP 3년 유지</td>
                                    <td>VIP GOLD 5년 유지</td>
                                </tr>
                                <tr>
                                    <td>유지(연)</td>
                                    <td>26만원 이상</td>
                                    <td>26만원 이상</td>
                                    <td>32만원 이상</td>
                                    <td>40만원 이상</td>
                                </tr>
                            </table>
                        </div>
                        <div class="benefit-wrapper">
                            <h4 class="benefit-title">VIP 혜택</h4>
                            <ul class="vip-benefits">
                                <li>
                                    <span class="vip-badge">VIP</span>
                                    <div class="benefit">
                                        <h4 class="title">영화혜택
                                            <span>취향따라 선택하는 영화 쿠폰</span>
                                        </h4>
                                        <div class="type-wrapper">
                                            <span class="type-title"><b>A</b>형</span>
                                            <ul>
                                                <li>
                                                    <strong>주중스페셜관관람권</strong>
                                                    <span><span class="red">1</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중관람권</strong>
                                                    <span><span class="red">1</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중/주말관람권</strong>
                                                    <span><span class="red">4</span>
                                                        매</span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="type-separator">OR</div>
                                        <div class="type-wrapper">
                                            <span class="type-title"><b>B</b>형</span>
                                            <ul>
                                                <li>
                                                    <strong>주중스페셜관관람권</strong>
                                                    <span><span class="red">1</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중관람권</strong>
                                                    <span><span class="red">4</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중/주말관람권</strong>
                                                    <span><span class="red">2</span>
                                                        매</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="benefit">
                                        <h4 class="title">매점혜택
                                            <span>맛있는 매점 쿠폰</span>
                                        </h4>
                                        <ul>
                                            <li>
                                                <strong>팝콘M 교환권</strong>
                                                <span><span class="red">1</span>
                                                    매</span>
                                            </li>
                                            <li>
                                                <strong>탄산음료M
                                                    교환권</strong>
                                                <span><span class="red">1</span>
                                                    매</span>
                                            </li>
                                            <li>
                                                <strong>콤보4천원
                                                    할인권</strong>
                                                <span><span class="red">1</span>
                                                    매</span>
                                            </li>
                                            <li></li>
                                        </ul>
                                    </div>
                                    <div class="benefit">
                                        <h4 class="title">기념일
                                            <span>내가 만드는 특별한 날 쿠폰</span>
                                        </h4>
                                        <ul>
                                            <li>
                                                <strong>스위트콤보
                                                    교환권</strong>
                                                <span><span class="red">1</span>
                                                    매</span>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <span class="vvip-badge">VVIP</span>
                                    <div class="benefit">
                                        <h4 class="title">영화혜택
                                            <span>취향따라 선택하는 영화 쿠폰</span>
                                        </h4>
                                        <div class="type-wrapper">
                                            <span class="type-title"><b>A</b>형</span>
                                            <ul>
                                                <li>
                                                    <strong>주중스페셜관관람권</strong>
                                                    <span><span class="red">1</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중관람권</strong>
                                                    <span><span class="red">1</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중/주말관람권</strong>
                                                    <span><span class="red">6</span>
                                                        매</span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="type-separator">OR</div>
                                        <div class="type-wrapper">
                                            <span class="type-title"><b>B</b>형</span>
                                            <ul>
                                                <li>
                                                    <strong>주중스페셜관관람권</strong>
                                                    <span><span class="red">1</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중관람권</strong>
                                                    <span><span class="red">6</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중/주말관람권</strong>
                                                    <span><span class="red">2</span>
                                                        매</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="benefit">
                                        <h4 class="title">매점혜택
                                            <span>맛있는 매점 쿠폰</span>
                                        </h4>
                                        <ul>
                                            <li>
                                                <strong>팝콘M 교환권</strong>
                                                <span><span class="red">2</span>
                                                    매</span>
                                            </li>
                                            <li>
                                                <strong>탄산음료M
                                                    교환권</strong>
                                                <span><span class="red">2</span>
                                                    매</span>
                                            </li>
                                            <li>
                                                <strong>콤보4천원
                                                    할인권</strong>
                                                <span><span class="red">3</span>
                                                    매</span>
                                            </li>
                                            <li></li>
                                        </ul>
                                    </div>
                                    <div class="benefit">
                                        <h4 class="title">기념일
                                            <span>내가 만드는 특별한 날 쿠폰</span>
                                        </h4>
                                        <ul>
                                            <li>
                                                <strong>스위트콤보
                                                    교환권</strong>
                                                <span><span class="red">1</span>
                                                    매</span>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <span class="gold-badge">GOLD</span>
                                    <div class="benefit">
                                        <h4 class="title">영화혜택
                                            <span>취향따라 선택하는 영화 쿠폰</span>
                                        </h4>
                                        <div class="type-wrapper">
                                            <span class="type-title"><b>A</b>형</span>
                                            <ul>
                                                <li>
                                                    <strong>주중스페셜관관람권</strong>
                                                    <span><span class="red">2</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중관람권</strong>
                                                    <span><span class="red">2</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중/주말관람권</strong>
                                                    <span><span class="red">8</span>
                                                        매</span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="type-separator">OR</div>
                                        <div class="type-wrapper">
                                            <span class="type-title"><b>B</b>형</span>
                                            <ul>
                                                <li>
                                                    <strong>주중스페셜관관람권</strong>
                                                    <span><span class="red">2</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중관람권</strong>
                                                    <span><span class="red">10</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중/주말관람권</strong>
                                                    <span><span class="red">2</span>
                                                        매</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="benefit">
                                        <h4 class="title">매점혜택
                                            <span>맛있는 매점 쿠폰</span>
                                        </h4>
                                        <ul>
                                            <li>
                                                <strong>팝콘M 교환권</strong>
                                                <span><span class="red">1</span>
                                                    매</span>
                                            </li>
                                            <li>
                                                <strong>스위트콤보
                                                    교환권</strong>
                                                <span><span class="red">1</span>
                                                    매</span>
                                            </li>
                                            <li>
                                                <strong>에이드 할인권</strong>
                                                <span><span class="red">1</span>
                                                    매</span>
                                            </li>
                                            <li>
                                                <strong>콤보4천원
                                                    할인권</strong>
                                                <span><span class="red">3</span>
                                                    매</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="benefit">
                                        <h4 class="title">기념일
                                            <span>내가 만드는 특별한 날 쿠폰</span>
                                        </h4>
                                        <ul>
                                            <li>
                                                <strong>스위트콤보
                                                    교환권</strong>
                                                <span><span class="red">1</span>
                                                    매</span>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <span class="platinum-badge">PLATINUM</span>
                                    <div class="benefit">
                                        <h4 class="title">영화혜택
                                            <span>취향따라 선택하는 영화 쿠폰</span>
                                        </h4>
                                        <div class="type-wrapper">
                                            <span class="type-title"><b>A</b>형</span>
                                            <ul>
                                                <li>
                                                    <strong>주중스페셜관관람권</strong>
                                                    <span><span class="red">2</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중관람권</strong>
                                                    <span><span class="red">2</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중/주말관람권</strong>
                                                    <span><span class="red">10</span>
                                                        매</span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="type-separator">OR</div>
                                        <div class="type-wrapper">
                                            <span class="type-title"><b>B</b>형</span>
                                            <ul>
                                                <li>
                                                    <strong>주중스페셜관관람권</strong>
                                                    <span><span class="red">2</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중관람권</strong>
                                                    <span><span class="red">12</span>
                                                        매</span>
                                                </li>
                                                <li>
                                                    <strong>주중/주말관람권</strong>
                                                    <span><span class="red">2</span>
                                                        매</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="benefit">
                                        <h4 class="title">매점혜택
                                            <span>맛있는 매점 쿠폰</span>
                                        </h4>
                                        <ul>
                                            <li>
                                                <strong>팝콘M 교환권</strong>
                                                <span><span class="red">2</span>
                                                    매</span>
                                            </li>
                                            <li>
                                                <strong>스위트콤보
                                                    교환권</strong>
                                                <span><span class="red">1</span>
                                                    매</span>
                                            </li>
                                            <li>
                                                <strong>에이드 할인권</strong>
                                                <span><span class="red">2</span>
                                                    매</span>
                                            </li>
                                            <li>
                                                <strong>콤보4천원
                                                    할인권</strong>
                                                <span><span class="red">5</span>
                                                    매</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="benefit">
                                        <h4 class="title">기념일
                                            <span>내가 만드는 특별한 날 쿠폰</span>
                                        </h4>
                                        <ul>
                                            <li>
                                                <strong>스위트콤보
                                                    교환권</strong>
                                                <span><span class="red">1</span>
                                                    매</span>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="benefit-image-wrapper">
                            <a href="#" class="benefit-image">
                                <img src="/static/images/membership_benefit_image01.png" alt="">
                                <span class="image-number">혜택 01</span>
                                <span class="image-text">VIP회원의 기념일을<br>챙겨드려요</span>
                            </a>
                            <a href="#" class="benefit-image">
                                <img src="/static/images/membership_benefit_image02.png" alt="">
                                <span class="image-number">혜택 02</span>
                                <span class="image-text">VIP만을 위한 개봉작<br>시사회 초대</span>
                            </a>
                            <a href="#" class="benefit-image">
                                <img src="/static/images/membership_benefit_image03.png" alt="">
                                <span class="image-number">혜택 03</span>
                                <span class="image-text">티켓 결제금액 5%<br>L.Point 적립</span>
                            </a>
                        </div>
                        <div class="benefit-wrapper">
                            <h4 class="description-title">VIP 승급안내</h4>
                            <ul class="description-texts">
                                <li class="description-text">2022년 VIP 등급은 2022년 12월
                                    31일까지 유지됩니다.</li>
                                <li class="description-text">VIP 각 등급별 최저 기준 달성 시, 차년도
                                    다음 등급 또는 다음 연차로 순차적 승급됩니다. (등급 유지를 위한 기간 및 최소
                                    구매금액 상이)</li>
                                <li class="description-text">등급별 기준 미달 시 구매금액에 상응하는 하위
                                    등급의 1년차로 조정됩니다.</li>
                                <li class="description-text">정회원에 한하여 VIP 선정 가능하며, 온라인
                                    간편가입 회원의 경우 정회원 전환 후 혜택 이용 가능합니다.</li>
                                <li class="description-text">VIP 승급 기준 및 혜택은 변경될 수 있습니다.
                                </li>
                            </ul>
                        </div>
                        <div class="benefit-wrapper">
                            <h4 class="description-title">VIP 승급 금액 반영 안내</h4>
                            <ul class="description-texts">
                                <li class="description-text">VIP 승급금액이란 롯데시네마 티켓 구매를 통해
                                    누적되는 결제 금액으로써 매점 결제 금액은 제외됩니다.</li>
                                <li class="description-text">티켓 누적구매금액은 영화 관람일로부터 2~3일 후
                                    반영됩니다.
                                    <ul class="description-texts gray">
                                        <li class="description-text">온라인 예매 시 :
                                            예매하신 ID로 반영됩니다.</li>
                                        <li class="description-text">현장 결제 시 :
                                            회원 조회 기준으로 우선 반영되며, 회원 미조회 시에는
                                            L.POINT 적립 기준으로 반영됩니다.</li>
                                    </ul>
                                </li>
                                <li class="description-text">가족 카드로 조회 및 적립을 하신 경우, 가족
                                    카드 명의자에게 VIP 승급금액이 반영됩니다.</li>
                                <li class="description-text">법적 가족관계와 관계없이 VIP 승급금액 합산은
                                    불가합니다.</li>
                                <li class="description-text">관람권 사용 시 VIP 승급금액은 관람권
                                    판매금액으로 반영됩니다. (단, 프로모션 관람권 / 타 사이트 구매 관람권의 경우
                                    VIP 승급금액이 판매 금액과 상이할 수 있습니다.)</li>
                                <li class="description-text">관람권 판매금액보다 낮은 금액의 티켓 구매 시
                                    판매금액이 아닌 티켓 금액으로 VIP 승급금액이 반영됩니다. (예 : 조조, 문화의 날
                                    등)</li>
                                <span>다음의 [VIP 승급금액 미반영]되는 경우를 꼭 확인해주세요.</span>
                                <li class="description-text">현장 결제 시 L.POINT 카드를 제시하지 않아
                                    회원 조회 및 포인트 적립이 이루어지지 않은 경우</li>
                                <li class="description-text">기타 제휴 포인트를 사용하여 할인받은 금액
                                    (할인금액을 제외한 결제금액만 포함)</li>
                                <li class="description-text">동일 영화 6회 초과분에 대한 결제금액 (동일
                                    영화 6회까지의 결제금액은 포함)</li>
                                <li class="description-text">단체 영화관람을 통하여 가격 할인을 받은 경우
                                </li>
                                <li class="description-text">예매대행사 및 이동통신사를 통해 예매하신 경우
                                </li>
                                <li class="description-text">시사회, 초청 이벤트 등 실제 결제 금액이 없는
                                    경우</li>
                                <li class="description-text">비회원 예매 시, L.POINT 번호를 입력하지
                                    않으신 경우</li>
                            </ul>
                        </div>
                        <div class="benefit-wrapper">
                            <h4 class="description-title">VIP 쿠폰북 유의사항</h4>
                            <ul class="description-texts">
                                <strong>&lt;공통&gt;</strong>
                                <li class="description-text">VIP 쿠폰 및 이용권은 유효기간 내에서만 사용
                                    가능합니다. (영화 관람쿠폰의 경우 상영일 기준)</li>
                                <li class="description-text">주중은 월~금요일(공휴일 제외) / 주말은 토,
                                    일요일 및 공휴일을 뜻합니다.</li>
                                <li class="description-text">VIP 영화 관람권 및 매점 교환권 사용 시
                                    L.POINT 적립이 되지 않습니다.</li>
                                <li class="description-text">4천원 할인권의 경우 결제금액에 대해서만
                                    L.POINT 적립이 가능합니다.</li>
                                <li class="description-text">예매 및 구매 취소 후 쿠폰 재사용이 가능합니다.
                                </li>
                                <li class="description-text">환불 시 현금 및 지류 관람권으로 교환이
                                    불가합니다.</li>
                                <li class="description-text">VIP 혜택을 영리 목적으로 대가를 받고 판매 및
                                    양도하는 경우, 서비스 이용 제한 및 회원 자격이 정지 또는 상실될 수 있습니다.
                                </li>
                                <span>&lt;주중 스페셜관 관람권&gt;</span>
                                <li class="description-text">스페셜관 및 일반관에서 사용 가능합니다. (샤롯데
                                    및 씨네패밀리 제외)</li>
                                <span>&lt;주중 / 주중·주말 영화관람권&gt;</span>
                                <li class="description-text">2D 일반영화에 한하며, 3D 영화 및 스페셜관,
                                    스페셜 좌석에서는 사용되지 않습니다.</li>
                                <span>&lt;스위트샵(매점) 쿠폰&gt;</span>
                                <li class="description-text">영화관 스위트샵(매점)에서 오직 해당 상품으로만
                                    이용 가능합니다.</li>
                                <li class="description-text">&lt;4천원 할인권&gt;의 경우 영화관 사정에
                                    따라 사용 가능 콤보의 종류가 상이 할 수 있으며 이벤트 콤보에 대하여 사용이
                                    제한됩니다.</li>
                                <li class="description-text">일부 영화관에서는 현장에서 쿠폰 수령 후 매점에서
                                    해당 상품으로 교환 가능하며, VIP 혜택 외 다른 상품이 제공될 수 있습니다.
                                </li>
                                <span>&lt;기념일 쿠폰&gt;</span>
                                <li class="description-text">기념일 쿠폰은 &lt;스위트콤보
                                    교환권&gt;이며, 2022년 VIP 회원에게 제공됩니다.</li>
                                <li class="description-text">기념일은 오늘보다 미래의 날짜로만 지정이
                                    가능합니다. (당일지정 불가)</li>
                                <li class="description-text">지정하신 일자에 쿠폰이 발급되며, 유효기간은
                                    지급일로부터 30일입니다.</li>
                                <li class="description-text">유효기간 만료 시 재발행이 되지 않으니 유의하시기
                                    바랍니다.</li>
                                <li class="description-text">기념일로 지정이 가능한 날짜는 1월4일부터 12월
                                    2일까지입니다.</li>
                                <li class="description-text">반드시 12월 1일까지는 기념일을 등록하셔야 쿠폰
                                    발행이 가능합니다. (12월 1일 기념일 등록 시 12월 2일로 기념일 지정 및 쿠폰
                                    발행)</li>
                                <li class="description-text">기념일 일자는 쿠폰이 발행되기 전까지만 변경
                                    가능합니다. (발행 후 일자 변경 불가)</li>
                                <li class="description-text">발행된 쿠폰은 쿠폰함 &gt; VIP쿠폰에서 확인
                                    가능합니다.</li>
                                <li class="description-text">일부 영화관에서는 현장에서 쿠폰 수령 후 매점에서
                                    해당 상품으로 교환이 가능하며, 스위트콤보 외 다른 상품이 제공될 수 있습니다.
                                </li>
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
    <script src="/static/js/Membership/vip_zone.js"></script>
</body>

</html>