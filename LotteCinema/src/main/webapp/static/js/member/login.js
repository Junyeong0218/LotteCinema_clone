const select_box = document.querySelectorAll(".select-box");
const member_btn = document.querySelectorAll(".member-btn");
const login_btn = document.querySelector(".login");
const not_member_select_btn = document.querySelectorAll(".not-member-select-btn button");
const n_login_input_box = document.querySelectorAll(".n-login-input-box");
const usernameInput = document.querySelector(".username");
const passwordInput = document.querySelector(".password");
const birthSelect = document.querySelectorAll(".birth-select select");
const notMemberLoginBtn = document.querySelector(".not-member-login-btn");
const notLoginInput = document.querySelectorAll(".n-login-input input");
const bookPassword = notLoginInput[2];
const checkBookPassword = notLoginInput[3];
const birthday = document.querySelector("#birthday");
const checkBtn = document.querySelector(".check-btn");
const closeBtn = document.querySelector(".close-btn");
const dim = document.querySelector(".dim");
const notMemberLoginLayer = document.querySelector(".not-member-login-layer");


let passwordIsEmptyFlag = false
let checkPasswordIsEmptyFlag = false;


window.onload = () => {
	setTopBanner();
	setSideBanner();
	setUnderMainBanner();
	setFooterBanner();
	setWholeMenuBanner();
	readjustAsideTop();
	createBirthYear();
}

window.onscroll = (event) => {
	fixControlForHeader(event);
	fixControlForAside(event);
	fixControlForsideBanner(event);
}




function createBirthYear() {
	for (let i = 2023; i > 1900; i--) {
		const year = document.createElement("option");
		year.value = `${i}`;
		year.innerText = `${i}`;
		birthSelect[0].appendChild(year);
	}

	for (let i = 1; i < 13; i++) {
		const month = document.createElement("option");
		const value = String(i).padStart(2, "0");
		month.value = value;
		month.innerText = value;
		birthSelect[1].appendChild(month);
	}

	for (let i = 1; i < 32; i++) {
		const day = document.createElement("option");
		const value = String(i).padStart(2, "0");
		day.value = value;
		day.innerText = value;
		birthSelect[2].appendChild(day);
	}
}





for (let i = 0; i < member_btn.length; i++) {
	member_btn[i].onclick = addClassCurrent;
}

for (let i = 0; i < not_member_select_btn.length; i++) {
	not_member_select_btn[i].onclick = addCurrent;
}


function addCurrent(event) {
	for (let i = 0; i < not_member_select_btn.length; i++) {
		if (not_member_select_btn[i] == event.target) {
			n_login_input_box[i].classList.add("current");
		} else {
			n_login_input_box[i].classList.remove("current");
		}
	}
}

function addClassCurrent(event) {
	for (let i = 0; i < member_btn.length; i++) {
		if (member_btn[i] == event.target) {
			member_btn[i].classList.add("current");
			select_box[i].classList.add("current");
		} else {
			member_btn[i].classList.remove("current");
			select_box[i].classList.remove("current");
		}
	}
}

passwordInput.onkeypress = (e) => { if (e.keyCode == 13) login_btn.click(); }

login_btn.onclick = () => {
	$.ajax({
		url: "/member/login",
		type: "post",
		data: {
			"username": usernameInput.value,
			"password": passwordInput.value
		},
		dataType: "text",
		success: function(data) {
			if (data == "true") {
				location.href = "/index";
			} else {
				alert("아이디 혹은 비밀번호가 틀립니다.")
			}
		},
		error: function() {
			alert("비동기 처리 오류");
		}
	});
}



function birth_date(birthdate) {
	const birthyear = document.querySelector("#birthyear").value;
	const birthmonth = document.querySelector("#birthmonth").value;
	const birthday = document.querySelector("#birthday").value;

	const year = birthyear.slice(2, 4);

	birthdate = year + birthmonth + birthday;
	return birthdate;
}

function isEmpty(str) {
	return str == "" || str == null || typeof str == 'undefined';
}

bookPassword.onfocus = () => {
	passwordIsEmptyFlag = true;
}

bookPassword.onblur = () => {
	if (passwordIsEmptyFlag) {
		if (isEmpty(bookPassword.value)) {
			alert("예매 비밀번호를 입력해주세요.");
			passwordIsEmptyFlag = false;
		}
		passwordIsEmptyFlag = false;
	}
}

checkBookPassword.onfocus = () => {
	checkPasswordIsEmptyFlag = true;
}

checkBookPassword.onblur = () => {
	if (checkPasswordIsEmptyFlag) {
		if (isEmpty(checkBookPassword.value)) {
			alert("예매 비밀번호 확인을 입력해주세요.");
			checkPasswordIsEmptyFlag = false;
		} else {
			password_check();
		}
	}
	checkPasswordIsEmptyFlag = false;
}

function password_check() {
	const bookPasswordInput = notLoginInput[2].value;
	const checkBookPasswordInput = notLoginInput[3].value;

	if (checkBookPasswordInput.length > 3) {
		if (bookPasswordInput != checkBookPasswordInput) {
			alert("두 비밀번호가 다릅니다.");
		}
	}
}


function agree_check() {
	let agreeCheck = document.querySelector("input[name=agree-check]").checked;
	if (!agreeCheck) {
		alert("약관 동의를 클릭해주세요.");
	} else {
		$.ajax({
			type:"post",
			url: "/member/check-phone",
			dataType: "text",
			data: {
				"phone" :notLoginInput[1].value
			},
			success: function(data) {
				if(data=="true"){
					alert("이미 있는 핸드폰 번호입니다.");
				}
			},
			error: function(data){
				alert("비동기 처리 오류");
			}
		})
		
		
	}
}

function loginAsNotMember() {
	$.ajax({
		type: "post",
		url: "/member/not_member_login",
		dataType: "text",
		data: {
			"name": notLoginInput[0].value,
			"phone": notLoginInput[1].value,
			"birth_date": birth_date(),
			"password": notLoginInput[2].value
		},
		success: function(data) {
			if (data == "true") {
				location.replace("/index");
			} 
		},
		error: function(data) {
			alert("비동기 통신 오류");
		}
	});
}

function activeModal() {
	dim.classList.add("active");
	notMemberLoginLayer.classList.add("active");
}

function closeModal() {
	dim.classList.remove("active");
	notMemberLoginLayer.classList.remove("active");
}

notMemberLoginBtn.onclick = () => {
	birth_date();
	agree_check();
	activeModal();
}

closeBtn.onclick = () => {
	closeModal();
}

checkBtn.onclick = () => {
	loginAsNotMember();
}



