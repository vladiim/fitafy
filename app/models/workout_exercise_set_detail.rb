class WorkoutExerciseSetDetail

  ALLOWED_KEYS = %w{reps weight}

  attr_reader :workout_exercise, :clean_result

  def initialize(workout_exercise)
  	@workout_exercise = workout_exercise
  end

  def to_hash
    @clean_result = {}
    set_details_to_clean_result
    @clean_result
  end

  private

  def set_details_to_clean_result
    @workout_exercise.set_details.each_with_index do |set, index|
      @clean_result[add_one_stringify(index)] = format(set[1])
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