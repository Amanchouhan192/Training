Rails.application.routes.draw do

  # For details on the DSL available within this file, see 
  root to: 'home#index'


  get 'home/index'
  get 'home/hello'


  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
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
end
