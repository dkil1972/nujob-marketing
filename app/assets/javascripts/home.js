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
      minSlides: 2,
      maxSlides: 4,
      slideWidth: 2048,
      pager: false
    });
  });
});
function build_message_div(level, content){
  $("body .alert-dismissable").remove();
  div = "";
  if (content != ""){
    div = '<div class="alert alert-dismissable alert-'+level+'">' + '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'
    for(var i = 0; i < content.length; i++){
      div += content[i] + ".<br />";
    }
  }
  return div;

}