const all_check = document.querySelector(".phone-check button");
const check_buttons = document.querySelectorAll(".check-box");
const cancel_button = document.querySelector(".btn-center").children[0];
const submit_button = document.querySelector(".btn-center").children[1];

const input_name = document.querySelector("input[name='name']");
const input_birthday = document.querySelector("input[name='birthday']");
const input_gender = document.querySelector("input[name='gender']");
const input_middleNumber = document.querySelector("input[name='middleNumber']");
const input_lastNumber = document.querySelector("input[name='lastNumber']");

const flags = {
	"privacy_flag": false,
	"unique_flag": false,
	"service_flag": false,
	"agency_flag": false
};

const regex_birthday = /^[0-9]{6,6}$/;
const regex_name = /^[A-Za-z가-힣]{2,30}$/;
const regex_gender = /^[1-4]{1,1}$/;
const regex_phone = /^[0-9]{4,4}$/;

const regex_name_input = /^[A-za-zㄱ-ㅎ가-힣]{1,30}$/;

let last_name_input_value;
let last_birthday_input_value;
let last_gender_input_value;
let last_middleNumber_input_value;
let last_lastNumber_input_value;

// ------------------------------------------------
// EventListeners

for (let i = 0; i < check_buttons.length; i++) {
	check_buttons[i].onclick = toggleEachFlag;
}

input_name.oninput = () => {
	const result = input_name.value.match(regex_name_input);
	if(result != null && result[0] == input_name.value) {
		last_name_input_value = result[0];
		return;
	} else if(input_name.value == null || input_name.value == "") {
		last_name_input_value = "";
	}
	input_name.value = last_name_input_value;
}

input_birthday.oninput = () => {
	const regex_number_input = /^[0-9]{1,6}$/;
	const result = input_birthday.value.match(regex_number_input);
	if(result != null && result[0] == input_birthday.value) {
		last_birthday_input_value = result[0];
		return;
	} else if(input_birthday.value == null || input_birthday.value == "") {
		last_birthday_input_value = "";
	}
	input_birthday.value = last_birthday_input_value;
}

input_gender.oninput = () => {
	const regex = /[1-4]/;
	const result = input_gender.value.match(regex);
	if(result != null && result.input.length == 1) {
		last_gender_input_value = result[0];
		return;
	} else if(result != null && result.input.length == 2) {
		last_gender_input_value = result.input.substring(1,2) < 5 && result.input.substring(1,2) > 0 ? result.input.substring(1,2) : last_gender_input_value;
	} else if(input_gender.value == null || input_gender.value == "") {
		last_gender_input_value = "";
	}
	input_gender.value = last_gender_input_value;
}

input_middleNumber.oninput = () => {
	const regex_number_input = /^[0-9]{1,4}$/;
	const result = input_middleNumber.value.match(regex_number_input);
	if(result != null && result[0] == input_middleNumber.value) {
		last_middleNumber_input_value = result[0];
		return;
	} else if(input_middleNumber.value == null || input_middleNumber.value == "") {
		last_middleNumber_input_value = "";
	}
	input_middleNumber.value = last_middleNumber_input_value;
}

input_lastNumber.oninput = () => {
	const regex_number_input = /^[0-9]{1,4}$/;
	const result = input_lastNumber.value.match(regex_number_input);
	if(result != null && result[0] == input_lastNumber.value) {
		last_lastNumber_input_value = result[0];
		return;
	} else if(input_lastNumber.value == null || input_lastNumber.value == "") {
		last_lastNumber_input_value = "";
	}
	input_lastNumber.value = last_lastNumber_input_value;
}

all_check.onclick = () => {
	const img = all_check.querySelector("img");
	if (img.style.left == null || img.style.left == "" || img.style.left == '0px') {
		img.style.left = '-69px';
		activeAllFlags();
	} else {
		img.style.left = '0px';
		inactiveAllFlags();
	}
}

cancel_button.onclick = () => {
	location.href = "/member/join";
}

submit_button.onclick = () => {
	const flag = checkFlags();
	const input_flag = checkInputTags();
	if(flag && input_flag) {
		const first_number_tag = document.querySelector("select[name='first-number']");
		const first_number = first_number_tag.options[first_number_tag.selectedIndex].value;
		const middle_number = input_middleNumber.value.match(regex_phone)[0];
		const last_number = input_lastNumber.value.match(regex_phone)[0];
		const phone = `${first_number}-${middle_number}-${last_number}`;
		$.ajax({
			type: "post",
			url: "/member/join/check-phone",
			data: { "phone": phone },
			dataType: "json",
			success: function (data) {
				if(data == true) {
					alert("이미 가입된 휴대폰 번호입니다.\n다시 입력해주세요.");
				} else {
					const name = input_name.value.match(regex_name)[0];
					const birthday = input_birthday.value.match(regex_birthday)[0];
					const gender = input_gender.value.match(regex_gender)[0];
					const telecom_tag = document.querySelector("select[name='telecom']");
					const telecom = telecom_tag.options[telecom_tag.selectedIndex].value;
					$.ajax({
						type: "post",
						url: "/member/join/phone_certificate",
						data: { "name": name,
									  "birthday": birthday,
									  "gender": gender,
									  "telecom": telecom,
									  "phone": phone,
									  "privacy_flag": flags.privacy_flag,
									  "unique_flag": flags.unique_flag,
									  "service_flag": flags.service_flag,
									  "agency_flag": flags.agency_flag },
						dataType: "json",
						success: function(data) {
							console.log(data);
							if(data == true) {
								location.href = "/member/join/signup";
							} else {
								alert("dto is not verified!");
							}
						},
						error: function (xhr, status, error) {
							console.log(xhr);
							console.log(status);
							console.log(error);
						}
					});
				}
			},
			error: function (xhr, status, error) {
				console.log(xhr);
				console.log(status);
				console.log(error);
			}
		});
	} else {
		alert("약관 동의 및 정보 입력을 완료해주세요.");
	}
}

// ------------------------------------------------
// Functions

function checkFlags() {
	return flags.privacy_flag && flags.unique_flag && flags.service_flag && flags.agency_flag;
}

function checkInputTags() {
	if(input_name.value.match(regex_name) == null)						 		return false;
	else if(input_birthday.value.match(regex_birthday) == null) 		return false;
	else if(input_gender.value.match(regex_gender) == null) 				return false;
	else if(input_middleNumber.value.match(regex_phone) == null) 	return false;
	else if(input_lastNumber.value.match(regex_phone) == null) 		return false;
	else return true;	
}

function activeAllFlags() {
	flags.privacy_flag = true;
	flags.unique_flag = true;
	flags.service_flag = true;
	flags.agency_flag = true;
	activeAllCheckBox();
}

function inactiveAllFlags() {
	flags.privacy_flag = false;
	flags.unique_flag = false;
	flags.service_flag = false;
	flags.agency_flag = false;
	inactiveAllCheckBox();
}

function activeAllCheckBox() {
	for (let i = 0; i < check_buttons.length; i++) {
		check_buttons[i].querySelector("img").style.left = '-69px';
	}
}

function inactiveAllCheckBox() {
	for (let i = 0; i < check_buttons.length; i++) {
		check_buttons[i].querySelector("img").style.left = '0px';
	}
}

function getButtonIndex(button) {
	for(let i=0; i<check_buttons.length; i++) {
		if(check_buttons[i] == button)
			return i;
	}
	return -1;
}

function toggleEachFlag(event) {
	const img = event.target.children[0];
	const index = getButtonIndex(event.target);
	
	if(index == -1) return;
	
	switch(index) {
		case 0:
			flags.privacy_flag = flags.privacy_flag == true ? false : true;
			toggleButtonImage(flags.privacy_flag, img);
			break;
		case 1:
			flags.unique_flag = flags.unique_flag == true ? false : true;
			toggleButtonImage(flags.unique_flag, img);
			break;
		case 2:
			flags.service_flag = flags.service_flag == true ? false : true;
			toggleButtonImage(flags.service_flag, img);
			break;
		case 3:
			flags.agency_flag = flags.agency_flag == true ? false : true;
			toggleButtonImage(flags.agency_flag, img);
			break;
	}
}

function toggleButtonImage(flag, image_tag) {
	if(flag == true) {
		image_tag.style.left = '-69px';
	} else {
		image_tag.style.left = '0px';
		const phone_check_img = all_check.querySelector("img");
		if (phone_check_img.style.left == '-69px') {
			phone_check_img.style.left = '0px';
		}
	}
}