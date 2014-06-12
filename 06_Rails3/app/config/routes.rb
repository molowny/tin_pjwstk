Rails.application.routes.draw do
  devise_for :users
  resources :groups
  resources :students
  root to: 'groups#index'
end
