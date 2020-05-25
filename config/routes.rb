Rails.application.routes.draw do
  get 'home/index'
  resources :games
  resources :devices

  root 'home#index'
end
