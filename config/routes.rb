Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :v1 do
    namespace :search_prices do
      get '/products', to: 'products#index'
      get '/products/prices', to: 'products#prices'
      get '/products/search_prices_online', to: 'products#search_prices_online'
      get '/products/ping', to: 'products#ping'
      get '/products/generate_route', to: 'products#generate_route'
    end
  end
end
