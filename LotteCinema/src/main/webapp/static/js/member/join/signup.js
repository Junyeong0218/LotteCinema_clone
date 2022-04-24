const submitBtn = document.querySelector(".submit-button");
const emailAccept = document.querySelector("#emailAccept");
const smsAccept = document.querySelector("#smsAccept");
const input = document.querySelectorAll("input");
const usernameInput = input[0];
const emailInput = input[5];
const passwordInput = input[1];
const verifyPasswordInput = input[2];





function checkSelectAll(checkbox) {
	const selectall = document.querySelector('input[name="check-all"]');
	if (checkbox.checked === false) {
		selectall.checked = false;
	}
}

function selectAll(selectAll) {
	const checkboxes = document.getElementsByName('accept');

	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectAll.checked
	})
}





submitBtn.onclick = () => {
	const emailChecked = emailAccept.checked;
	const smsChecked = smsAccept.checked;
	const email = emailInput.value;
	passwordCheck();
	if (!email_check(email)) {
		alert("올바른 이메일 형식이 아닙니다.");
		return false;
	}else {
		$.ajax({
			url: "/member/join/signup",
			type: "post",
			data: {
				"username": input[0].value,
				"password": input[1].value,
				"verify_password": input[2].value,
				"name": input[3].value,
				"phone": input[4].value,
				"email": input[5].value,
				"email_assent": emailChecked,
				"sms_assent": smsChecked
			},
			dataType: "text",
			success: function(data) {
				location.href = data;
			},
			error: function() {
				alert("비동기 통신 오류");
			}
		});
	}
}

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
		}
	}
}

verifyPasswordInput.onblur = () => {
	passwordCheck();
}

function passwordCheck() {
	if(passwordInput.value != verifyPasswordInput.value){
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
		success: function(data) {
			if (data == "1") {
				alert("이미 사용중인 아이디입니다.");
			} else {
				if (usernameInput.value.length > 6) {
					alert("사용 가능한 아이디입니다.");
				}
			}
		},
		error: function() {
			alert("비동기 처리 오류");
		}
	});
}

function email_check(email) {
	let reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	return reg.test(email);
}
