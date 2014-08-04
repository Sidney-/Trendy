

ready =  ->
  $('#pull').on 'click' , =>
    pull 		= $('#pull');
    menu 		= $('nav ul');
    menu.slideToggle()
$(document).ready(ready)
$(document).on('page:load', ready)