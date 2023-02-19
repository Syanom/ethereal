document.addEventListener('turbolinks:load', function () {
  document.querySelector('.arrow-left').addEventListener('click', changeSlide)
  document.querySelector('.arrow-right').addEventListener('click', changeSlide)
  setInterval(function () { document.querySelector('.arrow-right').click(); }, 5000);
})

function changeSlide(e) {
  let offset = e.target.classList.contains('arrow-left') ? -1 : 1
  let slides = document.querySelector('.slides')
  console.log(slides.scrollLeft)
  slides.parentElement.scrollTo({
    top: 0,
    left: slides.parentElement.scrollLeft + document.body.clientWidth * offset,
    behavior: 'smooth'
  })
}