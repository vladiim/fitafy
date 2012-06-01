module CreateExercise

  EXERCISE_ATTRIBUTES = { name:         "liquid swords",
  						            description:  "wu gambinos",
  						            tips:  		    "protect yo neck",
  						            categories:   "shoalin sword style",
  						            equipment: 	  "bobby boulders"
  }

  def fill_in_exercise_form
  	fill_in "exercise_name", 			    with: EXERCISE_ATTRIBUTES[:name]
    fill_in "exercise_description", 	with: EXERCISE_ATTRIBUTES[:description]
    fill_in "exercise_tips", 			    with: EXERCISE_ATTRIBUTES[:tips]
    fill_in "exercise_categories",  	with: EXERCISE_ATTRIBUTES[:categories]
    fill_in "exercise_equipment", 		with: EXERCISE_ATTRIBUTES[:equipment]
  end
end

World CreateExercise