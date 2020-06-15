class TasksController < ApplicationController
    before_action :find_task, only: [:index, :destroy]

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        if @task.save
          redirect_to project_tasks_path
        else
          render :new
        end
    end

    def index
        @project = Project.find_by(id: params[:project_id])
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def task_params
        params.require(:task).permit(:content)
    end

    def find_task
        @task = Task.find(params[:id])
    end
end
