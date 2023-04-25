document.addEventListener('turbolinks:load', function () {
  menuBar = document.querySelector(".menu-bar")
  if (menuBar != null) {
    menuBar.onclick = handleNavLinks
  }
})

function handleNavLinks() {
  document.querySelector(".nav-links-mobile").classList.toggle("hidden")
}
