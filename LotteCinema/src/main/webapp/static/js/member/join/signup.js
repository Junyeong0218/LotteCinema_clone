const input_datas = document.querySelectorAll(".form-row");
const submitBtn = document.querySelector(".submit-button");

let checkFlag = [false, false, false, false];

submitBtn.onclick = () => {
	
	let emailVal = $("#email").val();
	let regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	if(emailVal.match(regExp) != null){
		
	}else{
		checkFlag[3] = false;
		alert("이메일을 정확히 입력해주세요.");
		return;
	}

	if(checkFlag.indexOf(false) == -1){
	document.querySelector("form").submit();
	}
}



for (let i = 0; i < input_datas.length; i++){
	const input = input_datas[i].querySelector("input");
	
	input.onblur = () => {
		if(input.value.length == 0){
			checkFlag[i] = false;
		}else{
			checkFlag[i] = true;
			if(i == 0){
				$.ajax({
					type: "get",
					url: "/join/username/check",
					data: {
						"username": input.value
					},
					dataType: "text",
					success: function(data){
						if(data == "true"){
							checkFlag[i] = false;
						}else{
							checkFlag[i] = true;
						}
					}
				})
			}
		}
	}
}