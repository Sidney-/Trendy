/**
 * Created by Armin on 8/5/14.
 */
$(document).ready(function(){


    if ($( window ).width()>640)
        $("#top-banner-text-large").text('MENTION THIS AD AND SAVE 20%! | (310) 392-0055');
    if ($( window ).width()<640)
        $("#top-banner-text-large").text('SHOP TRENDY (310) 392-0055');


    if(document.URL.search("\\?4")>0){
        console.log(document.URL) ;
            $('html, body').animate({
            scrollTop: $(".Scontant").offset().top
            }, 1000);
    }
    if(document.URL.search("\\?2")>0){
        $('html, body').animate({
            scrollTop: $(".Spolicy").offset().top
        }, 1000);
    }

    if(document.URL.search("\\?3")>0){
        $('html, body').animate({
            scrollTop: $(".Stos").offset().top
        }, 1000);
    }
    if(document.URL.search("\\?1")>0){
        $('html, body').animate({
            scrollTop: $(".Sabout").offset().top
        }, 1000);
    }
});



$( window ).resize(function() {

    if ($( window ).width()>0)
    {
        menu 		= $('nav ul');
        menu.css("display", "")

    }
    if($( "#popi" ).hasClass( "pppp" ))
    $('#screen').css({ opacity: 0.7, 'width':$(document).width(),'height':$(document).height()});
    if ($( window ).width()>640)
        $("#top-banner-text-large").text('MENTION THIS AD AND SAVE 20%! | (310) 392-0055');
    if ($( window ).width()<640)
        $("#top-banner-text-large").text('SHOP TRENDY (310) 392-0055');
});