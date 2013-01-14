module SnapzSayz
  module ViewFeatureSpeak

    def self.updated(feature, features)
      if features.include?(feature)
        "Boom, you can now view the #{self.humanize(feature)}"
      else
      	"#{self.humanize(feature)} has been removed from your view"
      end
    end

    def self.error_with(feature)
      "There was an error updating your #{self.humanize(feature)} feature view"
    end

    def self.humanize(name)
      name.upcase.gsub('_', ' ').split.last
    end
  end
end