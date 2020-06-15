class TasksController < ApplicationController
    before_action :find_task, only: [:index, :destroy]

    def new
        @task = Task.new(project_id: params[:project_id])
    end

    def create
        # @task = Task.new(task_params)
        # @project = Project.find(params[:project_id])
        # @task = @project.tasks.build(task_params)
        # @task.save
        
        if @task.save
          redirect_to project_path(task.project)
        else
          render :new
        end
    end

    def index
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def task_params
        params.require(:task).permit(:content, :project_id)
    end

    def find_task
        @task = Task.find(params[:id])
    end
end
