Rails.application.routes.draw do
  root to: 'main#home'

  resources :contact_mes, only: %i[new create]
  resources :search, only: :index

  namespace :admin do
    resources :slideshow_pictures
    resources :contact_mes, only: %i[index destroy] do
      patch 'contacted', on: :member
    end
  end
end
