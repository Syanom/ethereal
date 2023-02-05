Rails.application.routes.draw do
  namespace :admin do
    resources :slideshow_pictures
  end
end
