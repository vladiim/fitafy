class CurrentUserOwnedWorkoutExhibit < DisplayCase::Exhibit

  def self.applicable_to? object, controller
  	object.class.name == "Workout" && controller.current_user == object.user
  end

  def render_no_exercises view_context
  	view_context.content_tag :h4 do
      "This workout has no exercise sucka! Get to work!"
  	end
  end
end