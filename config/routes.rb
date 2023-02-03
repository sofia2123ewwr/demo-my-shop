Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: "home#index"
  get '/products', to: 'product#index'
  get "/fetch_products" => 'product#from_category', as: 'fetch_products'
end
