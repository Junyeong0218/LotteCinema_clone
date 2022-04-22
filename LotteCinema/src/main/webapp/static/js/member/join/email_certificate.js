const all_check = document.querySelector(".general-agreement-checkbox");
const lpoint_buttons = document.querySelectorAll(".lpoint-checkbox .general-agreement-checkbox");
const lotte_cultureworks = document.querySelectorAll(".lotte-cultureworks .general-agreement-checkbox");
const lpoint_flags = [false, false, false, false, false];
const lotte_flags = [false, false, false];
const cancel_button = document.querySelector(".btn-center").children[0];
const submit_button = document.querySelector(".btn-center").children[0];

// ----------------------------------------------------
// EventListeners

for (let i = 0; i < lpoint_buttons.length; i++) {
    lpoint_buttons[i].onclick = () => {
		const img = lpoint_buttons[i].querySelector("img");
        if (img.className.includes("checked")) {
			img.classList.remove("checked");
			lpoint_flags[i] = false;
			all_check.classList.remove("checked");
        } else {
			img.classList.add("checked");
			lpoint_flags[i] = true;
        }
    }
}

for (let i = 0; i < lotte_cultureworks.length; i++) {
    lotte_cultureworks[i].onclick = () => {
		const img = lotte_cultureworks[i].querySelector("img");
        if (img.className.includes("checked")) {
            img.classList.remove("checked");
            lotte_flags[i] = false;
            all_check.querySelector("img").classList.remove("checked");
        } else {
            img.classList.add("checked");
            lotte_flags[i] = true;
        }
    }
}

all_check.onclick = () => {
	const img = all_check.querySelector("img");
    if (img.className.includes("checked")) {
		img.classList.remove("checked");
        inactiveAllFlags();
    } else {
		img.classList.add("checked");
        activeAllFlags();
    }
}

cancel_button.onclick = () => {
	location.href = "/member/join";
}

submit_button.onclick = () => {
	if(!checkFlags()) {
		alert("필수 약관을 체크해주세요.");
		return;
	}
	flags = {
	"l_point_flag": false,
	"private_necessary": false,
	"private_optional": false,
	"third_party_necessary": false,
	"third_party_optional": false,
	"subsidiary_flag": false,
	"culture_necessary": false,
	"culture_optional": false
};
	$.ajax({
		type: "post",
		url: "/member/join/email_certificate",
		data: { "l_point_flag": lpoint_flags[0],
					  "private_necessary": lpoint_flags[1],
				  	  "private_optional": lpoint_flags[2],
					  "third_party_necessary": lpoint_flags[3],
					  "third_party_optional": lpoint_flags[4],
					  "subsidiary_flag": lotte_flags[0],
					  "culture_necessary": lotte_flags[1],
					  "culture_optional": lotte_flags[2] },
		dataType: "json",
		success: function (data) {
			if(data == true) {
				location.href = "/member/join/signup";
			} else {
				alert("약관 동의 정보 전송 실패");
			}
		},
		error: function (xhr, status, error) {
			console.log(xhr);
			console.log(status);
			console.log(error);
		}
	});
}

// ----------------------------------------------------
// Funcitons

function checkFlags() {
	return lpoint_flags[0] && lpoint_flags[1] && lpoint_flags[3] && lotte_flags[0] && lotte_flags[1];
}

function activeAllFlags() {
	for(let i = 0; i < lotte_flags.length; i++) {
		lotte_flags[i] = true;
	}
	for(let i = 0; i < lpoint_flags.length; i++) {
		lpoint_flags[i] = true;
	}
	
	toggleAllLpoint("on");
	toggleAllCultureworks("on");
}

function inactiveAllFlags() {
	for(let i = 0; i < lotte_flags.length; i++) {
		lotte_flags[i] = false;
	}
	for(let i = 0; i < lpoint_flags.length; i++) {
		lpoint_flags[i] = false;
	}
	
	toggleAllLpoint("off");
	toggleAllCultureworks("off");
}

function toggleAllLpoint(toggle) {
    for (let i = 0; i < lpoint_buttons.length; i++) {
		const img = lpoint_buttons[i].querySelector("img");
        if (toggle == "on") img.classList.add("checked");
        else 						  img.classList.remove("checked");
    }
}

function toggleAllCultureworks(toggle) {
    for (let i = 0; i < lotte_cultureworks.length; i++) {
		const img = lotte_cultureworks[i].querySelector("img");
        if (toggle == "on") img.classList.add("checked");
        else 						  img.classList.remove("checked");
    }
}