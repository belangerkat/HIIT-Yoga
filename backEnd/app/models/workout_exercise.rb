class WorkoutExercise < ApplicationRecord
  belongs_to :user
  belongs_to :hiit_workout
  belongs_to :exercise
end
