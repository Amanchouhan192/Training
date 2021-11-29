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
  get '/user/new',to: 'user#new'

  get '/user/create_blog' ,to: 'user#create_blog'
  post '/user/create_blog/:id' ,to: 'user#create_blog'

end
