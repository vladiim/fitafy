class WorkoutExerciseSetDetail

  attr_reader :workout_exercise

  # delegate :set_details, :to => @workout_exercise

  def initialize(workout_exercise)
  	@workout_exercise = workout_exercise
  end

  def as_hash
  	result = {}
    @workout_exercise.set_details.each do |set|
      check_validity_of set
      result[set[0]] = eval(set[1])
    end
    result
  end

  private

  def check_validity_of(set)
  	raise Exceptions::WrongSetDetails, 'Set must be a number' unless set[0].to_i.class == Fixnum
  	UP TO:::::
    # ["1", "{:reps=>13, :weight=>80}"][1].match(':reps=>')
    # => #<MatchData ":reps=>">
  end
end