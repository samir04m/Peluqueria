$(document).ready(function() {
    $('.slider').slider({
        height: 500
    });
    
    $('.carousel.carousel-slider').carousel({
        fullWidth: true,
        indicators: true
    });


    $('select').material_select();
    $(".button-collapse").sideNav();

    $('.dropdown-button').dropdown({
         belowOrigin: true,
         constrainWidth: false
    });


});
