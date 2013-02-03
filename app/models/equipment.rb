class Equipment < ActiveRecord::Base
  attr_accessible :name

  has_many :exercises
  has_many :equipment_products
  has_many :products, through: :equipment_products
end