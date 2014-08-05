/**
 * Created by Armin on 8/5/14.
 */

$(document).ready(function() {

    /* poopin up */
    $("#mail-list").on("click",function() {
        $.get('/newsletter', function(data){
            $('.popi').html(data);
            $('.popi').fadeIn();


        });


    });


    var slider = $('#slider').leanSlider({
        directionNav: '#slider-direction-nav',
        controlNav: '#slider-control-nav'
    });





});
