$(function(){
  $("#new_course .btn").click(function(e){
    e.preventDefault();
    if ( $("#new_course").parsley('validate')){
      $("#new_course").ajaxSubmit();
    }
  })
})