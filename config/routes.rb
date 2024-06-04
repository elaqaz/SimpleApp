Rails.application.routes.draw do
  resources :microposts
  resources :users
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'news', to: 'pages#news'
  get 'signup', to: 'users#new'
  
  root 'pages#home'
end
