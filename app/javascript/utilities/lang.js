document.addEventListener('turbolinks:load', function () {
  setCurrentLanguage()
  document.querySelector(".current-lang").addEventListener('click', handleDropdown)
  document.querySelectorAll(".lang-option").forEach(btn => {
    btn.addEventListener('click', changeLang)
  });
  window.onclick = closeDropdown
})

function setCurrentLanguage() {
  let current_lang = getCurrentLang()
  document.querySelector(".current-lang").childNodes[0].nodeValue = current_lang.charAt(0).toUpperCase() + current_lang.slice(1)
  document.getElementById(current_lang).classList.add('hidden')
}

function handleDropdown() {
  document.querySelector(".lang-options").classList.toggle("hidden")
}

function changeLang(e) {
  let url = new URL(window.location)
  url.searchParams.set("lang", e.target.id)
  window.location = url
}

function getCurrentLang() {
  let current_lang = (new URLSearchParams(window.location.search)).get('lang')
  if (current_lang == null) {
    current_lang = 'ru'
  }

  return current_lang
}

function closeDropdown(event) {
  if (!event.target.matches('.current-lang')) {
    langSelect = document.querySelector(".lang-options")
    if (!(langSelect.classList.contains('hidden'))) {
      langSelect.classList.add('hidden');
    }
  }
}