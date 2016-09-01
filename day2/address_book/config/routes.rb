Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "contacts#index"
  get "/contacts", to: "contacts#index"
  get "/contacts/new", to: "contacts#new"
  get "/contacts/index", to: "contacts#index"
  get "/contacts/:id", to: "contacts#show", as: 'contacts_show'
  get "/contacts/favourite/:id", to: "contacts#favourite", as: 'contacts_favourite'
  # ***** New *****
  post "/contacts", to: "contacts#create"

end
