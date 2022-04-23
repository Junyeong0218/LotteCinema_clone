const select_box = document.querySelectorAll(".select-box");
const member_btn = document.querySelectorAll(".member-btn");
const login_btn = document.querySelector(".login");
const usernameInput = document.querySelector(".username");
const passwordInput = document.querySelector(".password");


window.onload = () => {
	setTopBanner();
    setSideBanner();
    setUnderMainBanner();
    setFooterBanner();
    setWholeMenuBanner();
    readjustAsideTop();
}

window.onscroll = (event) => {
    fixControlForHeader(event);
    fixControlForAside(event);
    fixControlForsideBanner(event);
}

for (let i = 0; i < member_btn.length; i++) {
    member_btn[i].onclick = addClassCurrent;
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
		url:"/member/login",
		type:"post",
		data:{
			"username":usernameInput.value,
			"password":passwordInput.value
		},
		dataType:JSON.parse,
		success: function(data){
			if(data == true){
				alert("로그인 성공");
			}else {
				alert("잘못된 접근입니다.")
			}
		},
		error: function() {
			alert("비동기 처리 오류");
		}
	});
}




