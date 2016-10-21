$(document).ready(function(){
  // $(".new-user-form").hide();
  // $(".login-form").hide();
  // eventListener();

  sendText();
});

var eventListener = function(){

  $(".new-user").on("click", function(event){
    // event.preventDefault();
    $(".new-user-form").show();
  });
}

var userLoginForm = function() {
  $(".login").on("click", function(event){
    console.log("here")
    // event.preventDefault();
    $.post("/sessions/login")
  })
}

var sendText = function() {
  $(document).on("click", ".send-text", function(event){

    $.post("/send_sms_text", {message:"Remember to take your: "+ $(this).attr('name')})

  })
}
