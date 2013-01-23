class Equipment < ActiveRecord::Base

  attr_accessible :name

  has_many :exercises
end