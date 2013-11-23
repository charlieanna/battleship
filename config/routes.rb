Battleship::Application.routes.draw do
  root to: "high_voltage/pages#show", id: "homepage"

  resources :games, only: [:new]
  resources :boards, only: [:new, :create]
  resources :turns, only: [:new]
end
