Rails.application.routes.draw do
  resources :incomes
  resources :flocks
  resources :expenses
  resources :statuses
  resources :types
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
