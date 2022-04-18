const top_banner = document.querySelector(".top-banner");
const banner_img_wrap = document.querySelector(".banner-img-wrap");
const banner_close_btn = document.querySelector(".banner-close");
const header = document.querySelector("#header-section");
const gnb = document.querySelector(".gnb");
const all_menu_close_btn = document.querySelector(".all-menu-close-btn");
const g_menu_button = document.querySelector(".g-menu-button");



window.onload = () => {
    randomImg();
}


banner_close_btn.onclick = () => {
    top_banner.style.display = "none";
    height = 0;
}



function randomImg() {
    const img_array = ['top_banner_01.jpg', 'top_banner_02.jpg', 'top_banner_03.jpg', 'top_banner_04.jpg'];
    const index = Math.floor(Math.random() * img_array.length);
    const random_img = img_array[index];
    const background_color_array = [
        "242, 191, 181", "191, 226, 245", "0, 0, 0", "0, 0, 0"];
    let banner_img = document.createElement('div');
    banner_img.innerHTML =
        `
    <a href="">
        <img src="/static/images/${random_img}" class="top-banner-img" alt="">
    </a>`;

    top_banner.style.backgroundColor = `rgb(${background_color_array[index]})`;

    banner_img_wrap.appendChild(banner_img);
}

g_menu_button.onclick = () => {
    all_menu_bg.style.display = "flex";
    body.style.overflow = "hidden";
}

all_menu_close_btn.onclick = () => {
    all_menu_bg.style = "";
    body.style.overflow = "scroll";
}


