const content_list = document.querySelector(".content-wrapper").children;
const tab_buttons = document.querySelectorAll(".tab-selector > li > button");

for (let i = 0; i < tab_buttons.length; i++) {
        tab_buttons[i].onclick = (event) => {
                const index = activeButton(event);
                activeContent(index);
        }
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

function activeButton(event) {
        let index = -1;
        for (let i = 0; i < tab_buttons.length; i++) {
                if (tab_buttons[i] == event.target) {
                        tab_buttons[i].classList.add("active");
                        index = i;
                }
                else
                        tab_buttons[i].classList.remove("active");
        }
        return index;
}

function activeContent(index) {
        for (let i = 0; i < content_list.length; i++) {
                if (i == index)
                        content_list[i].classList.add("active");
                else
                        content_list[i].classList.remove("active");
        }
}