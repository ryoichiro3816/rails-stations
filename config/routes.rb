Rails.application.routes.draw do
  get '/movies', to: 'movies#index'
  namespace :admin do
    get '/movies', to: 'movies#index'
    get '/movies/new', to:'movies#new'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
