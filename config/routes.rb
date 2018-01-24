require 'api_constraints'

Rails.application.routes.draw do
  root to: 'pages#home'
  namespace :api, defaults: { format: :json } do
    namespace :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :ingredients, only: :index
    end
  end
end
