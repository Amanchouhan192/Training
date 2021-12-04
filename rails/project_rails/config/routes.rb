Rails.application.routes.draw do
  root 'home#index'
  get 'home/index',to: 'home#index'
 
end
