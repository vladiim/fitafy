class WorkoutExerciseSetDetail

  ALLOWED_KEYS = %w{reps weight}

  attr_reader :workout_exercise, :clean_result,
              :params, :mustache_helper, :final_result,
              :own_workout, :set_details_url

  def initialize(workout_exercise, mustache_helper)
    return unless workout_exercise.class == WorkoutExercise
  	@workout_exercise, @mustache_helper = workout_exercise, mustache_helper
  end

  def update(params)
    @params, @clean_result = params, {}
    clean_set_details
    @workout_exercise.set_details = @clean_result
    @workout_exercise.save
  end

  def to_json
    to_hash.to_json
  end

  def to_hash
    @clean_result, @final_result = {}, { set_details: [] }
    return unless @workout_exercise.set_details
    add_set_details_to_clean_result
    add_clean_result_to_final_result
    @final_result
  end

  private

  def add_clean_result_to_final_result
    @clean_result.each_with_index do |result, index|
      set, details = result[0], result[1]
      add_set_to_final_result(set)
      add_details_to_final_result(details, index)
      add_own_workout_to_final_result(index)
      add_set_details_url_to_final_result(index)
    end
  end

  def add_set_to_final_result(set)
    @final_result[:set_details] << { set: set.to_i }
  end

  def add_details_to_final_result(details, index)
    details.each do |key, value|
      @final_result[:set_details][index][key] = value
    end
  end

  def add_own_workout_to_final_result(index)
    own_workout = @own_workout ||= @mustache_helper.own_workout
    @final_result[:set_details][index][:own_workout] = own_workout
  end

  def add_set_details_url_to_final_result(index)
    set_details_url = @set_details_url ||= @mustache_helper.set_details_url
    @final_result[:set_details][index][:set_details_url] = set_details_url
  end

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
    correct_format, formatted = set.scan(/(\w+)/), {}
    return if correct_format == []
    correct_format.each_slice(2) { |match| add_to_formatted(match.flatten, formatted) }
    formatted
  end

  def add_to_formatted(match, formatted)
    key, value = match[0], match[1]
    return unless is_allowed?(key) && is_num?(value)
    formatted[key.to_sym] = to_num(value)
  end

  def add_one_stringify(index)
    (index + 1).to_s
  end

  def to_num(value)
    value.to_i if is_fixnum?(value)
  end

  def is_allowed?(key)
    ALLOWED_KEYS.include?(key)
  end

  def is_num?(value)
    is_fixnum?(value)# || is_float?(value)
  end

  # the length comarison in is_fixnum? is_float? avoids the opposing
  # class being evaluated as true

  def is_fixnum?(value)
    value.to_i.to_s.length == value.length && value.to_i.class == Fixnum
  end

  # def is_float?(value)
  #   value.to_f.to_s.length == value.length && value.to_f.class == Float
  # end
end