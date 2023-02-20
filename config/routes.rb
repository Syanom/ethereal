Rails.application.routes.draw do
  root to: 'main#home'

  resources :contact_mes, only: %i[new create]
  resources :adds, only: :index
  resources :admin, only: :index

  namespace :admin do
    resources :slideshow_pictures
    resources :adds
    resources :add_images, only: %i[new create destroy]
    resources :contact_mes, only: %i[index destroy] do
      patch 'contacted', on: :member
    end
  end
end
