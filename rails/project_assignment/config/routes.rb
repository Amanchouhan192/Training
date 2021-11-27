Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'user#index'

  get 'user/index', to: 'user#index'
  get '/user/login', to: 'user#login'

  post '/user/logout',to: 'user#logout'

  

  #get '/login',to: 'user#login'
  post '/user/login_create', to: 'user#login_create'

  get 'user/signup', to: 'user#signup'
 post '/user/create', to: 'user#create'
  get 'user/new',to: 'user#new'
 post '/user/new',to: 'user#new'
end
