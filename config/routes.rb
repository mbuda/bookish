Rails.application.routes.draw do
  get 'home/index'

  resources :books

  root 'home#index'
end
