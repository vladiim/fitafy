class WorkoutExerciseSetDetail

  ALLOWED_KEYS = %w{reps weight}

  attr_reader :workout_exercise, :clean_result, :params

  def initialize(workout_exercise)
    return unless workout_exercise.class == WorkoutExercise
  	@workout_exercise = workout_exercise
  end

  def update(params)
    @params, @clean_result = params, {}
    clean_set_details
    @workout_exercise.set_details = @clean_result
    @workout_exercise.save
  end

  # def to_json
  #   to_hash.to_json
  # end

  def to_hash
    @clean_result = {}
    add_set_details_to_clean_result
    @clean_result
  end

  private

  def clean_set_details
    0...@params.length.times do |n|
      index = add_one_stringify(n)
      add_param_set_details_to_clean_result(@params[index], index)
    end
  end

  def add_param_set_details_to_clean_result(param_set, set_index)
    @clean_result[set_index] = {}

    ALLOWED_KEYS.each do |allowed_key|
      @clean_result[set_index][allowed_key] = param_set[allowed_key]
    end
  end

  def add_set_details_to_clean_result
    self.workout_exercise.set_details.each_with_index do |set, index|
      self.clean_result[add_one_stringify(index)] = format(set[1])
    end
  end

  def format(set)
    correct_format, formatted = set.scan(/(\w+)=>(\d+)/), {}
    return unless correct_format
    correct_format.each { |match| add_to_formatted(match, formatted) }
    formatted
  end

  def add_to_formatted(match, formatted)
    key, value = match[0], match[1]
    return unless is_allowed?(key) && is_fixnum?(value)
    formatted[key.to_sym] = value.to_i
  end

  def add_one_stringify(index)
    (index + 1).to_s
  end

  def is_allowed?(key)
    ALLOWED_KEYS.include?(key)
  end

  def is_fixnum?(value)
    value.to_i.class == Fixnum
  end
end