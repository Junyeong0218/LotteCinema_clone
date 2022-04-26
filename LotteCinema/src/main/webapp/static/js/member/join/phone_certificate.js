const phone_check = document.querySelector(".phone-check button");
const check_box_wrapper = document.querySelectorAll(".check-box");
const certification = document.querySelector(".certification");
const inputName = document.querySelector(".input-name input");
const birthdate = document.querySelector(".input-date-ft input");
const gender = document.querySelector(".input-date-bk input");
const telecom = document.querySelector("#telecom");
const last_number = document.querySelector(".last-number");
let phone_number;
let certificateIndex = [false, false, false, false];

	
function phoneNumber() {
	const first_phone_number = document.querySelector("#first-number").value;
	const middle_number = document.querySelector(".middle-number").value;
	const last_number = document.querySelector(".last-number").value;
	phone_number = first_phone_number+ "-" + middle_number + "-" + last_number;
	const regExp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
	
	if(phone_number.match(regExp)==null){
		return false;
	}else {
		return true;
	}
}


function certificateCheck() {
	return certificateIndex[0] && certificateIndex[1] && certificateIndex[2] && certificateIndex[3];
}

certification.onclick = () => {
	if(!phoneNumber() || !certificateCheck()) return;
	
	$.ajax({
		url: "/member/join/phone",
		type: "post",
		data: {
			"privacy_agreement": certificateIndex[0],
			"unique_information_agreement": certificateIndex[1],
			"service_agreement": certificateIndex[2],
			"mobile_agreement": certificateIndex[3],
			"name_kor_or_eng": inputName.value,
			"birth_date": birthdate.value,
			"gender": gender.value,
			"telecom": telecom.value,
			"phone_number": phone_number
		},
		dataType: "text",
		success: function(data){
			if(data == "true"){
				location.href = "/member/join/signup";
			}
		},
		error: function(data){
			alert("비동기 통신 오류");
		}
	});
}


for (let i = 0; i < check_box_wrapper.length; i++) {
	check_box_wrapper[i].onclick = (event) => {
		activeCheckBox(event, i);
	}
}

phone_check.onclick = () => {
	const img = phone_check.querySelector("img");
	if (img.style.left == null || img.style.left == "" || img.style.left == '0px') {
		img.style.left = '-69px';
		activeAllCheckBox();
		// .check-box 안에 버튼들 모두  img.style.left = '-69px';
	} else {
		img.style.left = '0px';
		inactiveAllCheckBox();
	}
}

function activeAllCheckBox() {
	for (let i = 0; i < check_box_wrapper.length; i++) {
		check_box_wrapper[i].querySelector("img").style.left = '-69px';
		certificateIndex[i] = true;
	}
}

function inactiveAllCheckBox() {
	for (let i = 0; i < check_box_wrapper.length; i++) {
		check_box_wrapper[i].querySelector("img").style.left = '0px';
		certificateIndex[i] = false;
	}
}

function activeCheckBox(event, index) {
	const img = event.target.children[0];
	if (img.style.left == null || img.style.left == "" || img.style.left == '0px') {
		certificateIndex[index] = true;
		img.style.left = '-69px';
	} else {
		img.style.left = '0px';
		const phone_check_img = phone_check.querySelector("img");
		if (phone_check_img.style.left == '-69px') {
			certificateIndex[index] = true;
			phone_check_img.style.left = '0px';
		}
	}
}