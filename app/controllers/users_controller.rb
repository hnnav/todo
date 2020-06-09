class UsersController < ApplicationController
    before_action :find_user, only: [:show, :index, :edit, :update, :destroy]

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

    def user_params
        params.require(:user).permit(:username, :password)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
