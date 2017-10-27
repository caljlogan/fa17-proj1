Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch "home/index", to: "pokemon#capture", as: "capture"
  patch "/trainers/:id/:pid", to: "pokemon#damage", as: "damage"
  get "/trainers/:id/create_a_pokemon", to: "pokemon#new", as: "pokemon_form"
  patch "trainers/:id/create_a_pokemon/creating", to: "pokemon#create", as: "pokemon_create"
  get "/trainers/:id/create_a_pokemon", to: "pokemon#update", as: "pokemon_update_form"
end
