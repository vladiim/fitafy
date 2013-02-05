class Equipment < ActiveRecord::Base
  attr_accessible :name

  has_many :exercises
  has_many :equipment_products
  has_many :products, through: :equipment_products

  def random_products
  	# does this work? products.first(order: 'RANDOM()', limit: 8)
  	8.times.inject([]) do |products, n|
  	  products << self.products.first(order: 'RANDOM()')
  	end
  end
end