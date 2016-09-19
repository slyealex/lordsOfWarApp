Rails.application.routes.draw do


  root 'contents#index'

  resources :users
  resources :contents
  resources :sessions
  resources :products
  resources :pages

  get '/tournaments' => 'pages#tournaments'





end
