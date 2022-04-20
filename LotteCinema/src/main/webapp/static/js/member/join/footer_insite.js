const site_list = document.querySelectorAll(".site-linker button");
for (let i = 0; i < site_list.length; i++) {
    site_list[i].onclick = () => {
        site_list[i].classList.add("active");
    }
    site_list[i].onblur = () => {
        site_list[i].classList.remove("active");
    }
}