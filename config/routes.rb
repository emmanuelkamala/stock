Rails.application.routes.draw do
  devise_scope :user do
    get '/register', to: 'devise/registrations#new', as: :register
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
  get '/financial', to: 'public#financial'
  get '/production', to: 'public#production'
  get '/report', to: 'public#report'
  devise_for :users, :controllers => { 
                      :registrations => 'users/registrations'
                     }
  resources :incomes
  resources :flocks
  resources :expenses
  resources :statuses
  resources :types
end
