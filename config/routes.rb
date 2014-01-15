Fishbowl::Application.routes.draw do

  devise_for :users

  root :to => "home#index"

  resources :users

  resources :activities

  get '/users' => "users#index"
  get '/users/:id' => "users#show"

  get '/activities' => "activities#index"
  get '/activities/:id' => "activities#show"
  post '/activities' => "activities#create"

end
