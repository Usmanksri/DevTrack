
// Import dependencies
import { Tooltip, Popover } from 'bootstrap';
import 'trix';
import 'trix/dist/trix.css';


// Your custom JavaScript code
document.addEventListener('DOMContentLoaded', () => {

  $('input[type="radio"][name^="status_"]').change(function() {
    var taskID = $(this).data('taskId'); // Updated to use 'taskId'
    var status = $(this).val();
    var taskURL = '/tasks/' + taskID; // Replace with the actual URL or path to the task

    console.log("task url is: ", taskURL);

    $.ajax({
      url: taskURL,
      type: 'PATCH',
      beforeSend: function(xhr) {
        xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'));
      },
      data: { task: { status: status } },
      dataType: 'json',
      success: function(response) {
        console.log(response);
        // Handle success response here if needed
        // Update the task status display if necessary
      },
      error: function(xhr, status, error) {
        console.log("exception occured ",error);
        // Handle error response here if needed
      }
    });

});


});

// Bootstrap specific functionality
document.addEventListener('turbolinks:load', () => {
    console.log("in document");

  // Enable Bootstrap tooltips
  var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
  tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new Tooltip(tooltipTriggerEl);
  });

  // Enable Bootstrap popovers
  var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'));
  popoverTriggerList.map(function (popoverTriggerEl) {
    console.log("in document");

    return new Popover(popoverTriggerEl);
  });

  console.log("in document");

  // Your additional Bootstrap-related code
});

