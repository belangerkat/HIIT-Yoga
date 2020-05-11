class User < ApplicationRecord
    has_secure_password
    has_many :yoga_flows
    has_many :hiit_workouts
    has_many :flow_poses, through: :yoga_flows
    has_many :workout_exercises, through: :hiit_workouts
end
