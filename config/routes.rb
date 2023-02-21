Rails.application.routes.draw do
  root to: 'main#home'

  resources :contact_mes, only: %i[new create]
  resources :adds, only: %i[index show]
  resources :admin, only: :index

  namespace :admin do
    resources :slideshow_pictures
    resources :adds do
      resources :add_images, only: %i[new create destroy]
    end
    resources :contact_mes, only: %i[index destroy] do
      patch 'contacted', on: :member
    end
  end
end
