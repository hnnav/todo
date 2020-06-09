class TasksController < ApplicationController
    before_action :find_task, only: [:show, :index, :edit, :update, :destroy]

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

    def task_params
        params.require(:task).permit(:content)
    end

    def find_task
        @task = Task.find(params[:id])
    end
end
