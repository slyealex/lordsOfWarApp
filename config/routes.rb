Rails.application.routes.draw do

  get 'products/new'

  get 'products/index'

  root 'contents#index'

  resources :users
  resources :contents
  resources :sessions



end
