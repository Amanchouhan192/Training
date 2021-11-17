Rails.application.routes.draw do
  # For details on the DSL available within this file, see 
  root to: 'home#index'
  get 'home/index'
  get 'home/hello'
end
