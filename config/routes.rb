Rails.application.routes.draw do
  get '/ticket/:id', to: 'tickets#get_user_ticket'
  
  resources :gathers
  resources :venues
  resources :tickets
  resources :events
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #  ================ AUTH ======================
  # get '/auth/login', to: 'authentication#login'
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  
  resources :users
end
