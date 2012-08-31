class WorkoutPdf < Prawn::Document

  def initialize workout
  	super()
  	@workout = workout
  	workout_name
  	exercise_list
  end

  def workout_name
  	text @workout.name.upcase, size: 30, style: :bold
  end

  def exercise_list
  	move_down 20
  	table exercise_table do
  	  self.cells.style(padding: 10)
  	  row(0).font_style    = :bold
      self.row_colors      = ["DDDDDD", "FFFFFF"]
      self.column(1).align = :right
      self.column(0).width = 90
      self.column(2).width = 175
      self.column(3).width = 175
      self.header          = true
  	end
  end

  def exercise_table
  	exercise_header + exercise_rows
  end

  def exercise_header
  	[["EXERCISE", "SETS", "INSTRUCTIONS", "NOTES"]]
  end

  def exercise_rows
    @workout.workout_exercises.map do |workout_exercise|
  	  exercise = Exercise.find(workout_exercise.exercise_id)
  	  [exercise.name, workout_exercise.sets, workout_exercise.notes, ""]
    end
  end
end