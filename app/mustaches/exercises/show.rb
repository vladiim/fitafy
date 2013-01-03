module Exercises
  class Show < Mustache
  	self.template_path = 'app/assets/javascripts/app/templates'

    attr_accessor :exercise

    def description
      @exercise.safe_description.humanize
    end

    def tips
      @exercise.tips.humanize || "No tips for this exercise"
    end

    def muscle
      @exercise.muscle.humanize
    end

    def category
      @exercise.safe_category.humanize
    end

    def equipment
      @exercise.equipment_name.titleize || "No equipment for this exercise"
    end

    def render_json(exercise)
      self.exercise = exercise
      {
        description: description,
        tips:        tips,
        muscle:      muscle,
        category:    category,
        equipment:   equipment
      }
    end
  end
end