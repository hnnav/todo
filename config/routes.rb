Rails.application.routes.draw do

  root 'projects#index'

  # signup
  get '/signup' => "users#new"
  post '/signup' => "users#create"

  # login
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"

  # logout
  delete '/logout' => "sessions#destroy"

  resources :users do
    resources :projects, only: [:new, :create, :index]
  end
  
  resources :projects do
    resources :tasks
  end
end