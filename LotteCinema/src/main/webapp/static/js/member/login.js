const select_box = document.querySelectorAll(".select-box");
const member_btn = document.querySelectorAll(".member-btn");

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