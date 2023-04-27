document.addEventListener('turbolinks:load', function () {
  if ((document.querySelector('.add-show-wrap') != null) || (document.querySelector('.add-show-top-mobile') != null)) {
    document.querySelectorAll(".add-show-image").forEach(btn => {
      btn.addEventListener('click', changeMain)
    });
    document.querySelector('.add-arrow-left').addEventListener('click', changeImage)
    document.querySelector('.add-arrow-right').addEventListener('click', changeImage)
  }
})

function changeMain(e) {
  document.querySelector('.add-show-image-active').src = e.target.src
  document.querySelector('.active-image').classList.remove('active-image')
  e.target.classList.add('active-image')
}

function changeImage(e) {
  let imageToActivate = null
  if (e.target.classList.contains('add-arrow-right')) {
    imageToActivate = document.querySelector('.active-image').nextSibling
    if (imageToActivate == null) {
      imageToActivate = document.querySelector('.active-image').parentNode.firstChild
    }
  } else {
    imageToActivate = document.querySelector('.active-image').previousSibling
    if (imageToActivate == null) {
      imageToActivate = document.querySelector('.active-image').parentNode.lastChild
    }
  }
  document.querySelector('.active-image').classList.remove('active-image')
  document.querySelector('.add-show-image-active').src = imageToActivate.src
  imageToActivate.classList.add('active-image')
}