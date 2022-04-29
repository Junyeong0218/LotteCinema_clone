const general_agreement_checkbox = document.querySelector(".general-agreement-checkbox");
const lpoint_buttons = document.querySelectorAll(".lpoint-checkbox .general-agreement-checkbox");
const lotte_cultureworks = document.querySelectorAll(".lotte-cultureworks .general-agreement-checkbox");
const certification = document.querySelector(".certification");

let certificateChecked = [false, false, false, false, false, false, false, false]






for (let i = 0; i < lpoint_buttons.length; i++) {
    lpoint_buttons[i].onclick = () => {
        const img = lpoint_buttons[i].querySelector("img");
        if (img.style.left == null || img.style.left == "" || img.style.left == '0px') {
            img.style.left = '-69px';
            certificateChecked[i] = true;
        } else {
            img.style = '';
            general_agreement_checkbox.querySelector("img").style = '';
            certificateChecked[i] = false;
        }
    }
}

for (let i = 0; i < lotte_cultureworks.length; i++) {
    lotte_cultureworks[i].onclick = () => {
        const img = lotte_cultureworks[i].querySelector("img");
        if (img.style.left == null || img.style.left == "" || img.style.left == '0px') {
            img.style.left = '-69px';
            certificateChecked[i + 5] = true;
        } else {
            img.style = '';
            general_agreement_checkbox.querySelector("img").style = '';
            certificateChecked[i + 5] = false;
        }
    }
}

general_agreement_checkbox.onclick = () => {
    const img = general_agreement_checkbox.querySelector("img");
    if (img.style.left == null || img.style.left == "" || img.style.left == '0px') {
        img.style.left = '-69px';
        toggleAllLpoint("on");
        toggleAllCultureworks("on");
    } else {
        img.style = '';
        toggleAllLpoint("off");
        toggleAllCultureworks("off");
    }
}

function toggleAllLpoint(toggle) {
    for (let i = 0; i < lpoint_buttons.length; i++) {
        const img = lpoint_buttons[i].querySelector("img");
        if (toggle == "on") {
            img.style.left = '-69px';
            certificateChecked[i] = true;
        } else {
            img.style = '';
            certificateChecked[i] = false;
        }
    }
}

function toggleAllCultureworks(toggle) {
    for (let i = 0; i < lotte_cultureworks.length; i++) {
        const img = lotte_cultureworks[i].querySelector("img");
        if (toggle == "on") {
            img.style.left = '-69px';
            certificateChecked[i + 5] = true;
        } else {
            img.style = '';
            certificateChecked[i + 5] = false;
        }
    }
}
function essentialCertificateCheck(){
	return certificateChecked[0] &&
		   certificateChecked[1] &&
		   certificateChecked[3] &&
		   certificateChecked[5] &&
		   certificateChecked[6];
	}
		  	
		  	
certification.onclick = () => {
	if(!essentialCertificateCheck()) return;
	
	$.ajax({
		url: "/member/join/email",
		type: "post",
		data: {
			"member_certificate" : certificateChecked[0],
			"privacy_essential_agreement" : certificateChecked[1],
			"privacy_choice_agreement" : certificateChecked[2],
			"third_party_agreement" : certificateChecked[3],
			"third_party_choice_agreement": certificateChecked[4],
			"lotte_company_certificate" : certificateChecked[5],
			"essential_agreement" : certificateChecked[6],
			"choice_agreement" : certificateChecked[7]
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