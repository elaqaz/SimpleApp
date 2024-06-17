Rails.application.routes.draw do
  root 'pages#home' # or change to 'home#index' if you have a Home controller
  
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users do
    collection do
      get 'settings'
      patch 'change_password'
    end
  end
  
  # Routes for static pages
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'news', to: 'pages#news'

  # Define routes for Profile and Settings
  get 'profile', to: 'users#profile', as: 'profile'
  get 'settings', to: 'users#settings', as: 'settings'
  
  # Routes for microposts
  resources :microposts
end
