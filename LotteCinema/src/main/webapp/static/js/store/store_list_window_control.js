window.onscroll = (event) => {
    fixControlForHeader(event);
    fixControlForTab(event);
    fixControlForAside(event);
    fixControlForsideBanner(event);
    moveTabUnderline();
}

window.onload = () => {
    setTopBanner();
    setSideBanner();
    setUnderMainBanner();
    setFooterBanner();
    setWholeMenuBanner();
    readjustAsideTop();
    detectTopBannerHeight();
}