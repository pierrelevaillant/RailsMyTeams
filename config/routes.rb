Rails.application.routes.draw do

  namespace :admin do
    get 'dashboard/index'
  end

  namespace :admin do
    root 'dashboard#index'
    resources :players
    resources :categories
    resources :teams
    resources :convocations
  end

  devise_for :users
  
  root 'home#index'
  get 'about', to: 'home#about'
  resources :users
  resources :categories

end
