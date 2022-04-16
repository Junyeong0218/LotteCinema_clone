const phone_check = document.querySelector(".phone-check button");
const check_box_wrapper = document.querySelectorAll(".check-box");
const site_list = document.querySelectorAll(".site-linker button");

for (let i = 0; i < check_box_wrapper.length; i++) {
    check_box_wrapper[i].onclick = activeCheckBox;
}

for (let i = 0; i < site_list.length; i++) {
    site_list[i].onclick = () => {
        site_list[i].classList.add("active");
    }
    site_list[i].onblur = () => {
        site_list[i].classList.remove("active");
    }
}

phone_check.onclick = () => {
    const img = phone_check.querySelector("img");
    if (img.style.left == null || img.style.left == "" || img.style.left == '0px') {
        img.style.left = '-69px';
        activeAllCheckBox();
        // .check-box 안에 버튼들 모두  img.style.left = '-69px';
    } else {
        img.style.left = '0px';
        inactiveAllCheckBox();
    }
}

function activeAllCheckBox() {
    for (let i = 0; i < check_box_wrapper.length; i++) {
        check_box_wrapper[i].querySelector("img").style.left = '-69px';
    }
}

function inactiveAllCheckBox() {
    for (let i = 0; i < check_box_wrapper.length; i++) {
        check_box_wrapper[i].querySelector("img").style.left = '0px';
    }
}

function activeCheckBox(event) {
    const img = event.target.children[0];
    if (img.style.left == null || img.style.left == "" || img.style.left == '0px') {
        img.style.left = '-69px';
    } else {
        img.style.left = '0px';
        const phone_check_img = phone_check.querySelector("img");
        if (phone_check_img.style.left == '-69px') {
            phone_check_img.style.left = '0px';
        }
    }
}