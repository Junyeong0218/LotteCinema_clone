<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="/static/css/container.css">
        <link rel="stylesheet" href="/static/css/member/join/join_header.css">
        <link rel="stylesheet" href="/static/css/member/join/join_footer.css">
        <link rel="stylesheet" href="/static/css/member/join/find_username.css">
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    </head>

    <body>
        <main class="container">
            <jsp:include page="/WEB-INF/templetes/member/header.jsp" />
            <div class="wrapper">
                <div class="toparea">
                    <h2 class="title">아이디 찾기</h2>
                    <div class="headline">
                        등록된 회원정보로<br>
                        아이디를 찾으실 수 있습니다.
                    </div>
                </div>
                <div class="content">
                    <div class="content-section">
                        <div class="underline"></div>
                        <div class="row">
                            <div class="colomn-menu-div">
                                <div class="ui-radio">
                                    <input type="radio" id="find-phone" name="find-way" data-code="1">
                                    <label for="find-phone">휴대폰 번호로 찾기</label>
                                </div>
                                <div id="find-phone-section" class="inner-content active">
                                    <div class="row">
                                        <div class="namebox">
                                            <label for="find-phone-name">이름</label>
                                        </div>
                                        <div class="ui-input">
                                            <input type="text" id="find-phone-name">
                                            <span class="placeholder">한글 또는 영문으로 입력해주세요.</span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="phonebox">
                                            <label for="find-phone-num">휴대폰 번호</label>
                                        </div>
                                        <div class="phone-wrap">
                                            <select name="telecom" id="find-phone-num-0" class="ui-select">
                                                <option value>선택</option>
                                                <option value="010">010</option>
                                                <option value="011">011</option>
                                                <option value="016">016</option>
                                                <option value="017">017</option>
                                                <option value="018">018</option>
                                                <option value="019">019</option>
                                            </select>
                                            <div class="middle-num">
                                                <input type="tel" id="find-phone-num-1" maxlength="4">
                                            </div>
                                            <div class="last-num">
                                                <input type="tel" id="find-phone-num-2" maxlength="4">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colomn-menu-div">
                                <div class="ui-radio">
                                    <input type="radio" id="find-email" name="find-way" data-code="2">
                                    <label for="find-email">이메일주소로 찾기</label>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="/WEB-INF/templetes/member/footer.jsp" />
        <script src="/static/js/member/join/footer_insite.js"></script>
    </body>

    </html>