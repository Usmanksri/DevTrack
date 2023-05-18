// app/javascript/project_selector.js

document.addEventListener("DOMContentLoaded", function() {
    var projectSelector = document.getElementById("project-selector");
  
    projectSelector.addEventListener("change", function() {
      var selectedProjectId = this.value;
      <%= session[:current_project_id] = %>(selectedProjectId);
    });
  });
  