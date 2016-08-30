Rails.application.routes.draw do

  resources :users
  root "twots#index"
  #esto es lo mismo:
  # get "/", to: 'twots#index'

  resources :twots
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
