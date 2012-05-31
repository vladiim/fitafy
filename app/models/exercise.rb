class Exercise < ActiveRecord::Base
  attr_accessible :categories, :description, :equipment, :name, :tips

  validates :name, :description, presence: true
end
