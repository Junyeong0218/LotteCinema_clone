const card_buttons = document.querySelectorAll(".logo-img");
const certificate_buttons = document.querySelectorAll("input[type='radio']");
const number_inputs = document.querySelectorAll("input[type='number']");
const message_span = document.querySelector(".form-message");
const cancel_button = document.querySelector(".btn-center").children[0];
const submit_button = document.querySelector(".btn-center").children[1];

let checked_card_company;
let certificate_flag;
let card_number;

// ------------------------------------------------------
// EventListeners

for(let i = 0; i < card_buttons.length; i++) {
	card_buttons[i].onclick = activeCardButton;
}

for(let i = 0; i < certificate_buttons.length; i++) {
	certificate_buttons[i].onclick = () => certificate_flag = i;
}

for(let i=0 ; i < number_inputs.length; i++) {
	number_inputs[i].oninput = checkPhoneNumber;
}

cancel_button.onclick = () => location.href = "/member/join";
submit_button.onclick = () => {
	const flag = checkFlags();
	console.log(flag);
	console.log(checked_card_company);
	console.log(certificate_flag);
	if(flag == false) {
		alert("카드 인증을 마무리해주세요.");
		return;
	} else {
		$.ajax({
			type: "post",
			url: "/member/join/card_certificate",
			data: { "card_company": checked_card_company, 
						  "certificate_flag": certificate_flag,
						  "card_number": card_number },
			success: function (data) {
				if(data == true) {
					location.href = "/member/join/signup";
				} else {
					alert("데이터 전송에 실패했습니다.\n다시 시도해주세요.");
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


// ------------------------------------------------------
// Funcitons

function checkPhoneNumber(event) {
	const each_regex = /[0-9]{4}/;
	const each_result = event.target.value.match(each_regex);
	if(each_result == null) return;
	if(each_result.input.length > 4) event.target.value = each_result[0];
	
	let isEmpty = true;
	const numbers = [];
	for(let i=0; i < number_inputs.length; i++) {
		if(number_inputs[i].value != null && number_inputs[i].value != "") {
			isEmpty = false;
			numbers.push(number_inputs[i].value);
		} else {
			isEmpty = true;
		}
	}
	if(isEmpty == false) {
		card_number = numbers.join("-");
		const regex = /[0-9]{4}\-[0-9]{4}\-[0-9]{4}\-[0-9]{4}/;
		const result = card_number.match(regex);
		if(result == null) {
			message_span.innerText = "카드번호를 정확히 입력해주세요.";
			message_span.classList.add("red");
			message_span.classList.remove("green");
		} else {
			$.ajax({
				type: "post",
				url: "/member/join/check-card-number",
				data: { "card_number": card_number },
				dataType: "json",
				success: function (data) {
					if(data == true) {
						message_span.innerText = "이미 가입된 카드번호입니다.";
						message_span.classList.add("red");
						message_span.classList.remove("green");
					} else {
						message_span.innerText = "사용가능한 카드번호입니다.";
						message_span.classList.remove("red");
						message_span.classList.add("green");
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
}

function checkFlags() {
	const regex = /[0-9]{4}\-[0-9]{4}\-[0-9]{4}\-[0-9]{4}/;
	if(card_number == null || typeof card_number == "undefined")
		return false;
	const result = card_number.match(regex); 
	return certificate_flag != null && certificate_flag > - 1 && certificate_flag < 3 &&
				 checked_card_company != null && typeof checked_card_company != "undefined" &&
				 checked_card_company.split("_")[1] == "card" &&
				 result != null && result[0] == result.input;
}

function activeCardButton(event) {
	for(let i = 0 ; i < card_buttons.length; i++) {
		if(card_buttons[i] == event.target) {
			card_buttons[i].classList.add("checked");
			checked_card_company = checkedCardCompany(i);
		} else {
			card_buttons[i].classList.remove("checked");
		}
	}
}

function checkedCardCompany(index) {
	switch(index) {
		case 0: return "lotte_card";
		case 1: return "kb_card";
		case 2: return "shinhan_card";
		case 3: return "bc_card";
		case 4: return "hyundai_card";
		case 5: return "nh_card";
		case 6: return "hana_card";
		case 7: return "samsung_card";
	}
}