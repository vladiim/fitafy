module SnapzSayz

  module Information

  	def self.title
  	  options = [
        "FITAFY FLY!",
        "FITIFICATION TIME!"
      ]
      options[rand options.length]
  	end

  	def self.usp
      "Find, copy, create and manage workouts for your PT clients."
  	end

    def self.unauthorized
      "Sorry d00d I can't show you that page!"
    end
  end
end