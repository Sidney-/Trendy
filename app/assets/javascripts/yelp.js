
$(document).ready(function(){

    var s = document.createElement("script");
    s.async = true;
    s.onload = s.onreadystatechange = function()
    {getYelpWidget("trendy-sunglasses-santa-monica","223","RED","y","y","0");};
    s.src='yelpv2.js' ;
    var x = document.getElementsByTagName('script')[0];x.parentNode.insertBefore(s, x);
    $('html, body').animate({
        scrollTop: $("#box-center").offset().top
    }, 2000);
});

