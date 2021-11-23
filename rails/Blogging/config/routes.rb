Rails.application.routes.draw do
    # For details on the DSL available within this file, see 
    root to: 'home#index'
  
  
    get 'home/index'
    get 'home/login'
    get 'home/signup'

  
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
end
