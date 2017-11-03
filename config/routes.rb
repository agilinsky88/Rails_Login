Rails.application.routes.draw do
  get 'users/create'
  post 'users/create'

  get 'users/register'

  get 'users/login'
  post 'users/login'

  get 'users/welcome'
  post 'users/welcome'

  get 'users/logout'
  post 'users/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
