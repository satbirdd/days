Rails.application.routes.draw do
  resources :themes
  devise_for :users
  resources :days

  root "days#index"
end
