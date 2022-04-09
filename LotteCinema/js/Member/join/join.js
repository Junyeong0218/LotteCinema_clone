const site_list = document.querySelectorAll(".site-linker button");
for (let i = 0; i < site_list.length; i++) {
    site_list[i].onclick = () => {
        site_list[i].classList.add("active");
    }
    site_list[i].onblur = () => {
        site_list[i].classList.remove("active");
    }
}

const inform_trigger = document.querySelector(".inform-trigger >button");
const announcement_bg = document.querySelector(".announcement-bg");
inform_trigger.onclick = () => {
    announcement_bg.classList.add("active");
}

const announcement_closer = document.querySelector(".announcement-closer>button");
announcement_closer.onclick = () => {

    announcement_bg.classList.remove("active");
}