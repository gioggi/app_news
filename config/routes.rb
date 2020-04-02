Rails.application.routes.draw do
  resources :articles
  root to: 'visitors#index'
  devise_for :users

  get "static/:page" => "static#show"
end
