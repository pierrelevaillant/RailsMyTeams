Rails.application.routes.draw do

  # Root for the admin panel
  namespace :admin do
    root 'dashboard#index'
    resources :players
    resources :categories
    resources :teams
    resources :convocations
    resources :users, :controller => 'users'
  end

  # Remove sign up, in this case user not allow to create an account
  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  # Main routes
  root 'home#index'
  get 'about', to: 'home#about'
  resources :categories
  resources :teams

  # Redirect to error 404
  get "*any", via: :all, to: "application#record_not_found"

end
