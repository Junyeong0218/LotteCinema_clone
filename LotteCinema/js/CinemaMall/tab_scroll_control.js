const tab_wrapper = document.querySelector(".tab-wrapper");
const tabs = tab_wrapper.querySelectorAll("a");
const content_all = document.querySelectorAll(".content");

for (let i = 0; i < tabs.length; i++) {
        tabs[i].onclick = moveTab;
}

function moveTab(event) {
        event.preventDefault();
        const id = this.href.split("#")[1];
        let fixed_height = document.querySelector("header").offsetHeight + document.querySelector(".tab-wrapper").offsetHeight;
        const selected_tab = document.querySelector(`#${id}`);
        if (window.scrollY < 400) {
                window.scrollTo(0, selected_tab.offsetTop - 20);
        } else {
                window.scrollTo(0, selected_tab.offsetTop - fixed_height);
        }
        moveTabUnderline();
}

function fixControlForTab(event) {
        const scroll_y = event.path[1].scrollY;
        if (scroll_y > 399) {
                tab_wrapper.classList.add("fixed");
        } else {
                tab_wrapper.classList.remove("fixed");
        }
}

function moveTabUnderline() {
        const fixed_height = document.querySelector("header").offsetHeight + document.querySelector(".tab-wrapper").offsetHeight;
        const scroll_y = window.scrollY;
        if (scroll_y <= content_all[1].offsetTop - fixed_height - 20) {
                addClassForTab(0);
        } else if (scroll_y >= content_all[3].offsetTop - fixed_height - 10) {
                addClassForTab(3);
        } else if (scroll_y >= content_all[2].offsetTop - fixed_height - 10) {
                addClassForTab(2);
        } else if (scroll_y >= content_all[1].offsetTop - fixed_height - 10) {
                addClassForTab(1);
        }
}

function addClassForTab(index) {
        for (let i = 0; i < 4; i++) {
                if (i == index) tabs[i].classList.add("tab-active");
                else tabs[i].classList.remove("tab-active");
        }
}