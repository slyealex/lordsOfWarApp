Rails.application.routes.draw do
  get 'users/new'

  get 'users/show'

  get 'users/index'

  get 'sessions/new'

  get 'contents/new'

  get 'contents/show'

  get 'contents/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
