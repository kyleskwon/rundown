Rails.application.routes.draw do
  resources :registered_applications
  devise_for :users
  
  get 'home/index'

  root to: "home#index"
end
