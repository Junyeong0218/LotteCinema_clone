const banner_section = document.querySelector(".banner-section");
const under_main_banner = banner_section.querySelector(".under-main-banner");
const footer_banner = banner_section.querySelector(".footer-banner");
const footer_flexer = banner_section.querySelector(".banner-flexer");

function setUnderMainBanner() {
    const index = getRandomNumber(5);
    const imageTag = under_main_banner.querySelector("img");
    imageTag.src = `/static/images/under_main_banner_0${index + 1}.jpg`;
    if (index == 0) imageTag.alt = "신비한 동물들과 덤블도어의 비밀";
    else if (index == 1) imageTag.alt = "로스트 시티";
    else if (index == 2) imageTag.alt = "수퍼 소닉 2";
    else if (index == 3) imageTag.alt = "루이스 웨인";
    else imageTag.alt = "공기 살인";
}

function setFooterBanner() {
    const index = getRandomNumber(2);
    const imageTag = footer_banner.querySelector("img");
    imageTag.src = `/static/images/footer_banner_0${index + 1}.jpg`;
    if (index == 0) {
        imageTag.alt = "현대카드 푸터 배너";
        footer_flexer.style.backgroundColor = `rgb(0, 92, 185)`;
    } else {
        imageTag.alt = "현대해상 푸터 배너";
        footer_flexer.style.backgroundColor = `rgb(227, 230, 239)`;
    }
}