Rails.application.routes.draw do
  # sessions authentication
  root 'sessions#index'
  # complete
  get "/signup", to: "users#new", as: "signup"
  # working progress
  get "/login", to: "sessions#new", as: "login"

  post "/login", to: "sessions#create" 
  delete "/logout", to: "sessions#destroy", as: "logout"
  post "/sessions/reset", to: "sessions#reset"

  # users routes
  resources :users, only: [:new, :create,:show,:edit,:update,:destroy]
  # teams routes
  resources :teams, only: [:index, :new, :create,:show,:edit,:update,:destroy]
  #players  routes
  resources :players, only: [:index,:show]
  # tournaments routes
  resources :tournaments, only: [:index, :show]

  resources :sessions
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
