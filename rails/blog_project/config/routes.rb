Rails.application.routes.draw do
  root to: 'user#index'

  get 'user/index', to: 'user#index' # this will show  user index file
end
