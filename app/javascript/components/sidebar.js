// Look for .hamburger
const mediaQuery = window.matchMedia('(max-width: 600px)')

function sidebarFunction(){
    var hamburger = document.querySelector(".hamburger");
    // On click
    hamburger.addEventListener("click", function() {
        // Toggle class "is-active"
        hamburger.classList.toggle("is-active");
        $(".menu").toggleClass("sidenav-open");
        $(".menu-links").toggleClass("menu-links-open");
        $(".socials").toggleClass("socials-open");
        if (mediaQuery.matches) {
            $(".page-title").toggle();
            // Do something else, like open/close menu
        }
    });
}

export {sidebarFunction};