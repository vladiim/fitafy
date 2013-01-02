module Exercises
  class Show < Mustache
  	self.template_path = 'app/assets/javascripts/app/templates'

    attr_accessor :exercise

    def description
      @exercise.safe_description.humanize
    end

    def tips
      @exercise.tips.humanize
    end

    def muscle
      @exercise.muscle.humanize
    end

    def category
      @exercise.safe_category.humanize
    end

    def equipment
      @exercise.equipment_name.titleize
    end
  end
end