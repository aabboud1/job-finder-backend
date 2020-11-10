Rails.application.routes.draw do
  resources :bids
  resources :jobs
  resources :users
  post 'users/login', to: 'users#process_login'
  get 'jobs/new', to: 'jobs#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
