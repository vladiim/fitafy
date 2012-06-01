module CreateArelExercise

  def create_exercise deets
  	Exercise.create(name: 		 deets,
  					description: deets
  	)
  end
end