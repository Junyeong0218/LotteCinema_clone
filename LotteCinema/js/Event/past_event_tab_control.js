const tab_buttons = document.querySelectorAll(".event-tab > li > button");
let content_wrappers = document.querySelectorAll(".past-content-wrapper");
let currentIndex = -1;
console.log(tab_buttons);
console.log(content_wrappers);

for (let i = 0; i < tab_buttons.length; i++) {
    tab_buttons[i].onclick = (event) => {
        activeTab(event);
        changeLayout();
    };
}

function activeTab(event) {
    for (let i = 0; i < tab_buttons.length; i++) {
        if (tab_buttons[i] == event.target) {
            tab_buttons[i].classList.add("active");
            currentIndex = i;
        }
        else
            tab_buttons[i].classList.remove("active");
    }
}

function changeLayout() {
    for (let i = 0; i < content_wrappers.length; i++) {
        if (i == currentIndex)
            content_wrappers[i].classList.remove("hidden");
        else
            content_wrappers[i].classList.add("hidden");
    }
}