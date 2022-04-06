const tab_wrapper = document.querySelector(".tab-wrapper");
const tabs = tab_wrapper.querySelectorAll("a");

window.onscroll = (event) => {
        fixControlForHeader(event);
        fixControlForTab(event);
        fixControlForAside(event);
        fixControlForsideBanner(event);
}

for (let i = 0; i < tabs.length; i++) {
        tabs[i].onclick = moveTabUnderline;
}

function fixControlForTab(event) {
        const scroll_y = event.path[1].scrollY;
        if (scroll_y > 399) {
                tab_wrapper.classList.add("fixed");
        } else {
                tab_wrapper.classList.remove("fixed");
        }
}