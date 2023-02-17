Rails.application.routes.draw do
  root to: 'main#home'
  resources :contact_me, only: %i[new create]
  resources :search, only: :index

  namespace :admin do
    resources :slideshow_pictures
  end
end
