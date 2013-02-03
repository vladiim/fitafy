module Exercises
  class Show < Mustache
  	self.template_path = 'app/assets/javascripts/app/templates'

    attr_accessor :exercise

    delegate :description,    to: :@exercise
    delegate :tips,           to: :@exercise
    delegate :muscle,         to: :@exercise
    delegate :category,       to: :@exercise
    delegate :equipment_name, to: :@exercise
    # products - gives array of 8 products
    # product_name
    # product_image
    # analytics_link
    # price

    # def name
    #   @exercise.name
    # end

    # def description
    #   @exercise.safe_description.humanize
    # end

    # def tips
    #   @exercise.tips.humanize || "No tips for this exercise"
    # end

    # def muscle
    #   @exercise.muscle.humanize
    # end

    # def category
    #   @exercise.safe_category.humanize
    # end

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