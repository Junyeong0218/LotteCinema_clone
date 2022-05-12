const inputRadio = document.querySelectorAll("input[type=radio]");
const innerContent = document.querySelectorAll(".inner-content");
const uiRadio = document.querySelectorAll(".ui-radio");
const uiInput = document.querySelectorAll(".ui-input");

uiRadioChecked();
uiInputFocus();
uiInputBlur();

function uiRadioChecked() {
	for(let i = 0; i < uiRadio.length; i++){
		uiRadio[i].onclick = () => {
			checked();
		}
	}
}


function checked() {
	for(let i = 0; i < inputRadio.length; i++){
		if(inputRadio[i].checked){
			innerContent[i].classList.add("active");
		}else {
			innerContent[i].classList.remove("active");
		}
	}
}

function uiInputBlur() {
	for(let i = 0; i < uiInput.length; i++){
		uiInput[i].querySelector("input").onblur = () => {
			uiInput[i].querySelector(".ui-input-index").classList.remove("_focus");
		}
	}
}

function uiInputFocus() {
	for(let i = 0; i < uiInput.length; i++) {
		uiInput[i].onclick = () => {
			uiInput[i].querySelector(".ui-input-index").classList.add("_focus");
		}
	}
}

