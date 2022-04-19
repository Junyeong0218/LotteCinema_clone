const general_agreement_checkbox = document.querySelector(".general-agreement-checkbox");
const lpoint_buttons = document.querySelectorAll(".lpoint-checkbox .general-agreement-checkbox");
const lotte_cultureworks = document.querySelectorAll(".lotte-cultureworks .general-agreement-checkbox");

for (let i = 0; i < lpoint_buttons.length; i++) {
    lpoint_buttons[i].onclick = () => {
        const img = lpoint_buttons[i].querySelector("img");
        if (img.style.left == null || img.style.left == "" || img.style.left == '0px') {
            img.style.left = '-69px';
        } else {
            img.style = '';
            general_agreement_checkbox.querySelector("img").style = '';
        }
    }
}

for (let i = 0; i < lotte_cultureworks.length; i++) {
    lotte_cultureworks[i].onclick = () => {
        const img = lotte_cultureworks[i].querySelector("img");
        if (img.style.left == null || img.style.left == "" || img.style.left == '0px') {
            img.style.left = '-69px';
        } else {
            img.style = '';
            general_agreement_checkbox.querySelector("img").style = '';
        }
    }
}

general_agreement_checkbox.onclick = () => {
    const img = general_agreement_checkbox.querySelector("img");
    if (img.style.left == null || img.style.left == "" || img.style.left == '0px') {
        img.style.left = '-69px';
        toggleAllLpoint("on");
        toggleAllCultureworks("on");
    } else {
        img.style = '';
        toggleAllLpoint("off");
        toggleAllCultureworks("off");
    }
}

function toggleAllLpoint(toggle) {
    for (let i = 0; i < lpoint_buttons.length; i++) {
        const img = lpoint_buttons[i].querySelector("img");
        if (toggle == "on") {
            img.style.left = '-69px';
        } else {
            img.style = '';
        }
    }
}

function toggleAllCultureworks(toggle) {
    for (let i = 0; i < lotte_cultureworks.length; i++) {
        const img = lotte_cultureworks[i].querySelector("img");
        if (toggle == "on") {
            img.style.left = '-69px';
        } else {
            img.style = '';
        }
    }
}