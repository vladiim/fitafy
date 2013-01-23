class AddIndexWorkoutExercisesSetDetails < ActiveRecord::Migration
  def up
  	execute 'CREATE INDEX workout_exercises_set_details ON workout_exercises USING GIN(set_details)'
  end

  def down
  	execute 'DROP INDEX workout_exercises_set_details'
  end
end
