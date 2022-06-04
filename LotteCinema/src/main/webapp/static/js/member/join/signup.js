const check_inputs = document.querySelectorAll(".checkbox");
const check_buttons = document.querySelectorAll(".checkbox + label");
const submit_button = document.querySelector(".submit-button");

const username_input = document.querySelector("input[name='username']");
const password_input = document.querySelector("input[name='password']");
const password_confirm_input = document.querySelector("input[name='password_confirm']");
const name_input = document.querySelector("input[name='name']");
const phone_input = document.querySelector("input[name='phone']");
const email_input = document.querySelector("input[name='email']");
const address_input = document.querySelector("input[name='address']");

let username_check_flag = false;
let password_check_flag = false;
let password_confirm_flag = false;
let name_check_flag = name_input.readOnly == true ? true : false;
let phone_check_flag = phone_input.readOnly == true ? true : false;
let email_check_flag = false;
let address_input_flag = false;

const flags = {
    "email_flag": false,
    "sms_flag": false
};

// ------------------------------------------
// EventListeners

for (let i = 0; i < check_buttons.length; i++) {
    if (i == 0) {
        check_buttons[i].onclick = toggleAllFlags;
    } else {
        check_buttons[i].onclick = toggleEachFlag;
    }
}

username_input.onfocus = () => username_check_flag = false;
username_input.onblur = () => {
    const span = username_input.nextElementSibling;
    const regex = /^([a-z])[a-z0-9]{6,15}$/;
    const result = username_input.value.match(regex);
    if (result == null) {
        span.innerText = "아이디는 영소문자와 숫자로 6자 이상 15자 이하여야합니다.";
        span.classList.remove("green");
        span.classList.add("red");
    } else if (result[0] == result.input) {
        $.ajax({
            type: "post",
            url: "/member/join/check-username",
            data: { "username": result[0] },
            success: function (data) {
                if (data == true) {
                    span.innerText = "이미 사용중인 아이디입니다.";
                    span.classList.remove("green");
                    span.classList.add("red");
                } else {
                    span.innerText = "사용가능한 아이디입니다.";
                    span.classList.add("green");
                    span.classList.remove("red");
                    username_check_flag = true;
                }
            },
            error: function (xhr, status, error) {
                console.log(xhr);
                console.log(status);
                console.log(error);
            }
        });
    }
}

<<<<<<< HEAD
password_input.onfocus = () => password_check_flag = false;
password_input.onblur = () => {
    const span = password_input.nextElementSibling;
    const symbol_regex = /[!@#$%^&*`~=+_]{1,16}/;
    const symbol_result = password_input.value.match(symbol_regex);
    if (symbol_result == null) {
        span.innerText = "특수문자 (\"!@#$%^&*`~=+_\") 중 1개 이상을 포함해야합니다.";
        span.classList.remove("green");
        span.classList.add("red");
        return;
    }
    const number_regex = /[0-9]{1,16}/;
    const number_result = password_input.value.match(number_regex);
    if (number_result == null) {
        span.innerText = "비밀번호는 영문, 숫자, 특수문자를 포함하여 8자 이상 16자 이하여야 합니다.";
        span.classList.remove("green");
        span.classList.add("red");
        return;
    }
    const regex = /^[A-za-z0-9!@#$%^&*`~=+_]{8,16}$/;
    const result = password_input.value.match(regex);
    if (result != null && result[0] == result.input) {
        span.innerText = "사용가능한 비밀번호입니다.";
        span.classList.add("green");
        span.classList.remove("red");
        password_check_flag = true;
    } else {
        span.innerText = "비밀번호는 영문, 숫자, 특수문자를 포함하여 8자 이상 16자 이하여야 합니다.";
        span.classList.remove("green");
        span.classList.add("red");
    }
}
password_confirm_input.onfocus = () => password_confirm_flag = false;
password_confirm_input.onblur = () => {
    const span = password_confirm_input.nextElementSibling;
    if (password_confirm_input.value == password_input.value) {
        span.innerText = "비밀번호가 일치합니다.";
        span.classList.add("green");
        span.classList.remove("red");
        password_confirm_flag = true;
    } else {
        span.innerText = "비밀번호가 다릅니다.";
        span.classList.remove("green");
        span.classList.add("red");
    }
}

if (name_input.readOnly == false) {
    name_input.onfocus = () => name_check_flag = false;
    name_input.onblur = () => {
        const span = name_input.nextElementSibling;
        const regex = /^[A-Za-z가-힣]{2,30}/;
        const result = name_input.value.match(regex);
        if (result != null && result[0] == result.input) {
            span.innerText = "가입가능한 이름입니다.";
            span.classList.remove("red");
            span.classList.add("green");
            name_check_flag = true;
        } else {
            span.innerText = "이름을 입력해주세요.";
            span.classList.add("red");
            span.classList.remove("green");
=======
usernameInput.onblur = () => {
	usernameCheck();
}

emailInput.onblur = () => {
	const email = emailInput.value;
	if (email == "") {
		alert("이메일을 입력해주세요.");
		return false;
	} else {
		if (!email_check(email)) {
			alert("올바른 이메일 형식이 아닙니다.");
			return false;
>>>>>>> origin/gyeongun
        }
    }
}

<<<<<<< HEAD
if (phone_input.readOnly == false) {
    phone_input.onfocus = () => phone_check_flag = false;
    phone_input.onblur = () => {
        const span = phone_input.nextElementSibling;
        const dash_regex = /[\-]/;
        const dash_result = phone_input.value.match(dash_regex);
        if (dash_result == null) {
            span.innerText = "전화번호 사이에 - 를 입력해주세요.";
            span.classList.add("red");
            span.classList.remove("green");
            return;
        }
        const regex = /^(010|011|016|017|018|019)[\-][0-9]{3,4}[\-][0-9]{4,4}$/;
        const result = phone_input.value.match(regex);
        if (result == null) {
            span.innerText = "전화번호를 정확하게 입력해주세요.";
            span.classList.add("red");
            span.classList.remove("green");
            return;
        } else if (result[0] == result.input) {
            $.ajax({
                type: "post",
                url: "/member/join/check-phone",
                data: { "phone": result[0] },
                dataType: "json",
                success: function (data) {
                    if (data == true) {
                        span.innerText = "이미 가입된 전화번호입니다.";
                        span.classList.add("red");
                        span.classList.remove("green");
                    } else {
                        span.innerText = "가입가능한 전화번호입니다.";
                        span.classList.remove("red");
                        span.classList.add("green");
                        phone_check_flag = true;
                    }
                },
                error: function (xhr, status, error) {
                    console.log(xhr);
                    console.log(status);
                    console.log(error);
                }
            });
        }
    }
}

email_input.onfocus = () => email_check_flag = false;
email_input.onblur = () => {
    const span = email_input.nextElementSibling;
    const regex = /^[A-za-z0-9!@#$%^&*`~=+_]{3,}@[A-Za-z0-9]{2,}[\.](com|net|co\.kr|org)$/;
    const result = email_input.value.match(regex);
    console.log(result);
    if (result == null) {
        span.innerText = "이메일을 정확히 입력해주세요.";
        span.classList.remove("green");
        span.classList.add("red");
    } else if (result[0] == result.input) {
        $.ajax({
            type: "post",
            url: "/member/join/check-email",
            data: { "email": result[0] },
            dataType: "json",
            success: function (data) {
                if (data == true) {
                    span.innerText = "이미 사용중인 이메일입니다. 다시 입력해주세요.";
                    span.classList.remove("green");
                    span.classList.add("red");
                } else {
                    span.innerText = "사용가능한 이메일입니다.";
                    span.classList.add("green");
                    span.classList.remove("red");
                    email_check_flag = true;
                }
            },
            error: function (xhr, status, error) {
                console.log(xhr);
                console.log(status);
                console.log(error);
            }
        });
    }
}

address_input.onfocus = () => address_input_flag = false;
address_input.onblur = () => {
    const span = address_input.nextElementSibling;
    const regex = /^[A-Za-z0-9가-힣 ]{10,100}$/;
    const result = address_input.value.match(regex);
    if (result == null) {
        span.innerText = "주소를 정확히 입력해주세요.";
        span.classList.add("red");
        span.classList.remove("green");
    } else {
        span.innerText = "사용가능한 주소입니다.";
        span.classList.remove("red");
        span.classList.add("green");
        address_input_flag = true;
    }
}

submit_button.onclick = () => {
    console.log(address_input_flag);
    console.log(email_check_flag);
    console.log(password_check_flag);
    console.log(password_confirm_flag);
    console.log(username_check_flag);
    console.log(name_check_flag);
    console.log(phone_check_flag);
    if (checkFlags() == false) {
        alert("회원 정보를 정확히 입력해주세요.");
        return;
    }
    let data;
    if (name_input.readOnly && phone_input.readOnly) {
        data = {
            "username": username_input.value,
            "password": password_input.value,
            "email": email_input.value,
            "address": address_input.value,
            "email_flag": flags.email_flag,
            "sms_flag": flags.sms_flag
        };
    } else {
        data = {
            "username": username_input.value,
            "password": password_input.value,
            "name": name_input.value,
            "phone": phone_input.value,
            "email": email_input.value,
            "address": address_input.value,
            "email_flag": flags.email_flag,
            "sms_flag": flags.sms_flag
        };
    }
    $.ajax({
        type: "post",
        url: "/member/join/signup",
        data: data,
        dataType: "json",
        success: function (data) {
            console.log(data);
            if (data == true) {
                location.href = "/member/join/complete";
            } else {
                alert("회원가입에 실패했습니다.");
            }
        },
        error: function (xhr, status, error) {
            console.log(xhr);
            console.log(status);
            console.log(error);
=======
verifyPasswordInput.onblur = () => {
	passwordCheck();
}

function passwordCheck() {
	if (passwordInput.value != verifyPasswordInput.value) {
		alert("두 비밀번호가 다릅니다.");
		return false;
	}
}

function usernameCheck() {
	$.ajax({
		url: "/member/join/signup/usernameCheck",
		type: "post",
		data: {
			"username": usernameInput.value
		},
		dataType: "text",
		success: function (data) {
			if (data == "1") {
				alert("이미 사용중인 아이디입니다.");
			} else {
				if (usernameInput.value.length > 6) {
					alert("사용 가능한 아이디입니다.");
				}
			}
		},
		error: function () {
			alert("비동기 처리 오류");
>>>>>>> origin/gyeongun
        }
    });
}

<<<<<<< HEAD
// ------------------------------------------
// Functions

function checkFlags() {
    return username_check_flag && password_check_flag && password_confirm_flag &&
        name_check_flag && phone_check_flag && email_check_flag && address_input_flag;
}

function toggleEachFlag(event) {
    if (event.target.htmlFor == "emailAccept") {
        flags.email_flag = flags.email_flag == true ? false : true;
        check_inputs[0].checked = flags.email_flag && flags.sms_flag ? true : false;
    } else {
        flags.sms_flag = flags.sms_flag == true ? false : true;
        check_inputs[0].checked = flags.email_flag && flags.sms_flag ? true : false;
    }
}

function toggleAllFlags() {
    if (check_inputs[0].checked == false) {
        activeAllFlags();
    } else {
        inactiveAllFlags();
    }
}

function activeAllFlags() {
    flags.email_flag = true;
    flags.sms_flag = true;
    check_inputs[1].checked = true;
    check_inputs[2].checked = true;
}

function inactiveAllFlags() {
    flags.email_flag = false;
    flags.sms_flag = false;
    check_inputs[1].checked = false;
    check_inputs[2].checked = false;
}
=======
function email_check(email) {
	let reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	return reg.test(email);
}
>>>>>>> origin/gyeongun
