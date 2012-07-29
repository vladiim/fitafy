module CreateExercise

  EXERCISE_ATTRIBUTES = [{ name:         "liquid swords",
  						             description:  "wu gambinos",
  						             tips:  		    "protect yo neck",
  						             categories:   "shoalin back sword style",
  						             equipment: 	  "bobby boulders"
  }]

  NO_NAME_ATTRS = EXERCISE_ATTRIBUTES[0].merge(name: " ")

  def exercise_type_attrs
    names = Exercise::EXERCISE_TYPES
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

  def alphabetical_exercises
    [{
      name:        "bbbb",
      description: "bbbb",
      tips:        "bbbb",
      categories:  "abs",
      equipment:   "bbbb",
      },
      {
      name:        "cccc",
      description: "cccc",
      tips:        "cccc",
      categories:  "abs",
      equipment:   "cccc",
      },
      {
      name:        "aaaa",
      description: "aaaa",
      tips:        "aaaa",
      categories:  "abs",
      equipment:   "aaaa",
      }
    ]
  end

  def create_exercise attrs=EXERCISE_ATTRIBUTES
    create_admin_user
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