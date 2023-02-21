document.addEventListener('turbolinks:load', function () {
  if (document.querySelector('.add-show-wrap') != null) {
    document.querySelectorAll(".add-show-image").forEach(btn => {
      btn.addEventListener('click', changeMain)
    });
  }
})

function changeMain(e) {
  document.querySelector('.add-show-image-active').src = e.target.src
}