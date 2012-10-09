class WorkoutExhibit < DisplayCase::Exhibit

  def self.applicable_to? object, controller
  	 object.class.name == "Workout"
  end

  def render_exercises view_context
  	if workout_exercises.present?
      view_context.render partial: "show_exercise", collection: workout_exercises, as: :exercise
    else
      render_no_exercises view_context
    end    
  end

  def render_no_exercises view_context
  	view_context.content_tag :h4 do
  	  "No exercises for this workout, nothing to see here!"
  	end
  end
end