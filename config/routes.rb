Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  resources :users
  resources :events
  
end
