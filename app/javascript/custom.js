
  //= require jquery3
  //= require jquery
//= require jquery_ujs
  $(document).ready(function() {
    $('#show-comment-form').click(function() {
      $('#comment-form').toggle();
      $(this).hide(); // Hide the button
    });
  });
