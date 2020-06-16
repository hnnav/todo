class TasksController < ApplicationController
    before_action :find_task, only: [:destroy]

    def new
        # if nested and project exists
        if params[:project_id] && @project = Project.find_by_id(params[:project_id])
            @task = @project.tasks.build
        else
            @task = Task.new
        end
    end

    def create
        @task = current_user.tasks.build(task_params)
        
        if @task.save
          redirect_to project_path(params[:project_id])
        else
          render :new
        end
    end

    def index
        if params[:project_id] && @project = Project.find_by_id(params[:project_id])
            @tasks = @project.tasks
        else
            @tasks = Task.all
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def task_params
        params.require(:task).permit(:id, :content, :project_id)
    end

    def find_task
        @task = Task.find(params[:id])
    end
end
