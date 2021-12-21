Rails.application.routes.draw do
  resources :departments
  root 'employee#index'
  get 'employee/index', to: 'employee#index'
  get 'employee/new',to: 'employee#new'
  post 'employee/create', to: 'employee#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
