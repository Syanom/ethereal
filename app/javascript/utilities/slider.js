document.addEventListener('turbolinks:load', function () {
  document.querySelector('.arrow-left').addEventListener('click', changeSlide)
  document.querySelector('.arrow-right').addEventListener('click', changeSlide)
  setInterval(function () { document.querySelector('.arrow-right').click(); }, 5000);
})

function changeSlide(e) {
  slider = document.querySelector('.slider')
  if (slider.classList.contains('scrolling')) return
  slider.classList.add('scrolling')
  let offset = e.target.classList.contains('arrow-left') ? -1 : 1
  let slides = document.querySelector('.slides')
  console.log(slides.parentElement.scrollLeft)
  slides.parentElement.scrollTo({
    top: 0,
    left: slides.parentElement.scrollLeft + document.body.clientWidth * offset,
    behavior: 'smooth'
  })
  setTimeout(() => slider.classList.remove('scrolling'), 1000)
}