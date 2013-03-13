require 'active_support/core_ext'

class ProfileAttributes

  attr_reader :profile

  delegate :first_name, :last_name, :organisations, to: :profile

  def initialize(profile_id)
  	@profile = Profile.find(profile_id)
  end

  def name
  	return combined_names if both_names?
  	return first_name     if first_name
  	return last_name      if last_name
  	no_names
  end

  def orgs
    organisations ? organisations : no_organisations
  end

  private

  def combined_names
  	"#{first_name} #{last_name}"
  end

  def both_names?
  	first_name && last_name
  end

  def no_names
  	'No name on record'
  end

  def no_organisations
  	EmptyOrganisation.new
  end
end