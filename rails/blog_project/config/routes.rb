Rails.application.routes.draw do
  root to: 'user#index'

  get 'user/index', to: 'user#index' # this will show  user index file
  get '/user/login',to: 'user#login' # show login page 

  get 'user/new',to: 'user#new'     #show new page after login i.e sfter  the user logged in 
  get '/user/new',to: 'user#new'

  get 'user/signup',to: 'user#signup' #show the signup form for enter user datails
 post '/user/create',to: 'user#create' #signup form post rquest for enter detail into database

 post '/user/logout',to: 'user#logout' # for logout the user from the current session

 #get '/user/login_create', to: 'user#login_create' #create user login post request
 post '/user/login_create', to: 'user#login_create' #create user login post request


 get '/post/new',to: 'post#new' # show page of create a blog

 post '/post/create',to: 'post#create' # show page of create a blog

end
