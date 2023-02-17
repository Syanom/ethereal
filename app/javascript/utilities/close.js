document.addEventListener('turbolinks:load', function () {
  document.querySelectorAll(".close").forEach(btn => {
    btn.addEventListener('click', hideParent)
  });
})

function hideParent(event) {
  event.target.parentElement.classList.add('hidden')
}