$(document).on('ready page:load', function () {
  $(document).ready(function(){
    $('.bxslider').bxSlider({
      mode: 'horizontal',
      infiniteLoop: false,
      hideControlOnEnd: true,
      nextImage: '/assets/Arrow_Right_Hover.png',
      prevImage: '/assets/Arrow_Left_Hover.png',
      prevText: '',
      nextText: '',
      slideMargin: 30,
      minSlides: 2,
      maxSlides: 4,
      slideWidth: 2048,
      pager: false
    });
  });
});