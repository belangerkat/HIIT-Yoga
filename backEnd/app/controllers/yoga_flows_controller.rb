class YogaFlowsController < ApplicationController
    def index    
        @yoga_flows = YogaFlow.all
        render json: @yoga_flows, include:[:flow_poses]
    end
    def show
        @yoga_flow = YogaFlow.find(params[:id])
        render json: @yoga_flow, include:[:flow_poses]
    end
    def create
        @yoga_flow = YogaFlow.create(yoga_flow_params)
        render json: @yoga_flow
    end

    private
    def yoga_flow_params
        params.require(:yoga_flow).permit(:name, :user_id)
    end
end
