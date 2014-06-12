Rails.application.routes.draw do
  resources :groups
  resources :students
  root to: 'groups#index'
end
