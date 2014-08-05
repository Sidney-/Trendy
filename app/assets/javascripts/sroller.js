/**
 * Created by Armin on 8/5/14.
 */


$(document).ready(function(){

    if(document.URL.search("\\?1")>0)
    {
        console.log(document.URL) ;
            $('html, body').animate({
            scrollTop: $(".Scontant").offset().top
            }, 2000);

    }
    if(document.URL.search("\\?2")>0)
    {        $('html, body').animate({
            scrollTop: $(".Spolicy").offset().top
        }, 2000);


    }
        if(document.URL.search("\\?3")>0)
        {
        $('html, body').animate({
            scrollTop: $(".Stos").offset().top
        }, 2000);
}
    if(document.URL.search("\\?4")>0)
    {             $('html, body').animate({
            scrollTop: $(".Sabout").offset().top
        }, 2000);
    }
});

