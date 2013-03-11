class ProfileOrganisation < ActiveRecord::Base
  attr_accessible :organisation_id, :profile_id

  belongs_to :profile
  belongs_to :organisation
end
