Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "contacts#index"
  get "/contacts", to: "contacts#index"

  get "/contacts/new", to: "contacts#new"
  # ***** New *****
  post "/contacts", to: "contacts#create"
  
end
