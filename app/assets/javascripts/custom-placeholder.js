function custome_placeholder(){
  $("body").on("focusin",".custom-placeholder input,.custom-placeholder textarea",function(){
    var my_width = $(this).closest(".custom-placeholder").find("label").width();
    var parent_width = $(this).outerWidth();
    var pad_left = parent_width - my_width - 5
    $(this).closest(".custom-placeholder").find("label").css("left",pad_left+"px");
    $(this).css("padding-right",my_width+10+"px");
  })
  $("body").on("focusout",".custom-placeholder input,.custom-placeholder textarea",function(){
    if ($(this).val() == ""){
      $(this).closest(".custom-placeholder").find("label").css("left","15px");
    }
  })
  $(".custom-placeholder input,.custom-placeholder textarea").each(function(){
    if ($(this).is(":focus")) {
      $(this).focusin();
    }
    if ($(this).val() != ""){
      $(this).focusin();
    }
  }) 
  $(".custom-placeholder").on("input paste drop change keyup", "input, textarea", function(){
    if ($(this).val().length) {
      $(this).focusin();
    }
  })
}