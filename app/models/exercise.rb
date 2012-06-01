class Exercise < ActiveRecord::Base
  attr_accessible :categories, :description, :equipment, :name, :tips

  validates_presence_of :name, :description

  scope :alphabetical_order, -> { order :name }
end