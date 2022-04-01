Rails.application.routes.draw do
  
  root to:'home#index'
  devise_for :uusers

  resources :uusers
  resources :ateliers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end 
