class WorkoutPdf < Prawn::Document

  attr_reader :exercise, :set, :reps, :weight

  attr_accessor :set_details

  def initialize(workout)
  	super(page_layout: :landscape)
  	@workout = workout
  end

  def generate_content
    render_workout_name
    render_username
    move_down 5
    render_notes
    move_down 5
    render_exercises
  end

  def render_details
  	{ filename: "#{@workout.name.gsub(' ', '_')}.pdf", type: "application/pdf" }
  end

  private

  def render_workout_name
    text " #{@workout.name.upcase}", size: 30, style: :bold
  end

  def render_username
    text "By #{@workout.username.upcase}", size: 8, color: "CCCCCC"
  end

  def render_notes
    text "Workout Notes: #{@workout.notes}", size: 10
  end

  def render_exercises
    @workout.workout_exercises.map do |workout_exercise|
      move_down 15
      @exercise = Exercise.find(workout_exercise.exercise_id)
      text "#{workout_exercise.order_number}) #{exercise.name}", size: 12, style: :bold
      render_set_details_table(workout_exercise)
    end
  end

  def render_set_details_table(workout_exercise)
    @set_details = workout_exercise.set_details
    table set_details_table_data do |set_details_table|
      WorkoutPdf.table_style(set_details_table )
    end
  end

  def set_details_table_data
    set_details_variables(@set_details)
    [ [exercise_heading_data, sessions_heading_data],
      session_numbers_data,
      session_details_heading_data,
      set_details_and_empty_data ]
  end

  def exercise_heading_data
    "WORKOUT DETAILS"
  end

  def sessions_heading_data
    { content: "TRAINING SESSIONS", colspan: 21 }
  end

  def session_numbers_data
    first_result = { content: '', rowspan: 2 }

    (1..7).each.inject([first_result]) do |result, session_number|
      result << { content: "Session #{session_number}", colspan: 3 }
    end
  end

  def session_details_heading_data
    (1..7).each.inject([]) do |result, n|
      result << { content: 'Date' }
      result << { content: 'Reps' }
      result << { content: 'Weight'}
    end
  end

  def set_details_and_empty_data
    set_details_count = @set_details.count
    arr               = [render_set_details_cell]
    form              = create_form_elements(set_details_count)
    21.times.inject(arr) { arr << form }
  end

  def create_form_elements(set_details_count)
    set_details_count.times.inject("") { |form, n| form << "__\n" }
  end

  def render_set_details_cell
    @set_details.each.inject("") do |set_details, set_detail|
      set_details_variables(set_detail)
      set_details + set_detail_data
    end
  end

  def set_details_variables(set_details)
    @set     = get_set_details_set(set_details)
    values   = get_set_details_values(set_details)
    details  = WorkoutExerciseSetDetail.to_object(values)
    @reps    = details.reps
    @weight  = details.weight
  end

  def get_set_details_set(set_details)
    if set_details.class == Array
      set_details[0].to_i

    elsif set_details.class == Hash
      set_details.keys[0]
    end
  end

  def get_set_details_values(set_details)
    if set_details.class == Array
      set_details[1]

    elsif set_details.class == Hash
      set_details.values[0]
    end
  end

  def set_detail_data
    "Set: #{@set},   Reps: #{@reps},   Weight: #{@weight}kg  \n\n"
  end

  def session_details_empty_data
    (1..24).each.inject([]) { |result, n| result << '' }
  end

  def self.table_style(table)
    table.cell_style = { border_color: "CCCCCC", background_color: "F0F0F0" }
    table.row(0).style(height: 20, size: 8, font_style: :bold)
    table.row(1).style(height: 20, size: 8)    
    table.row(2).style(size: 5, valign: :bottom, rotate: 30)
    table.column(0).style(width: 150, size: 8)

    table.row(3).column(0).style(font_style: :bold, background_color: "FFFFFF")

    [2, 3].each do |row|
      [(1..3), (7..9), (13..15), (19..21)].each do |col|
        table.row(row).column(col).style(background_color: "CCCCCC")
      end
    end
  end
end