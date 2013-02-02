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
      horizontal_rule
      exercise_instructions(we)
    end
  end

  def exercise_set_details(workout_exercise)
    workout_exercise.set_details.each do |set_details|
      table set_details_table_data(set_details) do
      end
    end
  end

  def exercise_instructions(workout_exercise)
    table instructions_table_data(workout_exercise) do
      self.cells.style(padding: 5, height: 60)
      self.cell_style                    = { border_color: "CCCCCC" }
      row(0).size                        = 8
      row(1).size                        = 10
      self.row(0).height                 = 20
      self.column(0).width               = 250
      self.column(1).width               = 250
      row(0).border_left_color           = "FFFFFF"
      row(1).border_left_color           = "FFFFFF"
      self.column(0).border_top_color    = "FFFFFF"
      self.column(0).border_bottom_color = "FFFFFF"
    end
  end

  def set_details_table_data(set_details)
    set = set_details[0].to_i
    # TODO: remove eval & add to_pdf method on WorkoutExerciseSetDetail

    details = WorkoutExerciseSetDetail.to_object(set_details[1])
    # details = eval(set_details[1])
    # reps = details[:reps] ? details[:reps] : details['reps']
    # weight = details[:weight] ? details[:weight] : details['weight']
    reps = details.reps
    weight = details.weight
    [["Set: #{set} | Reps: #{reps} | Weight: #{weight}kg"]]
  end

  def instructions_table_data(workout_exercise)
    [["#{(workout_exercise).sets} #{set_pluralize((workout_exercise).sets)} |  #{@exercise.muscle.humanize}", "Exercise Notes:"],
      ["Instructions: #{workout_exercise.instructions}", "#{'_' * 200}"]]
  end

  def instruction_data(workout_exercise)
    [[workout_exercise.instructions, "Workout notes: #{'_' * 150}"]]
  end

  def set_pluralize(sets)
    sets == 1 ? 'Set' : 'Sets'
  end
end