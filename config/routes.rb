Trails::Application.routes.draw do
  devise_for :users
  root to: "welcome#index"
  resources :users, only: [:show]
  resources :trails, only: [:new, :create, :show, :index]
  resources :badges, only: [:new, :create, :show, :index]
  resources :loops, only: [:new, :create, :show, :index]
end
