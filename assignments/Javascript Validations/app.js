$(document).ready(function() {

  $('#age').keyup(function(){
  var age = $('#age').val();
  var error = $('.error');
    if (isNaN(age)) {
      error.removeClass("hidden");
    } else {
      error.addClass("hidden");
    }
  });

  $('#phone').keyup(function() {
  var phone = $('#phone').val()
  var error = $('.error');
    if (isNaN(phone) || phone.toString().length != 10) {
      error.removeClass("hidden");
    } else {
      error.addClass("hidden");
    }
  });

});