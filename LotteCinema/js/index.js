const index = document.createElement("div");
const slide_img = document.querySelector(".slide-img");
const visual_ad = document.querySelector(".visual-ad");
const left_btn = document.querySelector(".left-btn");
const right_btn = document.querySelector(".right-btn");
const top_banner = document.querySelector(".top-banner");
const banner_close_btn = document.querySelector(".banner-close");
const main_nav_detail = document.querySelectorAll(".main-nav-detail");
const header = document.querySelector("#header-section");
let prevPosition = 0;
let imageCount = 0;
let currentIndex = 0;
let currentPosition = 0;


window.onload = () => {
    alignImageCenter();
    imageCount = slide_img.children.length;

    let banner_img = document.createElement('div');
    banner_img.innerHTML = `<a href=""><img src="/images/top_banner_01.jpg" alt=""></a>`;
    top_banner.appendChild(banner_img);
}
window.onresize = alignImageCenter;


let height = 80;
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

const gnb = document.querySelector(".gnb");
window.addEventListener( 'scroll', () => {
        if (window.scrollY > 71+height) {
            header.classList.add("fixed");
            
        } else {
            header.classList.remove("fixed");
        }
    
})



