class FlowPosesController < ApplicationController
    def index    
        @flow_poses = FlowPose.all
        render json: @flow_poses
    end

    def create
        @flow_pose = FlowPose.create(flow_pose_params)
        render json: @flow_pose
    end
    private
    def flow_pose_params
        params.require(:flow_pose).permit(:user_id, :yoga_flow_id, :pose_id)
    end
end
