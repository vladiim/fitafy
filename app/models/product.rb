class Product < ActiveRecord::Base

  attr_accessible :name, :retailer, :image, :price, :affiliate_link

  has_many :equipment_products
  has_many :equipments, through: :equipment_products
end