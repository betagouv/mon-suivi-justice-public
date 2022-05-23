document.addEventListener("DOMContentLoaded", function () {
  // first get all pages
  fetch('/get_all_pages').then( (res) => {
    console.log('ok!', res);

    var zipCodeSelector = document.getElementById("zip_code_selector");
    console.log(zipCodeSelector);
    zipCodeSelector.addEventListener("change", (e) => {});

  }).catch( (err) => {
    alert("Une erreur s'est produite")
  });


})
