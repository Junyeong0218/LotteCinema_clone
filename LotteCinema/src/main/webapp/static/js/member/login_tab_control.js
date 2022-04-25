const select_box = document.querySelectorAll(".select-box");
const member_btn = document.querySelectorAll(".member-btn");
const not_member_buttons = document.querySelectorAll(".not-member-select-btn > button");
const not_member_login = document.querySelector(".not-member-login");
const not_member_reservation = document.querySelector(".not-member-reservation");

window.onload = () => {
	setTopBanner();
    setSideBanner();
    setUnderMainBanner();
    setFooterBanner();
    setWholeMenuBanner();
    readjustAsideTop();
    generateBirthYear();
    generateBirthMonth();
}

window.onscroll = (event) => {
    fixControlForHeader(event);
    fixControlForAside(event);
    fixControlForsideBanner(event);
}

for (let i = 0; i < member_btn.length; i++) {
    member_btn[i].onclick = addClassCurrent;
}

not_member_buttons[0].onclick = () => {
	not_member_login.classList.add("current");
	not_member_reservation.classList.remove("current");
}

not_member_buttons[1].onclick = () => {
	not_member_login.classList.remove("current");
	not_member_reservation.classList.add("current");
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