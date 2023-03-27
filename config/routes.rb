Rails.application.routes.draw do

  get "/heroes", to: "heros#index"
  get "/heroes/:id", to: "heros#show"
  get "/powers", to: "powers#index"
  get "/powers/:id", to: "powers#show"
  patch "/powers/:id", to: "powers#update"
  post "/hero_powers", to: "hero_powers#create"


  resources :hero_powers
  resources :powers
  resources :heros
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
