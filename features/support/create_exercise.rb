module CreateExercise

  EXERCISE_ATTRIBUTES = [{ name:         "liquid swords",
  						             description:  "wu gambinos",
  						             tips:  		    "protect yo neck",
  						             categories:   "shoalin sword style",
  						             equipment: 	  "bobby boulders"
  }]

  NO_NAME_ATTRS = [{ name:         "",
                     description:  "wu gambinos",
                     tips:          "protect yo neck",
                     categories:   "shoalin sword style",
                     equipment:     "bobby boulders"
  }]

  def exercise_type_attrs
    names = WorkoutExercise::EXERCISE_TYPE
    @attrs = []
    names.each do |name|
      attr = { name:         "#{name} title",
               description:  "wu gambinos",
               tips:         "protect yo neck",
               categories:   name,
               equipment:    "bobby boulders"
              }
      @attrs << attr
    end
    @attrs
  end

  def no_name_attrs
      { name:         "#{name} title",
        description:  "wu gambinos",
        tips:         "protect yo neck",
        categories:   name,
        equipment:    "bobby boulders"
      }
  end

  def create_exercise attrs=EXERCISE_ATTRIBUTES
    make_exercise attrs
    @exercise = Exercise.find_by_name("liquid swords")
  end

  def make_exercise attrs
    attrs.each do |attr|
      visit_new_exercise
  	  fill_in "exercise_name", 			    with: attr[:name]
      fill_in "exercise_description", 	with: attr[:description]
      fill_in "exercise_tips", 			    with: attr[:tips]
      fill_in "exercise_categories",  	with: attr[:categories]
      fill_in "exercise_equipment", 		with: attr[:equipment]
      click_create_exercise
    end
  end

  def click_create_exercise
    click_button "CREATE EXERCISE"
  end

  def visit_new_exercise
    visit new_exercise_path
  end
end

World CreateExercise