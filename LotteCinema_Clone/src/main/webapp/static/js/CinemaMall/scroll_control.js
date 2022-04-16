const header = document.querySelector("header");
const top_image = document.querySelector(".top-image");
const contents = document.querySelector("#contents");
const aside = document.querySelector("aside");
const side_banner = document.querySelector(".side-banner-wrapper");
let top_banner_height;

function setSideBanner() {
    const index = getRandomNumber(5);
    const imageTag = side_banner.querySelector("img");
    imageTag.src = `/images/side_banner_0${index + 1}.png`;
    if (index == 0) imageTag.alt = "신비한 동물들과 덤블도어의 비밀";
    else if (index == 1) imageTag.alt = "로스트 시티";
    else if (index == 2) imageTag.alt = "수퍼 소닉 2";
    else if (index == 3) imageTag.alt = "루이스 웨인";
    else imageTag.alt = "공기 살인";
}

function detectTopBannerHeight() {
    top_banner_height = document.querySelector(".top-banner").className.includes("hidden") ? 0 : 80;
}

function readjustAsideTop() {
    detectTopBannerHeight();
    aside.style.top = 115 + top_banner_height + "px";
}

function fixControlForHeader(event) {
    const scroll_y = event.path[1].scrollY;
    if (scroll_y > 50) {
        if (top_image != null)
            top_image.style.top = "120px";
        contents.style.marginTop = "120px";
        header.classList.add("fixed");
    } else {
        if (top_image != null)
            top_image.style.top = "";
        contents.style = "";
        header.classList.remove("fixed");
    }
}

function fixControlForAside(event) {
    const scroll_y = event.path[1].scrollY;
    detectTopBannerHeight();
    if (scroll_y > 144 + top_banner_height) {
        aside.style.top = 30 + 'px';
        aside.classList.add("fixed");
    } else {
        aside.style.top = 115 + top_banner_height + "px";
        aside.classList.remove("fixed");
    }
}

function fixControlForsideBanner(event) {
    const scroll_y = event.path[1].scrollY;
    if (scroll_y > 399) {
        side_banner.style.top = '53px';
        side_banner.classList.add("fixed");
    } else {
        side_banner.style.top = '441px';
        side_banner.classList.remove("fixed");
    }
}

