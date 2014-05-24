Trails::Application.routes.draw do
  devise_for :users
  root to: "welcome#index"
  resources :users, only: [:show]
  resources :trails, only: [:show, :index]
  resources :badges, only: [:show, :index]
  resources :loops, only: [:show, :index]
end
