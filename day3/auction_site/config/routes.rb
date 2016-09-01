Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home', to: 'application#home'

  #users routes
  get 'users', to: 'users#index'
  get 'users/new', to: 'users#new'
  post 'users/create', to: 'users#create'
  get 'users/:id', to: 'users#show', as: 'users_show'
  get 'users/:id/destroy', to: 'users#destroy', as: 'users_destroy'


  #products routes
  get 'users/:id/products', to: 'products#index', as: 'products'
  get 'users/:id/products/new', to: 'products#new', as: 'products_new'
  post 'users/:id/products/create', to: 'products#create', as: 'products_create'
  get 'users/:id/products/:id_p', to: 'products#show', as: 'products_show'
  get 'users/:id/products/:id_p/destroy', to: 'products#destroy', as: 'products_destroy'





end
