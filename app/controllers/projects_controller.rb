class ProjectsController < ApplicationController
    before_action :find_project, only: [:show, :index, :edit, :update, :destroy]

    def new
    end

    def create
    end

    def show
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

    def project_params
        params.require(:project).permit(:name, :description)
    end

    def find_project
        @project = Project.find(params[:id])
    end
end
