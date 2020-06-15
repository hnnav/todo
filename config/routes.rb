Rails.application.routes.draw do

  get '/signup' => "users#new"

  resources :users, only: [:new, :create]
  
  root 'projects#index'
  resources :projects do
    resources :tasks, only: [:new, :create, :destroy]
  end
end