Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  
  root 'projects#index'
  resources :projects, except: [:show, :index]
 
  # nested index
  get '/projects/:project_id/tasks', to:"tasks#index", as:"project_tasks"

  # nested new
  get '/projects/:project_id/tasks/new', to:"tasks#new", as: "new_task"
  post '/projects/:project_id/tasks', to: "tasks#create"

  # nested destroy
  delete '/projects/:project_id/tasks/:id', to: "tasks#destroy"
end