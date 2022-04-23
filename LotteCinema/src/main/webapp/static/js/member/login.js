const username_input = document.querySelector(".username");
const password_input = document.querySelector(".password");
const member_login_button = document.querySelector(".member-login");

// -----------------------------------------------
// EventListeners

password_input.onkeydown = (event) => {
	if(event.keyCode == 13) loginForMember();
}
member_login_button.onclick = loginForMember;



// -----------------------------------------------
// Functions

function loginForMember() {
	if(validateMemberInput()) {
		$.ajax({
			type: "post",
			url: "/member/join/signin",
			data: { "username": username_input.value, 
						  "password": password_input.value },
			success: function (data) {
				if(data == true) {
					location.href = "/index";
				} else {
					alert("로그인에 실패했습니다.\n아이디와 비밀번호를 다시 한 번 확인해주세요.");
				}
			},
			error: function (xhr, status, error) {
				console.log(xhr);
				console.log(status);
				console.log(error);
			}
		});
	} else {
		alert("아이디, 비밀번호가 형식에 맞지 않습니다.\n다시 시도해주세요.")
	}
}

function validateMemberInput() {
	const username_regex = /^([a-z])[a-z0-9]{6,15}$/;
	const password_regex = /^[A-za-z0-9!@#$%^&*`~=+_]{8,16}$/;
	const username_result = username_input.value.match(username_regex);
	const password_result = password_input.value.match(password_regex);
	if(username_result == null) return false;
	if(username_result[0] != username_result.input) return false;
	if(password_result == null) return false;
	if(password_result[0] != password_result.input) return false;
	return true;
}