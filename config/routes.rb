Rails.application.routes.draw do

  resources :users, only:[:new, :create]

  resources :projects, only:[:index, :new, :create, :edit, :update, :delete] do
    resources :tasks, only:[:new, :create, :edit, :update, :index, :delete]
  end

  root 'projects#index'
end