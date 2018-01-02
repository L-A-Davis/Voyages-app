Rails.application.routes.draw do

  resources :users, only: [:new, :create, :index, :show]
  resources :destinations
  resources :friendships, only: [:new, :create, :destroy]
  resources :trips, only: [:new, :create, :index]
  resources :places, only: [:new, :create, :show]
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
