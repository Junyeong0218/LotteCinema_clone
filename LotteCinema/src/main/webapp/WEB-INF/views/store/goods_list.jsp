<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스토어 목록 - 롯데시네마</title>
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/store/main.css">
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
            <div class="top-image">
                <img src="/static/images/store_top_image.png" alt="스토어 메인 이미지">
            </div>
            <div id="contents">
                <ul class="tab-wrapper">
                    <li><a href="#best" class="tab tab-active">베스트</a></li>
                    <li><a href="#photo-card" class="tab">포토카드</a></li>
                    <li><a href="#tickets" class="tab">관람권</a></li>
                    <li><a href="#snacks" class="tab">스낵음료</a></li>
                </ul>
                <div class="tab-links">
                    <div id="best" class="content">
                        <h3 class="content-title">베스트</h3>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_date_combo.jpg" alt="데이트의 완성 2인 패키지" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">데이트의 완성 2인 패키지</span>
                                <span class="item-description">2D 일반관람권 2매 +
                                    스위트콤보</span>
                                <div class="item-price">
                                    <span class="item-sale-ratio">12%</span>
                                    <span class="discounted-price">27,000원</span>
                                    <span class="origin-price">31,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_common_ticket.jpg" alt="일반 관람권" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">일반 관람권</span>
                                <span class="item-description">일반 관람권 1매</span>
                                <div class="item-price">
                                    <span class="discounted-price">11,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_1person_combo.jpg" alt="혼자 영화 볼 때 1인 패키지" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">혼자 영화 볼 때 1인 패키지</span>
                                <span class="item-description">2D 일반 관람권 1매 +
                                    싱글콤보</span>
                                <div class="item-price">
                                    <span class="item-sale-ratio">5%</span>
                                    <span class="discounted-price">16,000원</span>
                                    <span class="origin-price">17,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_shalotte_giftcard.jpg" alt="샤롯데 관람권" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">샤롯데 관람권</span>
                                <span class="item-description">샤롯데 관람권 1매</span>
                                <div class="item-price">
                                    <span class="discounted-price">35,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_colorium_ticket.jpg" alt="컬러리움 관람권" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">컬러리움 관람권</span>
                                <span class="item-description">컬러리움 관람권 1매</span>
                                <div class="item-price">
                                    <span class="discounted-price">13,000원</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div id="photo-card" class="content">
                        <h3 class="content-title">포토카드</h3>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_photo_card.png" alt="포토카드(일반)" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">포토카드(일반)</span>
                                <span class="item-description"></span>
                                <div class="item-price">
                                    <span class="discounted-price">1,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_sanrio_photo_card.png" alt="산리오 캐릭터즈 포토카드" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">산리오 캐릭터즈 포토카드</span>
                                <span class="item-description">카드 앞면은 산리오 캐릭터즈 템플릿 선택과
                                    나만의 사진 추가, 뒷면은 원하는 문구를 입력할 수 있습니다 (판매 및 꾸미기 기간 :
                                    4/1~4/30까지)</span>
                                <div class="item-price">
                                    <span class="discounted-price">2,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_whosfan_photo_card.png" alt="[Whosfan] 전국 생일 자랑 - 에이티즈 성화"
                                class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">[Whosfan] 전국 생일 자랑 - 에이티즈
                                    성화</span>
                                <span class="item-description">글로벌 케이팝 팬덤 플랫폼
                                    'Whosfan'에서 진행한 '전국 생일 자랑' 투표에서 1위를 차지한 에이티즈 성화의
                                    생일 포토카드 프레임입니다. 카드 앞면은 나만의 사진 추가, 뒷면은 원하는 문구를
                                    입력할 수
                                    있습니다.(판매 및 꾸미기 기간: 4/1~4/15)</span>
                                <div class="item-price">
                                    <span class="discounted-price">2,000원</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div id="tickets" class="content">
                        <h3 class="content-title">관람권</h3>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_common_ticket.jpg" alt="일반 관람권" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">일반 관람권</span>
                                <span class="item-description">일반 관람권 1매</span>
                                <div class="item-price">
                                    <span class="discounted-price">11,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_super3_ticket.jpg" alt="수퍼 3종 관람권" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">수퍼 3종 관람권</span>
                                <span class="item-description">수퍼 3종 관람권 1매<br>
                                    (2D, 3D, 수퍼4D, 수퍼S, 수퍼플렉스G, 수퍼플렉스 사용가능)</span>
                                <div class="item-price">
                                    <span class="discounted-price">15,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_colorium_ticket.jpg" alt="컬러리움 관람권" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">컬러리움 관람권</span>
                                <span class="item-description">컬러리움 관람권 1매</span>
                                <div class="item-price">
                                    <span class="discounted-price">13,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_shalotte_giftcard.jpg" alt="샤롯데 관람권" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">샤롯데 관람권</span>
                                <span class="item-description">샤롯데 관람권 1매</span>
                                <div class="item-price">
                                    <span class="discounted-price">35,000원</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div id="snacks" class="content">
                        <h3 class="content-title">스낵음료</h3>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_sweet_combo.jpg" alt="스위트콤보" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">스위트콤보</span>
                                <span class="item-description">오리지널L + 탄산음료M2</span>
                                <div class="item-price">
                                    <span class="discounted-price">9,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_double_combo.jpg" alt="더블콤보" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">더블콤보</span>
                                <span class="item-description">카라멜팝콘M+오리지널팝콘M+탄산음료M2</span>
                                <div class="item-price">
                                    <span class="discounted-price">13,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_instant_squid_combo.jpg" alt="즉석구이콤보" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">즉석구이콤보</span>
                                <span class="item-description">카라멜팝콘M+즉석구이(몸통or다리)+탄산음료M2</span>
                                <div class="item-price">
                                    <span class="discounted-price">13,500원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_coke_M.jpg" alt="콜라 M" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">콜라 M</span>
                                <span class="item-description">콜라 M</span>
                                <div class="item-price">
                                    <span class="discounted-price">2,500원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_coke_L.jpg" alt="콜라 L" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">콜라 L</span>
                                <span class="item-description">콜라 L</span>
                                <div class="item-price">
                                    <span class="discounted-price">3,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_sider_M.jpg" alt="사이다 M" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">사이다 M</span>
                                <span class="item-description">사이다 M</span>
                                <div class="item-price">
                                    <span class="discounted-price">2,500원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_sider_L.jpg" alt="사이다 L" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">사이다 L</span>
                                <span class="item-description">사이다 L</span>
                                <div class="item-price">
                                    <span class="discounted-price">3,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_original_popcorn_M.jpg" alt="오리지널팝콘 M" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">오리지널팝콘 M</span>
                                <span class="item-description">오리지널팝콘 M</span>
                                <div class="item-price">
                                    <span class="discounted-price">4,500원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_original_popcorn_L.jpg" alt="오리지널팝콘 L" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">오리지널팝콘 L</span>
                                <span class="item-description">오리지널팝콘 L</span>
                                <div class="item-price">
                                    <span class="discounted-price">5,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_caramel_popcorn_M.jpg" alt="카라멜팝콘 M" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">카라멜팝콘 M</span>
                                <span class="item-description">카라멜팝콘 M</span>
                                <div class="item-price">
                                    <span class="discounted-price">5,500원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_caramel_popcorn_L.jpg" alt="카라멜팝콘 L" class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">카라멜팝콘 L</span>
                                <span class="item-description">카라멜팝콘 L</span>
                                <div class="item-price">
                                    <span class="discounted-price">6,000원</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="content-item">
                            <img src="/static/images/store_item_caramel_original_popcorn_L.jpg" alt="반반팝콘(오리지널/카라멜) L"
                                class="item-image">
                            <div class="item-wrapper">
                                <div class="badge-wrapper"></div>
                                <span class="item-title">반반팝콘(오리지널/카라멜) L</span>
                                <span class="item-description">반반팝콘(오리지널/카라멜) L</span>
                                <div class="item-price">
                                    <span class="discounted-price">6,000원</span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
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
    <script src="/static/js/store/tab_scroll_control.js"></script>
    <script src="/static/js/store/store_list_window_control.js"></script>
</body>

</html>