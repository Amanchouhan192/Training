Rails.application.routes.draw do

  root 'employee#index'
  get 'employee/index',to: 'employee#index'

  get 'employee/new',to: 'employee#new'

  get '/departments/index',to: 'departments#index'

  get '/departments/show',to: 'departments#show'
  
  post 'employee/create', to: 'employee#create'
=begin
  get 'employee/index'
  get 'employee/new'
  get 'employee/show'
  get 'employee/create'
  get 'employee/edit'
  get 'employee/destroy'
  get 'employee/delete'
  resources :departments
=end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
