const inform_trigger = document.querySelector(".inform-trigger >button");
const announcement_bg = document.querySelector(".announcement-bg");
inform_trigger.onclick = () => {
    announcement_bg.classList.add("active");
}

const announcement_closer = document.querySelector(".announcement-closer>button");
announcement_closer.onclick = () => {

    announcement_bg.classList.remove("active");
}