const usable_theater = document.querySelector(".usable-theater");
const usable_theater_buttons = document.querySelectorAll(".popup-button");
const usable_theater_closer = document.querySelector(".usable-theater-closer");
const regions_wrapper = document.querySelector(".usable-theater-contents > ul").children;
const region_selectors = document.querySelectorAll(".region-selector");

for (let i = 0; i < usable_theater_buttons.length; i++) {
    usable_theater_buttons[i].onclick = showUsableTheaterPopup;
}
usable_theater_closer.onclick = hideUsableTheaterPopup;

for (let i = 0; i < region_selectors.length; i++) {
    region_selectors[i].onclick = (event) => {
        addClassActiveForRegions(event.target.parentElement);
    };
}

window.onscroll = (event) => {
    fixControlForHeader(event);
    fixControlForAside(event);
    fixControlForsideBanner(event);
}

window.onload = () => {
    setTopBanner();
    setSideBanner();
    setUnderMainBanner();
    setFooterBanner();
    setWholeMenuBanner();
    readjustAsideTop();
}

function addClassActiveForRegions(element) {
    for (let i = 0; i < regions_wrapper.length; i++) {
        if (regions_wrapper[i] == element) {
            regions_wrapper[i].classList.add("active");
        } else {
            regions_wrapper[i].classList.remove("active");
        }
    }
}

function showUsableTheaterPopup() {
    usable_theater.classList.add("active");
}

function hideUsableTheaterPopup() {
    usable_theater.classList.remove("active");
}