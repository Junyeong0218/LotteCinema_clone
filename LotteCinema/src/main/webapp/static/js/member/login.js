const select_box = document.querySelectorAll(".select-box");
const member_btn = document.querySelectorAll(".member-btn");
const login_btn = document.querySelector(".login");
const not_member_select_btn = document.querySelectorAll(".not-member-select-btn button");
const n_login_input_box = document.querySelectorAll(".n-login-input-box");
const usernameInput = document.querySelector(".username");
const passwordInput = document.querySelector(".password");
const birthSelect = document.querySelectorAll(".birth-select select"); 


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
	
	for(let i = 1; i < 13; i++) {
		const month = document.createElement("option");
		month.value = `${i}`;
		month.innerText = `${i}`;
		birthSelect[1].appendChild(month);
	}
	
	for(let i = 1; i < 32; i++) {
		const day = document.createElement("option");
		day.value = `${i}`;
		day.innerText = `${i}`;
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




