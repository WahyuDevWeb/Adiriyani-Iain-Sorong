// Small enhancement only: the site still works if JavaScript is disabled.
document.addEventListener("DOMContentLoaded", function () {
  var year = document.getElementById("year");
  if (year) year.textContent = String(new Date().getFullYear());
});


// Editable Friendship Corner fields (saved locally in this browser).
document.addEventListener("DOMContentLoaded", function () {
  document.querySelectorAll("[data-save]").forEach(function (field) {
    var key = "portfolio-" + field.getAttribute("data-save");
    try {
      var saved = localStorage.getItem(key);
      if (saved !== null) field.textContent = saved;
      field.addEventListener("input", function () {
        localStorage.setItem(key, field.textContent.trim());
      });
    } catch (error) {
      // Editing remains available if browser storage is disabled.
    }
  });
});
