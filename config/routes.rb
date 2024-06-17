Rails.application.routes.draw do
  root 'static_pages#home' # or your desired root path
  
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

  # If you have microposts, you can add:
  resources :microposts
end
