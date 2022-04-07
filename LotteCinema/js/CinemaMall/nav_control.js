const header_nav_list = document.querySelectorAll(".header-nav > ul > li");
const sub_list = document.querySelectorAll("nav-sub-list");
const whole_menu_button = document.querySelector(".whole-menu > button");
const pop_up = document.querySelector(".pop-up");
const pop_up_closer = document.querySelector(".whole-menu-closer");

for (let i = 0; i < header_nav_list.length; i++) {
        if (i == 2) {
                header_nav_list[i].onmouseover = showSubListForTheater;
        } else {
                header_nav_list[i].onmouseover = showSubList;
        }
        header_nav_list[i].onmouseout = hideSubList;
}

whole_menu_button.onclick = showWholeMenu;
pop_up_closer.onclick = hideWholeMenu;

function showWholeMenu(event) {
        pop_up.classList.add("to-show");
}

function hideWholeMenu(event) {
        pop_up.classList.remove("to-show");
}

function showSubListForTheater(event) {
        event.currentTarget.classList.add("active");
        event.currentTarget.children[1].classList.remove("hidden");
        const region_wrapper = event.currentTarget.querySelectorAll(".nav-sub-list > ul > li");
        for (let i = 0; i < region_wrapper.length; i++) {
                region_wrapper[i].onmouseover = showRegions;
                region_wrapper[i].onmouseout = hideRegions;
        }
}

function showRegions(event) {
        event.currentTarget.children[1].classList.remove("hidden");
}

function hideRegions(event) {
        event.currentTarget.children[1].classList.add("hidden");
}

function showSubList(event) {
        event.currentTarget.classList.add("active");
        event.currentTarget.children[1].classList.remove("hidden");
}

function hideSubList(event) {
        event.currentTarget.classList.remove("active");
        event.currentTarget.children[1].classList.add("hidden");
}