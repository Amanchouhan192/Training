Rails.application.routes.draw do
  root 'survay#index'
  get 'survey/index', to: 'survey#index'
  get 'survey/new' ,  to: 'survey#new'
  post '/survey/create' , to: 'survey#create'
  get 'survey/show' , to: 'survey#show'
  get 'survey/update', to: 'survey#update'
  get 'survey/edit', to: 'survey#edit'
  
end
