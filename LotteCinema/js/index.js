const index = document.createElement("div");
const slide_img = document.querySelector(".slide-img");

window.onresize = alignImageCenter;


function alignImageCenter(event) {
    console.log(event);
    const margin = (1920 - window.innerWidth) / 2;
    slide_img.style.marginLeft = `-${margin}px`;
}