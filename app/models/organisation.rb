class Organisation < ActiveRecord::Base
  attr_accessible :city, :country, :name, :postcode, :state, :street, :suburb
end
