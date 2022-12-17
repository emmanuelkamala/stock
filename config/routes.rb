Rails.application.routes.draw do
  resources :fixed_expenses
  devise_scope :user do
    authenticated :user do
      root 'public#dashboard', as: :authenticated_root
      get '/edit', to: 'devise/registrations#edit', as: :edit_user
      put '/update', to: 'devise/registrations#update', as: :update_user
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  get '/dashboard', to: 'public#dashboard'
  get '/report', to: 'public#report'
  get '/income/report', to: 'incomes#report'
  get '/flock/report', to: 'flocks#report'

  devise_for :users
  resources :incomes
  resources :flocks do 
    collection do 
      post :import
    end
  end
  resources :expenses
  resources :statuses
  resources :batches
end
