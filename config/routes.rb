Rails.application.routes.draw do
  root to: 'tasks#index'
  get 'new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  get ':id/edit', to: 'tasks#edit', as: 'edit'
  patch ':id', to: 'tasks#update'
  delete ':id', to: 'tasks#destroy', as: 'delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get ':id', to: 'tasks#show', as: 'task'
end
