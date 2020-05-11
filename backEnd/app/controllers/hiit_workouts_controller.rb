class HiitWorkoutsController < ApplicationController
    def index    
        @hiit_workouts = HiitWorkout.all
        render json: @hiit_workouts, include:[:workout_exercises]
    end
    def show
        @hiit_workout = HiitWorkout.find(params[:id])
        render json: @hiit_workout, include:[:workout_exercises]
    end
    def create
        @hiit_workout = HiitWorkout.create(hiit_workout_params)
        render json: @hiit_workout
    end
    
    private
    def hiit_workout_params
        params.require(:hiit_workout).permit(:name, :user_id)
    end
end
