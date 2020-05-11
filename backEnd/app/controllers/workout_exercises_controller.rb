class WorkoutExercisesController < ApplicationController
    def index    
        @workout_exercises = WorkoutExercise.all
        render json: @workout_exercises
    end
    def create
        @workout_exercise = WorkoutExercise.create(workout_exercise_params)
        render json: @workout_exercise
    end
    private
    def workout_exercise_params
        params.require(:workout_exercise).permit(:user_id, :hiit_workout_id, :exercise_id)
    end
end
