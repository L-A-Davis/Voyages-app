Rails.application.routes.draw do

  resources :users
  resources :destinations
  resources :friendships
  resources :trips, only: [:new, :create, :index]
  resources :places
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
