module TagsHelper

  def link_to_single_param_tags(tag)
    link_to tag.upcase, '#', class: "#{tag.downcase} tag_link btn alt"
  end

  def link_to_muscle_tag(muscle, workout=nil)
    workout ? (url = generate_new_workout_exercise_url(muscle, workout)) : (url = generate_exercise_url(muscle))
    link_to muscle.upcase, url
  end

  private

  def generate_new_workout_exercise_url(muscle, workout)
    "/new_workout_exercises?muscle=#{muscle}&workout_id=#{workout.id}"
  end

  def generate_exercise_url(muscle)
    "/exercises?muscle=#{muscle}"
  end
end