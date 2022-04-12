const header_nav_list = document.querySelectorAll(".header-nav > ul > li");
const sub_list = document.querySelectorAll("nav-sub-list");
const whole_menu_button = document.querySelector(".whole-menu > button");
const pop_up = document.querySelector(".pop-up");
const pop_up_closer = document.querySelector(".whole-menu-closer");
const pop_up_banner = document.querySelector(".pop-up-banner");
const top_banner = document.querySelector(".top-banner");
const top_banner_closer = document.querySelector(".top-banner-closer");
const background_color_array = [
    "242, 191, 181", "191, 226, 245", "0, 0, 0", "0, 0, 0"
];

for (let i = 0; i < header_nav_list.length; i++) {
    if (i == 2) {
        header_nav_list[i].onmouseover = showSubListForTheater;
    } else {
        header_nav_list[i].onmouseover = showSubList;
    }
    header_nav_list[i].onmouseout = hideSubList;
}

whole_menu_button.onclick = showWholeMenu;
pop_up_closer.onclick = hideWholeMenu;
top_banner_closer.onclick = hideTopBanner;

function showWholeMenu() {
    pop_up.classList.add("to-show");
}

function hideWholeMenu() {
    pop_up.classList.remove("to-show");
}

function hideTopBanner() {
    top_banner.classList.add("hidden");
    readjustAsideTop();
}

function setWholeMenuBanner() {
    const index = getRandomNumber(5);
    const imageTag = pop_up_banner.querySelector("img");
    imageTag.src = `/images/whole_menu_banner_0${index + 1}.jpg`;
    if (index == 0) imageTag.alt = "신비한 동물들과 덤블도어의 비밀";
    else if (index == 1) imageTag.alt = "로스트 시티";
    else if (index == 2) imageTag.alt = "수퍼 소닉 2";
    else if (index == 3) imageTag.alt = "루이스 웨인";
    else imageTag.alt = "공기 살인";
}

function setTopBanner() {
    const index = getRandomNumber(4);
    top_banner.style.backgroundColor = `rgb(${background_color_array[index]})`;
    top_banner.querySelector("img").src = `/images/top_banner_0${index + 1}.jpg`;
}

function getRandomNumber(multiple) {
    return Math.floor(Math.random() * multiple); // 0 ~ multiple - 1
}

function showSubListForTheater(event) {
    event.currentTarget.classList.add("active");
    event.currentTarget.children[1].classList.remove("hidden");
    const region_wrapper = event.currentTarget.querySelectorAll(".nav-sub-list > ul > li");
    for (let i = 0; i < region_wrapper.length; i++) {
        region_wrapper[i].onmouseover = showRegions;
        region_wrapper[i].onmouseout = hideRegions;
    }
}

function showRegions(event) {
    event.currentTarget.children[1].classList.remove("hidden");
}

function hideRegions(event) {
    event.currentTarget.children[1].classList.add("hidden");
}

function showSubList(event) {
    event.currentTarget.classList.add("active");
    event.currentTarget.children[1].classList.remove("hidden");
}

function hideSubList(event) {
    event.currentTarget.classList.remove("active");
    event.currentTarget.children[1].classList.add("hidden");
}