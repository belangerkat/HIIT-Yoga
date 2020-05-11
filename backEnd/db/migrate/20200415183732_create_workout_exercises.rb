class CreateWorkoutExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_exercises do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hiit_workout, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
