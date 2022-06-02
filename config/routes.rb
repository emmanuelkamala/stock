Rails.application.routes.draw do
  devise_scope :user do
    get '/register', to: 'devise/registrations#new', as: :register
    authenticated :user do
      root 'public#dashboard', as: :authenticated_root
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
