const select_button_list = document.querySelectorAll(".select-button");
const input_button_list = document.querySelectorAll(".input-button");

for (let i = 0; i < input_button_list.length; i++) {
    const input_button = input_button_list[i];
    input_button.onclick = toggleActive;
}

function toggleActive(event) {
    if (event.target.className.includes("active")) {
        event.target.classList.remove("active");
    } else {
        for (let i = 0; i < input_button_list.length; i++) {
            if (input_button_list[i] == event.target) {
                input_button_list[i].classList.add("active");
            } else {
                input_button_list[i].classList.remove("active");
            }
        }
    }
}

for (let i = 0; i < select_button_list.length; i++) {
    const select_button = select_button_list[i];
    select_button.onclick = () => {
        const img = select_button.querySelector("img");
        if (img.style.left == null || img.style.left == "" || img.style.left == '0px') {
            img.style.left = '-69px';
        } else {
            img.style = '';
        }
    }
}