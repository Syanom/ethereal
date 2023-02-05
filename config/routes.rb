Rails.application.routes.draw do
  root to: 'main#home'
  namespace :admin do
    resources :slideshow_pictures
  end
end
