Rails.application.routes.draw do
  resources :sales
  resources :rentals
  resources :properties
  resources :addresses
  resources :cities
  root to: 'visitors#index'
end
