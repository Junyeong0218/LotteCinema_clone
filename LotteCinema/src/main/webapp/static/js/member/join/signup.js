const input_datas = document.querySelectorAll(".form-row");
const submitBtn = document.querySelector(".submit-button");

let checkFlag = [false, false, false, false]

submitBtn.onclick = () => {
	if(checkFlag.indexOf(false) == -1){
		document.querySelector("form").submit();
	}
}

for (let i = 0; i < input_datas.lenght; i++){
	const input = input_datas[i].querySelector("input");
	
	input.onblur = () => {
		if(input.value.length == 0){
			checkFlag[i] = false;
		}else{
			checkFlag[i] = true;
			if(i == 0){
				$.ajax({
					type: "get",
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