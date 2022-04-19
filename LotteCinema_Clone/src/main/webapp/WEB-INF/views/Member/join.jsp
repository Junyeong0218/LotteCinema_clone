<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>본인인증 &lt; 회원가입 &lt; L.POINT</title>
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/Member/join/join-header.css">
    <link rel="stylesheet" href="/static/css/Member/join/join-footer.css">
    <link rel="stylesheet" href="/static/css/Member/join/join.css">
</head>

<body>
    <main class="container">
        <!-- header 자리 -->
        <jsp:include page="/WEB-INF/views/Member/join-header.jsp"></jsp:include>
        <div class="mast-body">
            <div class="mast-body-container">
                <div class="top-area">
                    <div class="title">
                        <span>회원가입</span>
                    </div>
                    <div class="headline">
                        <span>순식간에 가입하는</span><br>
                        <span>L.POINT :)</span>
                    </div>
                    <div class="inform-trigger">
                        <img src="/static/images/ico-inform.png">
                        <button type="button" class="active">L.POINT 안내</button>
                        <div class="announcement-bg">
                            <div id="announcement">
                                <div class="announcement-header">
                                    <div class="announcement-headline">
                                        <h1>L.POINT</h1>
                                        <h1>회원가입 안내</h1>
                                    </div>
                                </div>
                                <div class="announcement-contents">
                                    <div class="announcement-inform">
                                        <span>어디에서나 사용하기 편한 포인트!</span><br>
                                        <span>롯데그룹 기타 제휴사의 오프라인은 물론, 모바일&온라인에서도 간단한 비밀번호로 포인트 사용이 가능합니다.</span><br>
                                        <br>
                                        <br>
                                        <p>회원가입은 한번만!</p>
                                        <br>
                                        <br>
                                        <span>L.POINT 제휴사의 온라인 모바일에서 하나의 ID로 로그인이 가능합니다.</span>
                                    </div>
                                    <br>
                                    <br>
                                    <div class="announcement-inform-list">
                                        <div class="notify">
                                            <p>알려드립니다.</p>
                                        </div>
                                        <ol>
                                            <li>1.L.POINT 제휴사이트에서 회원가입을 하시거나, 제휴 매장에서 포인트 카드를 발급받으시면 L.POINT 서비스 이용이
                                                가능합니다.</li>
                                            <li>2.L.POINT 이용의 적립/사용에 대한 승인 및 정산을 위해서, 고객님께서 포인트 적립/사용한L.POINT제휴사에서만
                                                고객님 정보가 제공됩니다.</li>
                                            <li>3.고객님이 회원가입시 동이하신 경우에만,L.POINT제휴사의 마케팅 활동을 위해L.POINT제휴사에 고객님의 정보가
                                                제공됩니다.</li>
                                            <li>4.본인확인 수단이 없으신 경우,'개인 회원가입'에서 간편회원으로 가입할 수 있습니다.</li>
                                            <li>5.간편회원으로 가입하신 경우,L.POINT제휴사별 사이트 이용 정책에 따라 혜택이 다를 수 있습니다.</li>
                                        </ol>
                                    </div>
                                </div>
                                <div class="announcement-closer">
                                    <button type="button"><img src="/static/images/btn-modal-close.png"></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="top-certified">
                    <a href="/join/phone-certificate"><img src="/static/images/phone_logo.png"><span>휴대폰
                            인증</span></a>
                    <a href="/join/card-certificate"><img
                            src="/static/images/credit_card_logo.jpg"><span>카드 인증</span></a>
                </div>
                <div class="bottom-certified">
                    <a href="/join/email-certificate"><img src="/static/images/email_logo.jpg"
                            alt="이메일로고"><span>이메일
                            인증</span></a>
                    <p>이메일 인증을 통해 간편회원으로 가입 시 회원혜택이 제한됩니다.</p>
                </div>
                <div class="btn-wrap">
                    <button type="button">Foreigner</button>
                </div>
                <div class="description">
                    <p>-아동(만 14세 미만)은 본인인증 후 부모님(법정대리인)동의가 필요합니다.</p>
                    <p>-법인 명의 휴대폰 사용자는 통신사 지점 또는 대리점에 방문하여 법인명의 실사용자 등록 후 휴대폰 인증이 가능합니다.</p>
                </div>
            </div>
            <div class="cancellation-btn">
                <button type="button">취소</button>
            </div>
        </div>
    </main>
        <!-- footer 자리 -->
        <jsp:include page="/WEB-INF/views/Member/join-footer.jsp"></jsp:include>
    <script src="/static/js/Member/join/join.js"></script>
</body>

</html>