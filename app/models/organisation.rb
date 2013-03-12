class Organisation < ActiveRecord::Base
  attr_accessible :city, :country, :name, :postcode,
                  :state, :street, :suburb

  has_many :profile_organisations
  has_many :profiles, through: :profile_organisations
end
