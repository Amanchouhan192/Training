Rails.application.routes.draw do
  
  
    # For details on the DSL available within this file, see 
  root to: 'home#index'
  #root to: 'ragistration#index'
  
  
  get 'home/index',to: 'home#index'
  get 'home/show',to: 'home#show'
  get 'home/new', to: 'home#new'
  get 'home/edit' 
  get 'home/delete'
  #get 'home/login'
  get  'home/signup', to: 'home#signup'
  post 'home/signup', to: 'home#signup'
  post 'home/create' , to: 'home#create'

  post 'home/new', to: 'sessions#create'



  get 'sessions/index'
  get 'sessions/new',to: 'home#new'
  post 'sessions/new',to: 'home#new'
  get 'sessions/show'
  get 'sessions/create',to: 'home#new'
  get 'sessions/edit'
  get 'sessions/destroy'
  get 'sessions/delete'



  get 'blogs/index',to: 'blogs#index'
  get 'blogs/show',to: 'blogs#show'
  get 'blogs/new',to: 'blogs#new'
  get 'blogs/create',to: 'blogs#create'
  post 'blogs/create',to: 'blogs#create'
  get 'blogs/edit' ,to: 'blogs#edit'
  post 'blogs/edit' ,to: 'blogs#edit'
  get 'blogs/delete',to: 'blogs#delete'
  post 'blogs/delete',to: 'blogs#delete'
  
end
  
=begin
    get 'pages/index'
    get 'pages/show'
    get 'pages/new'
    get 'pages/edit'
    get 'pages/delete'
  
    get 'subjects/index'
    get 'subjects/show'
    get 'subjects/new'
    get 'subjects/edit'
    get 'subjects/delete'
=end
=begin
  get 'home/index'
  get 'home/show'
  get 'home/new'
  get 'home/edit'
  get 'home/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

=end
