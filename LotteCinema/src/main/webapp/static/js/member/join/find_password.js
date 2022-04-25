const username_input = document.querySelector("input[name='username']");
const username_regex = /^([a-z])[a-z0-9]{6,15}$/;
const submit_button = document.querySelector(".submit-button");
const cancel_button = document.querySelector(".cancel-button");

// -----------------------------------------------------
// EventListeners

cancel_button.onclick = () => location.href="/member/login";

submit_button.onclick = () => {
	const result = username_input.value.match(username_regex);
	if(result != null && result[0] == result.input) {
		$.ajax({
			type: "post",
			url: "/member/join/check-username",
			data: { "username": result[0] },
			dataType: "json",
			success: function (data) {
				if(data == true) {
					location.href = "/member/join/find_password_certificate";
				} else {
					alert("아이디를 찾을 수 없습니다.");
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

// -----------------------------------------------------
// Functions