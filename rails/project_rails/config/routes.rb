Rails.application.routes.draw do
  root 'home#index'
  get 'home/index',to: 'home#index'

  #for signup things get for see the signup credentials
  # post is for create new entry
  get '/user/new',to: 'user#new'
  post '/user/create',to: 'user#create'

  #for after user logged in he can see the welcome page
  get '/post/index',to: 'post#index'

  get '/user/login', to: 'user#login'
  post '/user/login_create', to: 'user#login_create'

 
end
