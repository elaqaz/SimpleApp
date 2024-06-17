Rails.application.routes.draw do
  root 'pages#home' # Change this to 'home#index' if you have a Home controller
  
  get    'signup', to: 'users#new'
  post   'signup', to: 'users#create'
  
  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users
  
  # Optionally, if you need routes for static pages, you can add:
  get 'about',    to: 'pages#about'
  get 'contact',  to: 'pages#contact'
  get 'news',     to: 'pages#news'

   # Define routes for Profile and Settings
   get 'profile', to: 'users#profile', as: 'profile'
   get 'settings', to: 'users#settings', as: 'settings'
   get 'user_settings', to: 'users#settings', as: 'user_settings'

  # If you have microposts, you can add:
  resources :microposts
end
