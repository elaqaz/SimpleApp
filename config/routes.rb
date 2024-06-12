Rails.application.routes.draw do
  resources :microposts

  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'news', to: 'pages#news'

  
  root 'pages#home'
end
