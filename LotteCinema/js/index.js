const index = document.createElement("div");
const slide_img = document.querySelector(".slide-img");
const visual_ad = document.querySelector(".visual-ad");
const left_btn = document.querySelector(".left-btn");
const right_btn = document.querySelector(".right-btn");
const top_banner = document.querySelector(".top-banner");
const banner_img_wrap = document.querySelector(".banner-img-wrap");
const banner_close_btn = document.querySelector(".banner-close");
const header = document.querySelector("#header-section");
const gnb = document.querySelector(".gnb");
const mid_banner = document.querySelector(".banner-01 img");

let height = 80;

let prevPosition = 0;
let imageCount = 0;
let currentIndex = 0;
let currentPosition = 0;

window.onload = () => {
    alignImageCenter();
    imageCount = slide_img.children.length;
    randomImg();
    randomMidBannerImg();
}

window.onresize = alignImageCenter;

window.onscroll = () => {
    if (window.scrollY > 71+height) {
        header.classList.add("fixed");
        if(header.className="fixed"){
            gnb.style.top=(-75-height)+"px";
        }
    } else {
        header.classList.remove("fixed");
        gnb.style.top="0px";
    }     
};

banner_close_btn.onclick = () => {
    top_banner.style.display = "none";
    height = 0;
}

right_btn.onclick = () => {
    if (currentIndex < imageCount - 1) {
        currentPosition = (currentIndex + 1) * (-1920);
        slide_img.style = `transform: translate3d(${currentPosition}px,0,0); transition: all 0.25s ease 0s;"`;
        currentIndex++;
    } else {
        currentPosition = 0;
        currentIndex = 0;
        slide_img.style = `transform: translate3d(${currentPosition}px,0,0); transition: all 0.25s ease 0s;"`;
    }
}

left_btn.onclick = () => {
    if (currentIndex < imageCount && currentIndex > 0) {
        currentPosition += 1920;
        slide_img.style = `transform: translate3d(${currentPosition}px,0,0); transition: all 0.25s ease 0s;"`;
        currentIndex--;
    }else {
        currentPosition = -7680;
        currentIndex = imageCount - 1;
        slide_img.style = `transform: translate3d(${currentPosition}px,0,0); transition: all 0.25s ease 0s;"`;
    }
}


function alignImageCenter() {
    const margin = (1920 - window.innerWidth) / 2;
    if (margin < 440) {
        visual_ad.style.marginLeft = `-${margin}px`;
    }
}

function randomImg() {
    const img_array = ['top_banner_01.jpg','top_banner_02.jpg','top_banner_03.jpg','top_banner_04.jpg'];
    const index = Math.floor(Math.random()*img_array.length);
    const random_img = img_array[index];
    const background_color_array = [
        "242, 191, 181", "191, 226, 245", "0, 0, 0", "0, 0, 0"];
    let banner_img = document.createElement('div');
    banner_img.innerHTML = 
    `
    <a href="">
        <img src="/images/${random_img}" class="top-banner-img" alt="">
    </a>`;
        
       top_banner.style.backgroundColor= `rgb(${background_color_array[index]})`;
    
    banner_img_wrap.appendChild(banner_img);
}

function randomMidBannerImg() {
    const index = Math.floor(Math.random()*5);
    mid_banner.src=`/images/under_main_banner_0${index+1}.jpg`;
}