<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>본인인증 &lt; 회원가입 &lt; L.POINT</title>
        <link rel="stylesheet" href="/static/css/container.css">
        <link rel="stylesheet" href="/static/css/Member/join/join-header.css">
        <link rel="stylesheet" href="/static/css/Member/join/join-footer.css">
        <link rel="stylesheet" href="/static/css/Member/join/certificate-footer.css">
        <link rel="stylesheet" href="/static/css/Member/join/certificate.css">
    </head>

    <body>
        <main class="container">
            <jsp:include page="/WEB-INF/views/Member/join-header.jsp"></jsp:include>
            <!-- certificate 작업 필요 -->
            <div class=" mast-body">
                <div class="main-container">
                    <div class="main-toparea">
                        <h2 class="main-title">
                            <span>회원가입</span>
                        </h2>
                        <div class="main-headline">
                            <span>회원가입을 위해</span><br>
                            <span>휴대폰 본인 인증해주세요.</span>
                        </div>
                    </div>
                    <div class="main-contents">
                        <div class="consent">
                            <div class="phone-check">

                                <button type="button"><img src="/static/images/radio_button_img.png" alt=""></button>
                                <label for="phone-check">휴대폰 본인확인 전체동의</label>
                            </div>
                            <div class="compulsory-consent">
                                <div class="check-box-wrapper">
                                    <button type="button" class="check-box"><img
                                            src="/static/images/radio_button_img.png" alt=""></button>
                                    <label for="compulsory-consent">개인정보 이용 동의(필수)</label>
                                </div>
                                <button type="button">자세히</button>
                                <div class="check-box-wrapper">
                                    <button type="button" class="check-box"><img
                                            src="/static/images/radio_button_img.png" alt=""></button>
                                    <label for="compulsory-consent">고유식별 정보 처리 동의</label>

                                </div>
                                <button type="button">자세히</button>
                            </div>
                            <div class="compulsory-consent">
                                <div class="check-box-wrapper">
                                    <button type="button" class="check-box"><img
                                            src="/static/images/radio_button_img.png" alt=""></button>
                                    <label for="compulsory-consent">서비스 이용약관 동의(필수)</label>
                                </div>
                                <button type="button">자세히</button>

                                <div class="check-box-wrapper">
                                    <button type="button" class="check-box"><img
                                            src="/static/images/radio_button_img.png" alt=""></button>
                                    <label for="compulsory-consent">통신사 이용약관 동의(필수)</label>
                                </div>
                                <button type="button">자세히</button>
                            </div>

                        </div>
                        <div class="input-box">
                            <h3 class="input-underline">인증정보 입력</h3>
                            <div class="personal-data">
                                <div class="name">
                                    <label for="name">이름</label>
                                </div>
                                <div class="input-name">
                                    <input name="name" placeholder="한글 또는 영문으로 입력해주세요.">
                                </div>
                            </div>
                            <div class="personal-data">
                                <div class="name">
                                    <label for="text">생년월일/성별</label>
                                </div>
                                <div class="input-date-ft">
                                    <input type="text" placeholder="생년월일을 입력해주세요.">
                                </div>
                                <span class="hyphen">-</span>
                                <div class="input-date-bk">
                                    <input type="text">
                                </div>
                                <div class="registration-number">
                                    <span>●●●●●●</span>
                                </div>
                            </div>
                            <div class="personal-data">
                                <div class="name">
                                    <label for="text">휴대폰 번호</label>
                                </div>
                                <div class="input-nb">
                                    <select name="telecom">
                                        <option value="SKT">SKT</option>
                                        <option value="KT">KT</option>
                                        <option value="LGU+">LGU+</option>
                                        <option value="SKT알뜰폰">SKT알뜰폰</option>
                                        <option value="KT알뜰폰">KT알뜰폰</option>
                                        <option value="LGU+알뜰폰">LGU+알뜰폰</option>
                                    </select>
                                    <select name="first-number">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>
                                    <input type="text" name="middle-number">
                                    <span class="hyphen">-</span>
                                    <input type="text" name="last-number">
                                </div>
                            </div>
                            <div class="terms">
                                <span>-휴대폰 본인확인 시 타인 명의를 도용할 경우, "정보통신망법 제 49조"에 의거하여 5년 이하의 징역 또는 5천만원 이하의 벌금에
                                    처할 수
                                    있습니다.</span>
                            </div>
                        </div>
                        <div class="btn-center">
                            <button type="button">취소</button>
                            <button type="button">인증 요청</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="/WEB-INF/views/Member/join-footer.jsp"></jsp:include>
        <script src="/static/js/Member/join/certificate.js"></script>
    </body>

    </html>