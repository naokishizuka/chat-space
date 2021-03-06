Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :users, only: [:edit, :update]
  resources :messages, only: [:create]
  resources :groups, only: [:new, :create, :edit, :update]
end
