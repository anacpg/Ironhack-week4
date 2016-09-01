Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'movies/', to: 'movies#home'
  post 'movies/search', to: 'movies#search', as: 'movies_search'
end
