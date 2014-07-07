Trails::Application.routes.draw do
  devise_for :users
  root to: "welcome#index"
  resources :users, only: [:show]
  resources :completeds, only: [:new, :create]
  resources :trails
  resources :badges, only: [:new, :create, :show, :index]
  resources :loops, only: [:new, :create, :show, :index]
end
