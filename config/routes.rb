Rails.application.routes.draw do


  root 'contents#index'

  resources :users
  resources :contents
  resources :sessions
  resources :products



end
