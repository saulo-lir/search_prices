Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :v1 do
    namespace :search_prices do
      get '/establishments', to: 'establishments#index'
      post '/products/prices', to: 'products#prices'
    end
  end
end
