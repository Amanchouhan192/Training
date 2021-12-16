Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'departments#index'
  get 'departments/index',to: 'departments#index'

  get 'employee/new',to: 'employee#new'

  post 'employee/create', to: 'employee#create'
end
