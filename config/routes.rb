Rails.application.routes.draw do
  devise_for :users
  get 'cart/index'
  resources :categories
  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'
  
  resources :types
  resources :products
  
  root 'static_pages#home'
  
  get '/contact', to: 'static_pages#contact'

  get '/about', to: 'static_pages#about'
  
  get 'category/:title', to: 'static_pages#category'
  
  get '/login', to: 'user#login'
  get '/logout', to: 'user#logout'
  
  
  
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id', to: 'cart#remove'
  
  root :to => 'site#home'
  
  

  
end
