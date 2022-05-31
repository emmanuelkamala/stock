Rails.application.routes.draw do
  root 'public#index'
  get '/dashboard', to: 'public#dashboard'
  get '/financial', to: 'public#financial'
  get '/production', to: 'public#production'
  devise_for :users
  resources :incomes
  resources :flocks
  resources :expenses
  resources :statuses
  resources :types
end
