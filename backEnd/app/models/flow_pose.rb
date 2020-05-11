class FlowPose < ApplicationRecord
  belongs_to :user
  belongs_to :yoga_flow
  belongs_to :pose
end
