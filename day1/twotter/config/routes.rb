Rails.application.routes.draw do
  #
  # resources :users
  # root "twots#index"
  # #esto es lo mismo:
  # # get "/", to: 'twots#index'
  #
  # resources :twots

  #en nuestro projects vamos a crear twots
  get 'projects', to: 'projects#index'
  get 'projects/new', to: 'projects#new'
  post 'projects/create', to: 'projects#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
