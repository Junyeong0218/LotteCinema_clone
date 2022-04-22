const submitBtn = document.querySelector(".submit-button");
const input = document.querySelectorAll("input");
const usernameInput = input[0];
const emailInput = input[3];
submitBtn.onclick = () => {
	document.querySelector("form").submit();
}

usernameInput.onblur = () => {
	usernameCheck();
}

emailInput.onblur = () => {
const email = emailInput.value;
	if(email==""){
		alert("이메일을 입력해주세요.");
		return false;
	}else {
		if(!email_check(email)){
			alert("올바른 이메일 형식이 아닙니다.");
			return false;
		}
	}
}


function usernameCheck() {
	$.ajax({
		url:"/member/join/signup/usernameCheck",
		type:"post",
		data:{
			"username":usernameInput.value
		},
		dataType:"text",
		success: function(data){
			if(data == "1"){
				alert("이미 사용중인 아이디입니다.");
			}else {
				if(usernameInput.value.length>6){
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
