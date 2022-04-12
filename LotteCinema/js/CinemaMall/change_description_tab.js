const description_buttons_li = document.querySelectorAll(".description-buttons > li");
const descriptions = document.querySelectorAll(".description");

for (let i = 0; i < description_buttons_li.length; i++) {
    description_buttons_li[i].querySelector("button").onclick = activeDescription;
}

function activeDescription(event) {
    let index = event.target == description_buttons_li[0].querySelector("button") ? 0 : 1;
    if (index == 0) {
        description_buttons_li[0].classList.add("active");
        description_buttons_li[1].classList.remove("active");
        descriptions[0].classList.add("active");
        descriptions[1].classList.remove("active");
    } else {
        description_buttons_li[0].classList.remove("active");
        description_buttons_li[1].classList.add("active");
        descriptions[0].classList.remove("active");
        descriptions[1].classList.add("active");
    }
}