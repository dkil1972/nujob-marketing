$(function(){
  $(".blog-box-2").on("click","#osmek_older",function(){
    var current_page = parseInt($("#current_page").val())+1;
    $.ajax({
      url: "/blog",
      dataType: "script",
      data: {current_page: current_page}
    });
  })
  $(".blog-box-2").on("click","#osmek_newer",function(){
    var current_page = parseInt($("#current_page").val())-1;
    $.ajax({
      url: "/blog",
      dataType: "script",
      data: {current_page: current_page}
    });
  })
  $(document).ajaxSend(function(event, request, settings) {
    $('#loading-indicator').modal("show");
  });

  $(document).ajaxComplete(function(event, request, settings) {
    $('#loading-indicator').modal("hide");
  });
  $("#current_page").val(0);
})