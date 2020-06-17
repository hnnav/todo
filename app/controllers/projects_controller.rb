class ProjectsController < ApplicationController
    before_action :find_project, only: [:edit, :update, :destroy, :show]
    before_action :require_logged_in

    def new
        @project = Project.new
    end

    def create
        @project = current_user.projects.build(project_params)
        if @project.save
            redirect_to '/'
        else
            render :new
        end
    end

    def index
        @projects = Project.all
    end

    def show
        @tasks = @project.tasks
    end

    def edit
    end

    def update
        if @project.update(project_params)
          redirect_to root_path
        else
          render :edit
        end
    end

    def destroy
        @project.destroy
        redirect_to root_path
    end

    private

    def project_params
        params.require(:project).permit(:name, :description, :user_id)
    end

    def find_project
        @project = Project.find(params[:id])
    end
end
