Rails.application.routes.draw do
  root 'sessions#index'
  resources :teams, only: [:index, :new, :create,:show,:edit,:update,:destroy]
  resources :players, only: [:index,:show]
  resources :tournaments
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
