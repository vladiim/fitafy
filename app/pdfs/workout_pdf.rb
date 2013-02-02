class WorkoutPdf < Prawn::Document

  attr_reader :exercise

  def initialize workout
  	super(page_layout: :landscape)
  	@workout = workout
  end

  def generate_content
  	workout_name
    user_name
    move_down 5
    workout_notes
    move_down 5
  	exercise_list
    horizontal_rule
    move_down 5
  end

  def render_details
  	{ filename: "#{@workout.name.gsub(' ', '_')}.pdf", type: "application/pdf" }
  end

  private

  def workout_name
    text " #{@workout.name.upcase}", size: 30, style: :bold
  end

  def user_name
    text "By #{@workout.username.upcase}", size: 8, color: "CCCCCC"
  end

  def workout_notes
    text "Workout Notes: #{@workout.notes}", size: 10
  end

  def exercise_list
    @workout.workout_exercises.map do |we|
      move_down 15
      @exercise = Exercise.find(we.exercise_id)
      text "#{we.order_number}) #{exercise.name}", size: 12, style: :bold
      exercise_set_details(we)
      # horizontal_rule
      # exercise_instructions(we)
    end
  end

  def exercise_set_details(workout_exercise)
    workout_exercise.set_details.each do |set_details|
      table set_details_table_data(set_details) do |set_details_table|
        WorkoutPdf.table_style(set_details_table )
      end
    end
  end

  def self.table_style(table)
    table.cells.style(padding: 5, height: 60)
    table.cell_style                    = { border_color: "CCCCCC" }
    table.row(0).size                   = 8
    table.row(1).size                   = 10
    table.row(0).height                 = 20
    table.column(0).width               = 150
    table.column(1).width               = 150
    table.column(0).border_top_color    = "FFFFFF"
    table.column(0).border_bottom_color = "FFFFFF"
  end

  # def self.table_style(table)
  #   table.cells.style(padding: 5, height: 60)
  #   table.cell_style                    = { border_color: "CCCCCC" }
  #   table.row(0).size                   = 8
  #   table.row(1).size                   = 10
  #   table.row(0).height                 = 20
  #   table.column(0).width               = 250
  #   table.column(1).width               = 250
  #   table.row(0).border_left_color      = "FFFFFF"
  #   table.row(1).border_left_color      = "FFFFFF"
  #   table.column(0).border_top_color    = "FFFFFF"
  #   table.column(0).border_bottom_color = "FFFFFF"
  # end

  def set_details_table_data(set_details)
    set     = set_details[0].to_i
    details = WorkoutExerciseSetDetail.to_object(set_details[1])
    reps    = details.reps
    weight  = details.weight
    [["Set: #{set},   Reps: #{reps},   Weight: #{weight}kg  "]]
  end

  # def instructions_table_data(workout_exercise)
  #   [["#{(workout_exercise).sets} #{set_pluralize((workout_exercise).sets)} |  #{@exercise.muscle.humanize}", "Exercise Notes:"],
  #     ["Instructions: #{workout_exercise.instructions}", "#{'_' * 200}"]]
  # end

  # def instruction_data(workout_exercise)
  #   [[workout_exercise.instructions, "Workout notes: #{'_' * 150}"]]
  # end

  # def set_pluralize(sets)
  #   sets == 1 ? 'Set' : 'Sets'
  # end
end