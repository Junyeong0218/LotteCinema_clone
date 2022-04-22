<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>본인인증 &lt; 회원가입 &lt; L.POINT</title>
    <link rel="stylesheet" href="/static/css/container.css">
    <link rel="stylesheet" href="/static/css/member/join/join_header.css">
    <link rel="stylesheet" href="/static/css/member/join/join_footer.css">
    <link rel="stylesheet" href="/static/css/member/join/certificate_header.css">
    <link rel="stylesheet" href="/static/css/member/join/certificate_footer.css">
    <link rel="stylesheet" href="/static/css/member/join/email_certificate.css">
</head>

<body>
    <main class="container">
    
    	<!-- header -->
         <jsp:include page="/WEB-INF/templetes/member/header.jsp" />

        <!-- certificate 작업 필요 -->
        <div class=" mast-body">
            <div class="main-container">
                <div class="main-toparea">
                    <h2 class="main-title">
                        <span>회원가입</span>
                    </h2>
                    <div class="step-image">
                        <img src="/static/images/img-step.png" alt="스텝 이미지">
                    </div>
                    <div class="main-headline">
                        <span>필수 약관에</span><br>
                        <span>동의 해주세요 :)</span>
                    </div>
                </div>
                <div class="main-contents">
                    <div class="main-terms">
                        <span>약관</span>
                    </div>
                    <div class="general-agreement">
                        <button type="button" class="general-agreement-checkbox">
                        	<img class="checkbox" src="/static/images/radio_button_img.png" alt="전체동의 체크 박스">
                        </button>
                        <label for="general-agreement">전체동의</label>
                    </div>
                    <div class="lpoint-checkbox">
                        <div class="text-lpoint">L.POINT</div>
                        <div class="form-wrap-agreement">
                            <div class="inner">
                                <div class="ui-wrap">
                                    <div class="ui-check">
                                        <button type="button" class="general-agreement-checkbox">
                                        	<img class="checkbox" src="/static/images/radio_button_img.png" alt="">
                                        </button>
                                        <label for="ui-check" class="ui-check-label">L.POINT 회원약관 
                                            <span>(필수)</span>
                                        </label>
                                    </div>
                                    <div class="detail">
                                        <button type="button">자세히</button>
                                    </div>
                                </div>
                            </div>
                            <div class="inner">
                                <div class="ui-wrap">
                                    <div class="ui-check">
                                        <button type="button" class="general-agreement-checkbox">
                                        	<img class="checkbox" src="/static/images/radio_button_img.png" alt="">
                                        </button>
                                        <label for="ui-check" class="ui-check-label">개인정보의 필수적인 사항에 대한 수집 이용 동의 
                                            <span>(필수)</span>
                                        </label>
                                    </div>
                                    <div class="detail">
                                        <button type="button">자세히</button>
                                    </div>
                                </div>
                            </div>
                            <div class="inner">
                                <div class="ui-wrap">
                                    <div class="ui-check">
                                        <button type="button" class="general-agreement-checkbox">
                                        	<img class="checkbox" src="/static/images/radio_button_img.png" alt="">
                                        </button>
                                        <label for="ui-check" class="ui-check-label">개인정보의 선택적인 사항에 대한 수집 이용 동의 
                                            <span class="choice-checkbox">(선택)</span>
                                        </label>
                                    </div>
                                    <div class="detail">
                                        <button type="button">자세히</button>
                                    </div>
                                </div>
                            </div>
                            <div class="inner">
                                <div class="ui-wrap">
                                    <div class="ui-check">
                                        <button type="button" class="general-agreement-checkbox">
                                        	<img class="checkbox" src="/static/images/radio_button_img.png" alt="">
                                        </button>
                                        <label for="ui-check" class="ui-check-label">개인정보의 필수적인 제3자 제공에 대한 동의 
                                        	<span>(필수)</span>
                                        </label>
                                    </div>
                                    <div class="detail">
                                        <button type="button">자세히</button>
                                    </div>
                                </div>
                            </div>
                            <div class="inner">
                                <div class="ui-wrap">
                                    <div class="ui-check">
                                        <button type="button" class="general-agreement-checkbox">
                                        	<img class="checkbox" src="/static/images/radio_button_img.png" alt="">
                                        </button>
                                        <label for="ui-check" class="ui-check-label">개인정보의 선택적인 제3자 제공에 대한 동의 
                                        	<span class="choice-checkbox">(선택)</span>
                                        </label>
                                    </div>
                                    <div class="detail">
                                        <button type="button">자세히</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="lotte-cultureworks">
                        <div class="text-lpoint">롯데컬처웍스</div>
                        <div class="inner">
                            <div class="ui-wrap">
                                <div class="ui-check">
                                    <button type="button" class="general-agreement-checkbox">
                                    	<img class="checkbox" src="/static/images/radio_button_img.png" alt="">
                                    </button>
                                    <label for="ui-check" class="ui-check-label">롯데컬처웍스 회원사 약관 
                                    	<span>(필수)</span>
                                    </label>
                                </div>
                                <div class="detail">
                                    <button type="button">자세히</button>
                                </div>
                            </div>
                        </div>
                        <div class="inner">
                            <div class="ui-wrap">
                                <div class="ui-check">
                                    <button type="button" class="general-agreement-checkbox">
                                    	<img class="checkbox" src="/static/images/radio_button_img.png" alt="">
                                    </button>
                                    <label for="ui-check" class="ui-check-label">필수입력정보 수집동의서 
                                    	<span>(필수)</span>
                                    </label>
                                </div>
                                <div class="detail">
                                    <button type="button">자세히</button>
                                </div>
                            </div>
                        </div>
                        <div class="inner">
                            <div class="ui-wrap">
                                <div class="ui-check">
                                    <button type="button" class="general-agreement-checkbox">
                                    	<img class="checkbox" src="/static/images/radio_button_img.png" alt="">
                                    </button>
                                    <label for="ui-check" class="ui-check-label">선택입력정보 수집동의서 <span
                                            class="choice-checkbox">(선택)</span></label>
                                </div>
                                <div class="detail">
                                    <button type="button">자세히</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="description">
                        <p>- 선택약관에 동의하지 않으셔도 회원가입이 가능합니다.</p><br>
                        <p>- L.POINT 선택약관에 동의하지 않으시면 L.POINT 모든 제휴사에서 회원 혜택이 제한됩니다.<br>
                        </p>
                        <p class="description-text"> 1) 롯데백화점 MVG등 제휴사 회원등급 선정 및 추가포인트 적립 대상에서 제외<br>
                            2)롯데마트 등 쿠폰 지급 대상에서 제외<br>
                            3)모든 제휴사 이벤트 당첨대상에서 제외</p>
                    </div>
                    <div>

                    </div>
                </div>
            </div>
        </div>
    </main>
    <div class="btn-center">
        <button type="button">취소</button>
        <button type="button">다음으로</button>
    </div>
    
    <!-- footer -->
    <jsp:include page="/WEB-INF/templetes/member/footer.jsp" />
    
    <script src="/static/js/member/join/email_certificate.js"></script>
    <script src="/static/js/member/join/footer_insite.js"></script>
</body>

</html>