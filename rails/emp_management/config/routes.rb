Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'employee#index'
  get 'employee/index',to: 'employee#index'

  get 'employee/new',to: 'employee#new'

  get '/departments/index',to: 'departments#index'
  
  post 'employee/create', to: 'employee#create'
end
