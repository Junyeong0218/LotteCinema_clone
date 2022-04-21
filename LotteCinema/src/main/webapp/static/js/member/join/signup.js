const submit_button = document.querySelector(".submit-button");

const username_input = document.querySelector("input[name='username']");
const password_input = document.querySelector("input[name='password']");
const password_confirm_input = document.querySelector("input[name='password_confirm']");
const email_input = document.querySelector("input[name='email']");
const address_input = document.querySelector("input[name='address']");

const flags = {
	"email_flag": false,
	"sms_flag": false
};

submit_button.onclick = () => {
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
		},
		error: function (xhr, status, error) {
			console.log(xhr);
			console.log(status);
			console.log(error);
		}
	});
}