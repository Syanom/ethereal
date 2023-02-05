Rails.application.routes.draw do
  root to: 'main#home'
  get 'main/contact_me'
  get 'main/search'

  namespace :admin do
    resources :slideshow_pictures
  end
end
