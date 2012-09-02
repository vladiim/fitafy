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
      "Gazillions of workouts and exercises to help you manage your Personal Training clients!"
  	end

    def self.unauthorized
      "Sorry d00d I can't show you that page!"
    end
  end
end