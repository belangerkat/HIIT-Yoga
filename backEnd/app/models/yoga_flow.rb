class YogaFlow < ApplicationRecord
  belongs_to :user
  has_many :flow_poses
end
