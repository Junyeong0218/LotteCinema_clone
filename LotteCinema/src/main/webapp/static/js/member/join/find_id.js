const cancel_button = document.querySelector(".cancel-button");
const submit_button = document.querySelector(".submit-button");


// -----------------------------------------------------------
// EventListeners

cancel_button.onclick = () =>  location.href = "/member/login";
submit_button.onclick = () => {
	const input = findCheckedRadio();
	console.log(input);
	const form = input.parentElement.querySelector(".input-form");
	console.log(form);
	if(isValid(input, form)) {
		const data = getData(input, form);
		$.ajax({
			type: "post",
			url: "",
			data: data,
			dataType: "json",
			success: function (data) {
				if(data == true) {
					location.href = "/member/join/find_id_result";
				} else {
					alert("아이디를 찾을 수 없습니다.\n가입 정보를 정확히 입력해주세요.");
				}
			},
			error: function (xhr, status, error) {
				console.log(xhr);
				console.log(status);
				console.log(error);
			}
		});
	} else if(input.id == "company_name" || input.id == "certificate") {
		alert("지원하지 않는 기능입니다.");
	} else {
		alert("정보를 정확히 입력해주세요.");
	}
}




















// -----------------------------------------------------------
// Funcitons

function getData(input, form) {
	switch(input.id) {
		case "phone":
			const phone_name = form.querySelector("input[name='name']");
			const select = form.querySelector("select");
			const first_number = select.options[select.selectedIndex];
			const middle_number = form.querySelector("input[name='middle_number']");
			const last_number = form.querySelector("input[name='last_number']");
			const phone_number = `${first_number.value}-${middle_number.value}-${last_number.value}`;
			
			const phone_data = {
				"name": phone_name.value,
				"phone": phone_number
			};
			return phone_data;
		case "email":
			const email_name = form.querySelector("input[name='name']");
			const email = form.querySelector("input[name='email']");
			
			const email_data = {
				"name": email_name.value,
				"email": email.value
			};
			return email_data;
		case "company_name":
			return false;
		case "certificate":
			return false;
	}
}

function isValid(input, form) {
	const name_regex = /^[A-Za-z가-힣]{2,30}$/;
	switch(input.id) {
		case "phone":
			const phone_name = form.querySelector("input[name='name']");
			const select = form.querySelector("select");
			const first_number = select.options[select.selectedIndex];
			const middle_number = form.querySelector("input[name='middle_number']");
			const last_number = form.querySelector("input[name='last_number']");
			const phone_number = `${first_number.value}-${middle_number.value}-${last_number.value}`;
			
			const phone_name_result = phone_name.value.match(name_regex);
			
			const phone_regex = /^(010|011|016|017|018|019)\-[0-9]{4}\-[0-9]{4}$/;
			const phone_result = phone_number.match(phone_regex);
			
			return phone_name_result != null && phone_name_result[0] == phone_name_result.input &&
						 phone_result != null && phone_result[0] == phone_result.input;
		case "email":
			const email_name = form.querySelector("input[name='name']");
			const email = form.querySelector("input[name='email']");
						
			const email_name_result  = email_name.value.match(name_regex);
			
			const email_regex = /^[A-za-z0-9!@#$%^&*`~=+_]{3,}@[A-Za-z0-9]{2,}[\.](com|net|co\.kr|org)$/;
			const email_result = email.value.match(email_regex);
			
			return email_name_result != null && email_name_result[0] == email_name_result.input &&
						 email_result != null && email_result[0] == email_result.input;
		case "company_name":
			return false;
		case "certificate":
			return false;
	}
}

function findCheckedRadio() {
	const radio_buttons = document.querySelectorAll("input[type='radio']");
	console.log(radio_buttons);
	for(let i=0; i<radio_buttons.length; i++) {
		if(radio_buttons[i].checked == true) {
			return radio_buttons[i];
		}
	}
}