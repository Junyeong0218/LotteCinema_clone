<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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