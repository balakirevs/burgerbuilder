require 'api_constraints'

Rails.application.routes.draw do
  root to: 'pages#home'
  get '/checkout/contact-data', to: 'pages#home', format: false
  get '/checkout', to: 'pages#home', format: false
  get '/orders', to: 'pages#home', format: false
  get '/auth', to: 'pages#home', format: false

  namespace :api, defaults: { format: :json } do
    namespace :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :ingredients, only: :index
    end
  end
end
