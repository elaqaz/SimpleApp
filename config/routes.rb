Rails.application.routes.draw do
  # Root route
  root 'pages#home' # or 'home#index' if you have a Home controller

  # User signup routes
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  # Session routes for login/logout
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # User resource with additional collection routes
  resources :users do
    collection do
      get 'settings'
      patch 'change_password'
    end
  end

  # Static pages routes
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'news', to: 'pages#news'

  # Profile and Settings routes
  get 'profile', to: 'users#profile', as: 'profile'
  get 'settings', to: 'users#settings', as: 'settings'

  # Microposts resource routes
  resources :microposts

  # Admin namespace for admin-specific routes
  namespace :admin do
    get 'dashboard', to: 'admin#dashboard'
    # Add other admin-only routes here
  end
end
