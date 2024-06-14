Rails.application.routes.draw do
  # Define the root of the site
  root 'pages#home'  # Change this to 'home#index' if you have a Home controller
  
  # User signup routes
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  
  # Session handling routes for login and logout
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  # Resource routes for users and sessions
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  
  # Routes for static pages
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'news', to: 'pages#news'
  
  # Resource routes for microposts
  resources :microposts

end
