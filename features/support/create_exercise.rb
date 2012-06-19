module CreateExercise

  EXERCISE_ATTRIBUTES = { name:         "liquid swords",
  						            description:  "wu gambinos",
  						            tips:  		    "protect yo neck",
  						            categories:   "shoalin sword style",
  						            equipment: 	  "bobby boulders"
  }

  def create_exercise
    visit_new_exercise
    fill_in_exercise_form
    click_create_exercise
    @exercise = Exercise.find_by_name("liquid swords")
  end

  def fill_in_exercise_form
  	fill_in "exercise_name", 			    with: EXERCISE_ATTRIBUTES[:name]
    fill_in "exercise_description", 	with: EXERCISE_ATTRIBUTES[:description]
    fill_in "exercise_tips", 			    with: EXERCISE_ATTRIBUTES[:tips]
    fill_in "exercise_categories",  	with: EXERCISE_ATTRIBUTES[:categories]
    fill_in "exercise_equipment", 		with: EXERCISE_ATTRIBUTES[:equipment]
  end

  def click_create_exercise
    click_button "Create Exercise"
  end

  def visit_new_exercise
    visit new_exercise_path
  end
end

World CreateExercise