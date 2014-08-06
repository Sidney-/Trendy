/**
 * Created by Armin on 8/5/14.
 */
$(document).ready(function() {

    /* poopin up */
    $("#mail-list").on("click",function() {
        if($('#popi').is(":hidden")){
            $('#popi').show();
            $('#screen').show();
        }else
        $.get('/newsletter', function(data){
            $('#popi').html(data);
            $('#popi').fadeIn();
        });
        $('#popi').addClass ("pppp");
    });

    var slider = $('#slider').leanSlider({
        directionNav: '#slider-direction-nav',
        controlNav: '#slider-control-nav'
    });
});