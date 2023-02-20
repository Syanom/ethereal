document.addEventListener('turbolinks:load', function () {
  document.querySelector('.arrow-left').addEventListener('click', changeSlide)
  document.querySelector('.arrow-right').addEventListener('click', changeSlide)
  document.querySelector('.slider').scrollLeft += document.body.clientWidth
  for (i = 0; i < 100; i++) {
    window.clearInterval(i);
  }
  setInterval(function () { document.querySelector('.arrow-right').click(); }, 4000);
})

function changeSlide(e) {
  slider = document.querySelector('.slider')
  if (slider.classList.contains('scrolling')) return
  slider.classList.add('scrolling')
  let offset = e.target.classList.contains('arrow-left') ? -1 : 1
  let slides = document.querySelector('.slides')
  slides.parentElement.scrollTo({
    top: 0,
    left: slides.parentElement.scrollLeft + document.body.clientWidth * offset,
    behavior: 'smooth'
  })
  setTimeout(() => {
    if (offset == 1) {
      slides.appendChild(slides.removeChild(slides.children[0]))
      slides.parentElement.scrollLeft -= document.body.clientWidth
    } else {
      slides.prepend(slides.removeChild(slides.children[slides.children.length - 1]))
      slides.parentElement.scrollLeft += document.body.clientWidth
    }
    slider.classList.remove('scrolling')
  }, 1000)
}