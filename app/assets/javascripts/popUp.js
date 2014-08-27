/**
 * Created by Armin on 8/5/14.
 */
$(document).ready(function() {

    /* popping up */
    $("#mail-list").on("click",function() {
        if($('#popi').is(":hidden")){
            $('#popi').show();
        }else
        $.get('/newsletter', function(data){
            $('#popi').html(data);
            $('#popi').fadeIn();
        });
        $('#popi').addClass ("pppp");
    });

});


$(function(){
    var pop = function(){
        $('body').css({'overflow':'auto'});
        $('#box').css({'display': 'block'});

        var greyScreen = $('<div></div>').attr('id', 'screen');
        $("body").prepend(greyScreen);
        greyScreen.fadeTo("fast",0.7) ;
    }
    $('#mail-list').click(pop);




    var slider = $('#slider').leanSlider({
        directionNav: '#slider-direction-nav',
        controlNav: '#slider-control-nav'
    });
});