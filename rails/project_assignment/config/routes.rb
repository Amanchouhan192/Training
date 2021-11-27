Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  get 'home/index', to: 'home#index'
  get 'home/login', to: 'home#login'

  get 'home/signup', to: 'home#signup'
 post 'home/create', to: 'home#create'
  get 'home/new',to: 'home#new'
end
