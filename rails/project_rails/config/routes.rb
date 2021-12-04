Rails.application.routes.draw do
  root 'home#index'
  get 'home/index',to: 'home#index'

  get 'user/new',to: 'user#new'
  #post 'user/new',to: 'user#new'

 
end
