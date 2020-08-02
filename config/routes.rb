Rails.application.routes.draw do

  root to: 'main#index'
  namespace :api do
    resources :users
    resources :users_description
    resources :products
    post "users/login", to: "users#login"
  end
end

