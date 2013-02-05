module Exercises
  class Show < Mustache
  	self.template_path = 'app/assets/javascripts/app/templates'

    attr_accessor :exercise

    delegate :description,    to: :@exercise
    delegate :tips,           to: :@exercise
    delegate :muscle,         to: :@exercise
    delegate :category,       to: :@exercise
    delegate :equipment_name, to: :@exercise
    delegate :products,       to: :@exercise

    # products - gives array of 8 products
    # product_name
    # product_image
    # analytics_link
    # price

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