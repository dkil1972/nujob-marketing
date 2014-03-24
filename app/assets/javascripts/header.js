function moveTopBlue(){
  $("#top-blue").width($("#header .active").width());
  $("#top-blue").css("left",$("#header .active").position().left);
  $("#header li").mouseover(function(){
    $("#top-blue").width($(this).width());
    $("#top-blue").css("left",$(this).position().left);
  });
  $("#header ul").mouseleave(function(){
    $("#top-blue").width($("#header .active").width());
    $("#top-blue").css("left",$("#header .active").position().left);
  });
}