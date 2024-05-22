Rails.application.routes.draw do
  resources :microposts
  resources :users
  get 'about', to: 'pages#about'
  get 'pages/home'
  get 'pages/about'
  get "up" => "rails/health#show", as: :rails_health_check
  root 'pages#home'
end
