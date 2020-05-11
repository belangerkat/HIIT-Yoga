class PosesController < ApplicationController
    before_action :authenticate, only: [:index]
    def index
        @poses = Pose.all 
        render json: @poses
    end
    def show
        @pose = Pose.find(params[:id])
        render json: @pose
    end
end
