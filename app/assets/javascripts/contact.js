$(function(){
  $("#new_message .btn").click(function(e){
    e.preventDefault();
    if ( $("#new_message").parsley('validate')){
      $("#new_message").ajaxSubmit();
    }
  })
})