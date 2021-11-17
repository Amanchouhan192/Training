Rails.application.routes.draw do
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


  # For details on the DSL available within this file, see 
  root to: 'home#index'

  
  get 'home/index'
  get 'home/hello'
end
