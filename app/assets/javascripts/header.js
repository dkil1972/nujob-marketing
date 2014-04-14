function moveTopBlue(){
  if ($("#header .active").length) {
    active_li = $("#header .active");
  }
  else{
    active_li = $("#header .default-active");
  }
  $("#top-blue").width(active_li.width());
  $("#top-blue").css("left",active_li.position().left);
  $("#header li").mouseover(function(){
    $("#top-blue").width($(this).width());
    $("#top-blue").css("left",$(this).position().left);
  });
  $("#header ul").mouseleave(function(){
    $("#top-blue").width(active_li.width());
    $("#top-blue").css("left",active_li.position().left);
  });
};
$(function(){
  custome_placeholder();
})