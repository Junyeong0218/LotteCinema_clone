const index = document.createElement("div");
const slide_img = document.querySelector(".slide-img");

window.onload = alignImageCenter;
window.onresize = alignImageCenter;

function alignImageCenter() {
    const margin = (1920 - window.innerWidth) / 2;
    if(margin < 440)
    slide_img.style.marginLeft = `-${margin}px`;
}