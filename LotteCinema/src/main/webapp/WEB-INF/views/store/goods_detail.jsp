<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스토어 상세 - 롯데시네마</title>
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/store/header.css">
    <link rel="stylesheet" href="/static/css/store/aside_bar.css">
    <link rel="stylesheet" href="/static/css/store/banner_section.css">
    <link rel="stylesheet" href="/static/css/store/usable_theater.css">
    <link rel="stylesheet" href="/static/css/store/detail.css">
    <link rel="stylesheet" href="/static/css/store/footer.css">
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
        
        <!-- usable_theather_modal -->
        <jsp:include page="/WEB-INF/templetes/usable_theater_modal.jsp" />
        
		<!-- side_banner -->
        <jsp:include page="/WEB-INF/templetes/side_banner.jsp" />
        
        <!-- banner_section -->
        <jsp:include page="/WEB-INF/templetes/banner_section.jsp" />
        
        <!-- footer -->
        <jsp:include page="/WEB-INF/templetes/footer.jsp" />
        
    </div>
    
    <script src="/static/js/store/nav_control.js"></script>
    <script src="/static/js/store/scroll_control.js"></script>
    <script src="/static/js/store/footer_banner_control.js"></script>
    <script src="/static/js/store/change_description_tab.js"></script>
    <script src="/static/js/store/store_detail_window_control.js"></script>
</body>

</html>