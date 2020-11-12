Rails.application.routes.draw do
  resources :bids
  resources :jobs
  resources :users
  post 'users/login', to: 'users#process_login'
  post 'jobs/new', to: 'jobs#create'
  get '/home', to: 'users#show'
  post '/mybids', to: 'bids#userBids'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index] #route only used for testing

      post '/login', to: 'auth#create'
    
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
