<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <title>스토어 상세 - 롯데시네마</title>
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/header.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/aside_bar.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/banner_section.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/usable_theater.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/detail.css">
    <link rel="stylesheet" href="/static/css/CinemaMall/footer.css">
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
                <div class="product-wrapper">
                    <div class="product-image">
                        <img src="/static/images/store_detail_item_date_combo.jpg" alt="2인 콤보">
                    </div>
                    <div class="product-detail">
                        <table class="detail-table">
                            <colgroup>
                                <col style="width: 30%;">
                                <col style="width: auto;">
                            </colgroup>
                            <tr>
                                <th colspan="2" class="table-title">데이트의 완성 2인 패키지</th>
                            </tr>
                            <tr>
                                <td>
                                    <span class="discount-ratio">12%</span>
                                </td>
                                <td>
                                    <span class="discounted-price">27,000원</span>
                                    <span class="origin-price">31,000원</span>
                                </td>
                            </tr>
                            <tr>
                                <th>구성품</th>
                                <td>2D 일반관람권 2매 + 스위트콤보</td>
                            </tr>
                            <tr>
                                <th>구매제한</th>
                                <td>제한없음</td>
                            </tr>
                            <tr>
                                <th>유효기간</th>
                                <td>온라인 관람권 24 개월 / 스위트샵 상품권 24 개월
                                </td>
                            </tr>
                            <tr>
                                <th>사용가능 영화관</th>
                                <td>
                                    <button type="button" class="popup-button">온라인
                                        관람권</button>
                                    <button type="button" class="popup-button">스위트샵
                                        상품권</button>
                                </td>
                            </tr>
                        </table>
                        <div class="quantity-wrapper">
                            <button type="button" class="reduce-button"></button>
                            <span class="quantity">1</span>
                            <button type="button" class="increase-button"></button>
                        </div>
                        <div class="total-price">
                            <span>총 상품금액</span>
                            <strong>27,000</strong>
                            <span>원</span>
                        </div>
                        <div class="buy-buttons">
                            <button type="button">선물하기</button>
                            <button type="button">구매하기</button>
                        </div>
                    </div>
                </div>
                <div class="product-description-wrapper">
                    <ul class="description-buttons">
                        <li class="active">
                            <button type="button" class="description-button">사용방법</button>
                        </li>
                        <li>
                            <button type="button" class="description-button">유의사항</button>
                        </li>
                    </ul>
                    <div class="descriptions">
                        <div class="description active">
                            <h5 class="description-title">사용방법</h5>
                            <span class="common-line margin-top-0">- 구성 : 2D일반관람권 2매
                                + 스위트콤보 교환권
                                1매</span>
                            <span class="common-line">- 유효기간 : 구매일 ~ 24개월(관람일
                                기준)</span>
                            <span class="common-line">- 영화관람권은 2D 일반영화에만 적용
                                가능합니다.<br>(스페셜관 및 좌석에 적용 불가/ 영화관람권은 L.point적립
                                불가, 관람권
                                사용 시
                                VIP 승급금액은 관람권 판매금액으로 반영)</span>
                            <span class="common-line">- 팝콘 : 오리지널맛 제공(시즈닝 변경 시 금액
                                추가) / 음료 : 탄산음료 제공(기타
                                음료 및 사이즈 변경 시 금액 추가)</span>
                            <span class="common-line">- 매점 교환권의 경우 아래 사용불가 영화관을
                                확인해주시기 바랍니다.</span>
                            <span class="common-line margin-bottom-0">사용불가
                                영화관</span>
                            <span>ㆍ서울/강원: 강동, 남원주, 브로드웨이, 장안, 중랑, 춘천</span>
                            <span>ㆍ경기/인천: 부천역, 양주고읍, 영종하늘도시, 오산(원동), 평택비전</span>
                            <span>ㆍ대전/충청: 서산, 충주, 당진</span>
                            <span>ㆍ전라/광주: 광주광산, 익산모현, 충장로</span>
                            <span>ㆍ경북/대구: 대구범어, 대구현풍, 상주, 영주, 프리미엄구미센트럴, 프리미엄만경,
                                프리미엄안동, 프리미엄칠곡</span>
                            <span>ㆍ경남/부산/울산: 거창, 마산(합성동), 사천, 엠비씨네(진주), 통영, 프리미엄경남대,
                                프리미엄진주, 프리미엄해운대</span>
                            <span>ㆍ제주: 서귀포, 제주삼화, 제주아라</span>
                            <span class="common-line">※ 사용불가 영화관은 롯데시네마 사정에 의해 변경될 수
                                있습니다.</span>
                        </div>
                        <div class="description">
                            <h5 class="description-title">취소/환불</h5>
                            <span class="common-line margin-top-0">- 스토어 상품의 취소기한은 구매일로부터
                                70일 입니다.</span>
                            <span class="common-line">- 구매취소는 취소기한 내 마이 > 예매/구매내역에서만
                                가능합니다.(현장취소 불가)</span>
                            <span class="common-line">- 구매하신 상품은 부분환불 및 현금환불이 되지
                                않습니다.</span>
                            <span class="common-line">- 패키지 상품 중 1장이라도 사용한 경우 환불이
                                불가합니다.</span>
                            <h5 class="description-title">기타</h5>
                            <span class="common-line">- 상품 확인은 마이 > 쿠폰함에서 가능합니다.</span>
                            <span class="common-line">- 영화관람권은 롯데시네마 홈페이지, 모바일 웹/앱에서 사용가능하며,
                                매점교환권은 롯데시네마 스위트샵 (매점)에서 쿠폰 제시 후 사용가능합니다.</span>
                            <span class="common-line">- 선물한 상품은 마이 > 결제내역 > 구매/선물내역 메뉴에서 30일
                                내 1회 재발송가능합니다. (단, 받는 사람 번호는 변경 불가)</span>
                            <span class="common-line">- 본 관람권은 기재된 유효기간까지 (관람일 기준) 사용할 수
                                있습니다.</span>
                            <span class="common-line">- 유효기간 만료 시 고객센터(1544-8855)를 통해 발급일로부터
                                5년까지 연장할 수 있으며, 1회 연장 시 단위는 3개월입니다.</span>
                            <span class="common-line">※고객센터: 1544-8855</span>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <div class="usable-theater">
            <div class="theater-wrapper">
                <div class="usable-theater-title">
                    <span>사용가능 영화관</span>
                    <button class="usable-theater-closer"></button>
                </div>
                <div class="usable-theater-contents">
                    <ul>
                        <li class="theater-regions active">
                            <button type="button" class="region-selector">서울시</button>
                            <div class="regions">
                                <span class="region">가산디지털</span>
                                <span class="region">건대입구</span>
                                <span class="region">김포공항</span>
                                <span class="region">노원</span>
                                <span class="region">도곡</span>
                                <span class="region">독산</span>
                                <span class="region">서울대입구</span>
                                <span class="region">신도림</span>
                                <span class="region">신림</span>
                                <span class="region">에비뉴엘(명동)</span>
                                <span class="region">영등포</span>
                                <span class="region">용산</span>
                                <span class="region">월드타워</span>
                                <span class="region">은평(롯데몰)</span>
                                <span class="region">청량리</span>
                                <span class="region">합정</span>
                                <span class="region">홍대입구</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">부산시</button>
                            <div class="regions">
                                <span class="region">광복</span>
                                <span class="region">대영</span>
                                <span class="region">동래</span>
                                <span class="region">동부산아울렛</span>
                                <span class="region">드라이브 오시리아</span>
                                <span class="region">부산명지</span>
                                <span class="region">부산본점</span>
                                <span class="region">서면(전포동)</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">경기도</button>
                            <div class="regions">
                                <span class="region">광교아울렛</span>
                                <span class="region">광명(광명사거리)</span>
                                <span class="region">광명아울렛</span>
                                <span class="region">광주터미널</span>
                                <span class="region">구리아울렛</span>
                                <span class="region">동탄</span>
                                <span class="region">라페스타</span>
                                <span class="region">마석</span>
                                <span class="region">별내</span>
                                <span class="region">병점</span>
                                <span class="region">부천(신중동역)</span>
                                <span class="region">부천역</span>
                                <span class="region">부평</span>
                                <span class="region">부평역사</span>
                                <span class="region">북수원(천천동)</span>
                                <span class="region">산본피트인</span>
                                <span class="region">서수원</span>
                                <span class="region">성남중앙(신흥역)</span>
                                <span class="region">센트럴락</span>
                                <span class="region">송탄</span>
                                <span class="region">수원(수원역)</span>
                                <span class="region">수지</span>
                                <span class="region">시화</span>
                                <span class="region">시흥장현</span>
                                <span class="region">안산</span>
                                <span class="region">안산고잔</span>
                                <span class="region">안성</span>
                                <span class="region">안양(안양역)</span>
                                <span class="region">안양일번가</span>
                                <span class="region">양주고읍</span>
                                <span class="region">영종하늘도시</span>
                                <span class="region">오산(원동)</span>
                                <span class="region">용인기흥</span>
                                <span class="region">용인역북</span>
                                <span class="region">위례</span>
                                <span class="region">의정부민락</span>
                                <span class="region">인덕원</span>
                                <span class="region">인천아시아드</span>
                                <span class="region">인천터미널</span>
                                <span class="region">주엽</span>
                                <span class="region">진접</span>
                                <span class="region">파주운정</span>
                                <span class="region">판교(창조경제밸리)</span>
                                <span class="region">평촌(범계역)</span>
                                <span class="region">평택비전(뉴코아)</span>
                                <span class="region">하남미사</span>
                                <span class="region">향남</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">충청남도</button>
                            <div class="regions">
                                <span class="region">당진</span>
                                <span class="region">서산</span>
                                <span class="region">아산터미널</span>
                                <span class="region">천안불당</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">충청북도</button>
                            <div class="regions">
                                <span class="region">서청주(아울렛)</span>
                                <span class="region">청주용암</span>
                                <span class="region">충주(모다아울렛)</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">경상남도</button>
                            <div class="regions">
                                <span class="region">거창</span>
                                <span class="region">김해부원</span>
                                <span class="region">김해아울렛(장유)</span>
                                <span class="region">마산(합성동)</span>
                                <span class="region">사천</span>
                                <span class="region">양상물금</span>
                                <span class="region">엠비씨네(진주)</span>
                                <span class="region">진주혁신(롯데몰)</span>
                                <span class="region">진해</span>
                                <span class="region">창원</span>
                                <span class="region">통영</span>
                                <span class="region">프리미엄경남대</span>
                                <span class="region">프리미엄진주(중안)</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">경상북도</button>
                            <div class="regions">
                                <span class="region">경산</span>
                                <span class="region">경주</span>
                                <span class="region">경주황성</span>
                                <span class="region">구미공단</span>
                                <span class="region">상주</span>
                                <span class="region">영주</span>
                                <span class="region">영천</span>
                                <span class="region">포항</span>
                                <span class="region">프리미엄구미센트럴</span>
                                <span class="region">프리미엄안동</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">대구시</button>
                            <div class="regions">
                                <span class="region">대구광장</span>
                                <span class="region">대구율하</span>
                                <span class="region">대구현풍</span>
                                <span class="region">동성로</span>
                                <span class="region">상인</span>
                                <span class="region">성서</span>
                                <span class="region">프리미엄만경</span>
                                <span class="region">프리미엄칠곡</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">대전시</button>
                            <div class="regions">
                                <span class="region">대전(백화점)</span>
                                <span class="region">대전관저</span>
                                <span class="region">대전둔산(월평동)</span>
                                <span class="region">대전센트럴</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">울산시</button>
                            <div class="regions">
                                <span class="region">울산(백화점)</span>
                                <span class="region">울산성남</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">광주시</button>
                            <div class="regions">
                                <span class="region">광주(백화점)</span>
                                <span class="region">광주광산</span>
                                <span class="region">수완(아울렛)</span>
                                <span class="region">충장로</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">전라북도</button>
                            <div class="regions">
                                <span class="region">군산나운</span>
                                <span class="region">군산몰</span>
                                <span class="region">익산모현</span>
                                <span class="region">전주(백화점)</span>
                                <span class="region">전주송천</span>
                                <span class="region">전주평화</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">제주도</button>
                            <div class="regions">
                                <span class="region">서귀포</span>
                                <span class="region">제주삼화지구</span>
                                <span class="region">제주아라</span>
                            </div>
                        </li>
                        <li class="theater-regions">
                            <button type="button" class="region-selector">강원도</button>
                            <div class="regions">
                                <span class="region">남원주</span>
                                <span class="region">동해</span>
                                <span class="region">속초</span>
                                <span class="region">원주무실</span>
                                <span class="region">춘천</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="side-banner-wrapper" style="top: 441px;">
            <img src="" alt="">
            <span class="side-banner-closer"></span>
        </div>
        <jsp:include page="/WEB-INF/views/banner_section.jsp" flush="false"/>
        <jsp:include page="/WEB-INF/views/footer.jsp" flush="false"/>
    </div>
    <script src="/static/js/CinemaMall/nav_control.js"></script>
    <script src="/static/js/CinemaMall/scroll_control.js"></script>
    <script src="/static/js/CinemaMall/footer_banner_control.js"></script>
    <script src="/static/js/CinemaMall/change_description_tab.js"></script>
    <script src="/static/js/CinemaMall/store_detail_window_control.js"></script>
</body>

</html>