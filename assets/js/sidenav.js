function toggleNavContent(btn) {
    let sidenav = document.getElementById("sidenav");
    let mainContent = document.getElementById("main-content");

    if( window.innerWidth > 991) {
        sidenav.classList.toggle("sidenav-closed");
        mainContent.classList.toggle("main-content-full");
    } else {
        sidenav.classList.toggle("sidenav-opened");
        mainContent.classList.toggle("main-content-full");
    }
}
// just to change icon and text
function showMoreNews(btn) {
    btn.parentElement.classList.toggle("icon-arrow-down");
    btn.parentElement.classList.toggle("icon-arrow-up");

    if (moreContent.classList.contains("show-more--hide")) {
        btn.innerHTML = "Show Less";
    } else {
        btn.innerHTML = "Show More";
    }
}

function addCalendar(id) {
    console.log(`add id ${id} to calendar`);
}
