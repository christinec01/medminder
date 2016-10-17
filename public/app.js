console.log("I'm at the top of the file")
$(document).ready(function(){
  console.log("I;m here!")
  $(".new-user-form").hide();
  eventListener();
});

var eventListener = function(){

  $(".title").on("click", function(event){
    event.preventDefault();
    $(".new-user-form").show();
  });
}
