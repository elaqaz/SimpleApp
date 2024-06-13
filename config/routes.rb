Rails.application.routes.draw do
  get 'sessions/new'
  resources :microposts

  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'news', to: 'pages#news'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  
  root 'pages#home'
end
