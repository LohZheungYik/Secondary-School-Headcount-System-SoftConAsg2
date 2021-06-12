$(document).ready(function () {

    // When the user scrolls the page, execute myFunction
    window.onscroll = function () { myFunction() };

    // Get the navbar
    var toolbar = document.getElementById("toolbar");

    // Get the offset position of the navbar
    var sticky = toolbar.offsetTop;

    // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
    function myFunction() {
        if (window.pageYOffset >= sticky) {
            toolbar.classList.add("sticky")
        } else {
            toolbar.classList.remove("sticky");
        }
    }

});