const index = document.createElement("div");
const slide_img = document.querySelector(".slide-img");
const visual_ad = document.querySelector(".visual-ad");
const left_btn = document.querySelector(".left-btn");
const right_btn = document.querySelector(".right-btn");
let prevPosition = 0;
let imageCount = 0;
let currentIndex = 0;

window.onload = () => {
    alignImageCenter();
    imageCount = slide_img.children.length;
}
window.onresize = alignImageCenter;

right_btn.onclick = () => {
    if (currentIndex < imageCount - 1) {
        const currentPosition = prevPosition - 1920;
        prevPosition = currentPosition;
        slide_img.style = `transform: translate3d(${currentPosition}px,0,0); transition: all 0.25s ease 0s;"`;
        currentIndex++;
    }
}



function alignImageCenter() {
    const margin = (1920 - window.innerWidth) / 2;
    if(margin < 440)
    visual_ad.style.marginLeft = `-${margin}px`;
}


