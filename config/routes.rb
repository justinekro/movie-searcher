Rails.application.routes.draw do
  root 'movies#index'
  resources :movies

  get "movies/search/:name", to: "movies#search", as: "search"
end
