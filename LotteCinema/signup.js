const input_data = document.querySelectorAll(".input-data");
const passwordType = document.querySelector("input[type = 'password']");
const phoneOrEmail_label = input_data[0].querySelector("label");
const phoneOrEmail_input = input_data[0].querySelector("input");
const password_visible = document.querySelector(".password-visible");


password_visible.onclick = () => {
    if (passwordType.type == "password") {
        passwordType.type = 'text';
        password_visible.innerText = "숨기기";
    } else {
        passwordType.type = 'password';
        password_visible.innerText = "비밀번호 표시";
    }
}

for (let i = 0; i < input_data.length; i++){
    const label = input_data[i].querySelector("label");
    const input = input_data[i].querySelector("input");

    input.onkeydown = () => {
        label.style.top = "2px";
        label.style.fontSize = "11px";
        input.style.padding = "16px 0px 2px 8px";
    }

    input.onkeyup = () => {
        if (input.value.length == 0) {
            label.style.top = "9px";
            label.style.fontSize = "13px";
            input.style.padding = "9px 0px 7px 8px";
            
        }
    }

    input.onblur = () => {
        const inputMsg = document.querySelectorAll(".input-msg");
        if (input.value.length == 0) {
            inputMsg[i].innerHTML = `<i class="fa-solid fa-circle-xmark"></i>`
        } else {
            inputMsg[i].innerHTML = `<i class="fa-solid fa-circle-check" style="color : #8e8e8e;"></i>`
        }
    }


}