const promotion_buttons = document.querySelectorAll(".promotion-button");

for (let i = 0; i < promotion_buttons.length; i++) {
    promotion_buttons[i].onclick = toggleDescription;
}

window.onscroll = (event) => {
    fixControlForHeader(event);
    fixControlForAside(event);
    fixControlForsideBanner(event);
}

window.onload = () => {
    setTopBanner();
    setSideBanner();
    setUnderMainBanner();
    setFooterBanner();
    setWholeMenuBanner();
    readjustAsideTop();
}

function toggleDescription(event) {
    const button = event.target;
    if (button.className.includes("active"))
        button.classList.remove("active");
    else
        button.classList.add("active");
}