class UsersController < ApplicationController
    before_action :authenticate, only: [:index, :show]

    def index    
        @users = User.all
        render json: @users, include:[:yoga_flows, :hiit_workouts, :flow_poses]
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include:[:yoga_flows, :hiit_workouts, :flow_poses]
    end

        # @user_poses = User.find(@user_id).yoga_flows.map {|yoga_flow| yoga_flow.flow_poses}


    def create
        @user = User.create(user_params)
        render json: @user
    end
    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
