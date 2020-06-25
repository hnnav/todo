class TasksController < ApplicationController

    def new
        # if nested and project exists
        if params[:project_id] && @project = Project.find_by_id(params[:project_id])
            @task = @project.tasks.build
        else
            redirect_to project_path(params[:project_id])
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
        @project = Project.find_by(id: params[:project_id])
        if @project.nil?
            redirect_to project_path(params[:project_id])
        else
            @task = @project.tasks.find_by(id: params[:id])
            @task.destroy
            redirect_to project_path(params[:project_id])
        end
    end

    private

    def task_params
        params.require(:task).permit(:content, :project_id)
    end
end
