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
const dot_btns = document.querySelector(".dot-btns");
let toggleSilde;

let height = 80;

let imageCount = 0;
let currentIndex = 0;
let currentPosition = 0;

window.onload = () => {
    alignImageCenter();
    imageCount = slide_img.children.length;
    randomImg();
    randomMidBannerImg();
    addDotButtons();
    overAction();
    toggleSilde = setInterval(autoSlide, 6000);
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

visual_ad.onmouseover = slideStop;
visual_ad.onmouseout = () => {
    toggleSilde = setInterval(autoSlide, 6000);
};

banner_close_btn.onclick = () => {
    top_banner.style.display = "none";
    height = 0;
}

function addDotButtons() {
    for(let i = 0; i < imageCount; i++){
        const dot = makeDotButtons();
        if(i == 0) dot.classList.add("active");
        dot_btns.appendChild(dot);
    }
    const dot_btn = dot_btns.querySelectorAll("button");
    for(let i = 0; i < dot_btn.length; i++){
        dot_btn[i].onclick = (event) => {
            showSpecificImage(event, dot_btn);
        }
    }
}
// 버튼 돔객체[i]번째가 클릭됐을때 버튼인덱스와 같으면 currentIndex = i;
// index 변경 -> position 계산 -> image slide -> active dot
function showSpecificImage(event, dot_btn) {
    for(let i=0; i< dot_btn.length; i++) {
        if(dot_btn[i] == event.target) {
            currentIndex = i;
            break;
        }
    }
    calcImagePosition();
    slideShow();
    activeDotButton();
}

function activeDotButton() {
    const dot_btn = dot_btns.querySelectorAll("button");
    for(let i=0; i<dot_btn.length; i++) {
        if(i == currentIndex) dot_btn[i].classList.add("active");
        else dot_btn[i].classList.remove("active");
    }
}

function makeDotButtons() {
    const dot = document.createElement("button");
    dot.type="button";
    dot.className="dot-btn";
    dot.innerHTML=`<span></span>`;
    return dot;
}

function slideStop() {
    clearInterval(toggleSilde);
}

function autoSlide() {
    imageIndexUp();
    calcImagePosition();
    slideShow();
}

function slideShow() {
    slide_img.style = `transform: translate3d(${currentPosition}px,0,0); transition: all 0.25s ease 0s;"`;
    activeDotButton();
}

function calcImagePosition() {
    currentPosition = currentIndex * (-1920);
}

function imageIndexUp() {
    currentIndex++;
    if(currentIndex > imageCount - 1) currentIndex = 0;
}

function imageIndexDown() {
    currentIndex--;
    if(currentIndex < 0) currentIndex = imageCount -1;
}

right_btn.onclick = autoSlide;
   
left_btn.onclick = () => {
    imageIndexDown();
    calcImagePosition();
    slideShow();
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
        <img src="/static/images/${random_img}" class="top-banner-img" alt="">
    </a>`;
        
       top_banner.style.backgroundColor= `rgb(${background_color_array[index]})`;
    
    banner_img_wrap.appendChild(banner_img);
}

function randomMidBannerImg() {
    const index = Math.floor(Math.random()*5);
    mid_banner.src=`/static/images/under_main_banner_0${index+1}.jpg`;
}

function overAction() {
    const poster_img_box = document.querySelectorAll(".poster-img-box");
    for(let i= 0; i < poster_img_box.length; i++) {
        poster_img_box[i].onmouseenter = () => {
            const box = makeActiveBox();
            poster_img_box[i].appendChild(box);
        }
        poster_img_box[i].onmouseout = (event) => {
            console.log(event);
            if(event.relatedTarget == null) return;
            if(event.relatedTarget.className=="banner-wrapper") {
                const box = poster_img_box[i].querySelector(".over-box");
                box.remove();
            }
        }
    }
}

function makeActiveBox() {
    const elementBox = document.createElement("div");
    elementBox.className="over-box";
    elementBox.innerHTML=`
    <a href="#" class="box-in">예매하기</a>
    <a href="#" class="box-in">상세정보</a>
    `;
    
    return elementBox;
}

