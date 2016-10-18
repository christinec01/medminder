$(document).ready(function(){
  $(".new-user-form").hide();
  $(".login-form").hide();
  eventListener();
  userLoginForm();
});

var eventListener = function(){

  $(".new-user").on("click", function(event){
    // event.preventDefault();
    $(".new-user-form").show();
  });
}

var userLoginForm = function() {
  $(".login").on("click", function(event){
    // event.preventDefault();
    $(".login-form").show();
  })
}
