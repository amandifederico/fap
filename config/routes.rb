Rails.application.routes.draw do
  resources :types
  resources :drivers
  resources :range_troop_numbers
  resources :product_details
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #get 'welcome/index'

  resources :agents
  resources :animal_types
  resources :animals
  resources :cities
  resources :troop_details
  resources :troops
  resources :places
  resources :positions
  resources :providers
  resources :production_details
  resources :productions
  resources :sub_product_details
  resources :sub_product_types
  resources :sub_products
  resources :transports
  resources :turn_details
  resources :turns
  devise_for :users

  post '/sub_product/edit_with_details' => 'sub_products#edit_with_details'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
  get 'production_line/' => 'static_pages#production_line'  
end
