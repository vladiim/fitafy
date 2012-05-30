module CreateExercise

  def fill_in_exercise_form(val=nil)
  	fill_in "exercise_name", 			with: "liquid swords #{val}"
    fill_in "exercise_description", 	with: "wu gambinos #{val}"
    fill_in "exercise_tips", 			with: "protect yo neck #{val}"
    fill_in "exercise_categories",  	with: "shoalin sword style #{val}"
    fill_in "exercise_equipment", 		with: "bobby boulders #{val}"
  end
end

World CreateExercise