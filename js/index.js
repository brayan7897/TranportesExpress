const navToggle = document.querySelector(".nav-toggle");
const navMenu = document.querySelector(".navegador");
let controlscroll = true;

navToggle.addEventListener("click", () => {
    navMenu.classList.toggle("nav-menu_visible");
    
    if (controlscroll) {
        controlscroll=false;
    }else{
        controlscroll=true;
    }

    if (navMenu.classList.contains("nav-menu_visible")) {
    navToggle.setAttribute("aria-label", "Cerrar menú");
    } else {
    navToggle.setAttribute("aria-label", "Abrir menú");
    }
});

$(document).on("scroll", function(){
    if(controlscroll==false)
    {
        navMenu.classList.toggle("nav-menu_visible");
        controlscroll=true;
    }
})