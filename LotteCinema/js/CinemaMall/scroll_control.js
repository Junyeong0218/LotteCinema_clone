const header = document.querySelector("header");
const top_image = document.querySelector(".top-image");
const contents = document.querySelector("#contents");
const aside = document.querySelector("aside");
const side_banner = document.querySelector(".side-banner-wrapper");

function fixControlForHeader(event) {
        const scroll_y = event.path[1].scrollY;
        if (scroll_y > 50) {
                top_image.style.top = "120px";
                contents.style.marginTop = "120px";
                header.classList.add("fixed");
        } else {
                top_image.style.top = "";
                contents.style = "";
                header.classList.remove("fixed");
        }
        console.log(event);
}

function fixControlForAside(event) {
        const scroll_y = event.path[1].scrollY;
        if (scroll_y > 144) {
                aside.style.paddingTop = "53px";
                aside.classList.add("fixed");
        } else {
                aside.style = "padding-top: 145px;";
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

function moveTabUnderline(event) {
        const target = event.target;
        for (let i = 0; i < tabs.length; i++) {
                if (tabs[i] == target) {
                        tabs[i].classList.add("tab-active");
                } else {
                        tabs[i].classList.remove("tab-active");
                }
        }
}