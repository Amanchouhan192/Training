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
  post '/user/login_check', to: 'user#login_check'

  # for logout the user from the current session
  post '/user/logout',to: 'user#logout' 

  get '/post/new',to: 'post#new'
  post '/post/create',to: 'post#create'

  #for show the content of the blog
  get '/post/show',to: 'post#show' 

 
end
