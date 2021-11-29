Rails.application.routes.draw do
  root to: 'user#index'

  get 'user/index', to: 'user#index' # this will show  user index file
  get 'user/login',to: 'user#login' # show login page 

  get 'user/new',to: 'user#new'     #show new page after login i.e sfter  the user logged in 
end
