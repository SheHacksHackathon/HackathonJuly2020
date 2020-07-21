Rails.application.routes.draw do
  resources :gathers
  resources :venues
  resources :users
  resources :tickets
  resources :events
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
