$(document).on('ready page:load', function () {
  $(document).ready(function(){
    $('.bxslider').bxSlider({
      mode: 'horizontal',
      infiniteLoop: false,
      hideControlOnEnd: false,
      slideMargin: 30,
      minSlides: 2,
      maxSlides: 4,
      slideWidth: 2048    
    });
  });
});