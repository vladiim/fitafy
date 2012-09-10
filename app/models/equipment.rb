class Equipment < ActiveRecord::Base

  def self.all_names
  	["1 Eq", "2 Eq", "3 Eq"]
  	# scoped.map(&:name)
  end
end