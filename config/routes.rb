Rails.application.routes.draw do
  root to: 'home#index'
  get '/about', to: 'home#index'
  get '/contact', to: 'home#index'
  namespace :api, defaults: { format: :json } do
    resources :posts
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
