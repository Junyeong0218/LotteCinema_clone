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