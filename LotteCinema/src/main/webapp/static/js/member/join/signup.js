const check_inputs = document.querySelectorAll(".checkbox");
const check_buttons = document.querySelectorAll(".checkbox + label");
const submit_button = document.querySelector(".submit-button");

const username_input = document.querySelector("input[name='username']");
const password_input = document.querySelector("input[name='password']");
const password_confirm_input = document.querySelector("input[name='password_confirm']");
const email_input = document.querySelector("input[name='email']");
const address_input = document.querySelector("input[name='address']");

let username_check_flag = false;
let password_check_flag = false;
let password_confirm_flag = false;;
let email_check_flag = false;
let address_input_flag = false;

const flags = {
	"email_flag": false,
	"sms_flag": false
};

// ------------------------------------------
// EventListeners

for(let i=0; i < check_buttons.length; i++) {
	if(i == 0) {
		check_buttons[i].onclick = toggleAllFlags;
	} else {
		check_buttons[i].onclick = toggleEachFlag;
	}
}

username_input.onfocus = () =>  username_check_flag = false;
username_input.onblur = () => {
	const span = username_input.nextElementSibling;
	const regex = /^([a-z])[a-z0-9]{6,15}$/;
	const result = username_input.value.match(regex);
	if(result == null) {
		span.innerText = "아이디는 영소문자와 숫자로 6자 이상 15자 이하여야합니다.";
		span.classList.remove("green");
		span.classList.add("red");
	} else if(result[0] == result.input) {
		$.ajax({
			type: "post",
			url: "/member/join/check-username",
			data: { "username": result[0] },
			success: function (data) {
				if(data == true) {
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

password_input.onfocus = () => password_check_flag = false;
password_input.onblur = () => {
	const span = password_input.nextElementSibling;
	const symbol_regex = /[!@#$%^&*`~=+_]{1,16}/;
	const symbol_result = password_input.value.match(symbol_regex);
	console.log(symbol_result);
	if(symbol_result == null) {
		span.innerText = "특수문자 (\"!@#$%^&*`~=+_\") 중 1개 이상을 포함해야합니다.";
		span.classList.remove("green");
		span.classList.add("red");
		return;
	}
	const number_regex = /[0-9]{1,16}/;
	const number_result = password_input.value.match(number_regex);
	if(number_result == null) {
		span.innerText = "비밀번호는 영문, 숫자, 특수문자를 포함하여 8자 이상 16자 이하여야 합니다.";
		span.classList.remove("green");
		span.classList.add("red");
		return;
	}
	const regex = /^[A-za-z0-9!@#$%^&*`~=+_]{8,16}$/;
	const result = password_input.value.match(regex);
	console.log(result);
	if(result != null && result[0] == result.input) {
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
	if(password_confirm_input.value == password_input.value) {
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

email_input.onfocus = () => email_check_flag = false;
email_input.onblur = () => {
	const span = email_input.nextElementSibling;
	const regex = /^[A-za-z0-9!@#$%^&*`~=+_]{3,}@[A-Za-z0-9]{2,}[\.](com|net|co\.kr|org)$/;
	const result = email_input.value.match(regex);
	console.log(result);
	if(result == null) {
		span.innerText = "이메일을 정확히 입력해주세요.";
		span.classList.remove("green");
		span.classList.add("red");
	} else if(result[0] == result.input) {
		$.ajax({
			type: "post",
			url: "/member/join/check-email",
			data: { "email": result[0] },
			dataType: "json",
			success: function (data) {
				if(data == true) {
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
	if(result == null) {
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
	if(checkFlags() == false) {
		alert("회원 정보를 정확히 입력해주세요.");
		return;
	}
	$.ajax({
		type: "post",
		url: "/member/join/signup",
		data: { "username": username_input.value,
					  "password": password_input.value,
					  "email": email_input.value,
					  "address": address_input.value,
					  "email_flag": flags.email_flag,
					  "sms_flag": flags.sms_flag },
		dataType: "json",
		success: function (data) {
			console.log(data);
			if(data == true) {
				location.href = "/member/join/complete";
			} else {
				alert("회원가입에 실패했습니다.");
			}
		},
		error: function (xhr, status, error) {
			console.log(xhr);
			console.log(status);
			console.log(error);
		}
	});
}

// ------------------------------------------
// Functions

function checkFlags() {
	return username_check_flag && password_check_flag && password_confirm_flag && email_check_flag && address_input_flag;
}

function toggleEachFlag(event) {
	if(event.target.htmlFor == "emailAccept") {
		flags.email_flag = flags.email_flag == true ? false : true;
		check_inputs[0].checked = flags.email_flag && flags.sms_flag ? true : false;
	} else {
		flags.sms_flag = flags.sms_flag == true ? false : true;
		check_inputs[0].checked = flags.email_flag && flags.sms_flag ? true : false;
	}
}

function toggleAllFlags() {
	if(check_inputs[0].checked == false) {
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