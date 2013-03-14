require 'active_support/core_ext'

class ProfileAttributes

  attr_reader :profile

  delegate :first_name, :last_name, :organisations,
           :country,    to: :profile

  def initialize(profile_id)
  	@profile = Profile.find(profile_id)
  end

  def name
  	return combined_names if both_names?
  	return first_name     if first_name?
  	return last_name      if last_name?
  	no_names
  end

  def orgs
    got_orgs? ? organisations : no_organisations
  end

  def org_name
    got_orgs? ? first_org.name : no_org_name
  end

  def street
    got_orgs? ? first_org.street : no_org_street
  end

  def city
    got_orgs? ? first_org.city : no_org_city
  end

  def state
    got_orgs? ? first_org.state : no_org_state
  end

  def postcode
    got_orgs? ? first_org.postcode : no_org_postcode
  end

  private

  def combined_names
  	"#{first_name} #{last_name}"
  end

  def both_names?
  	first_name? && last_name?
  end

  def first_name?
    !first_name.to_s.empty?
  end

  def last_name?
    !last_name.to_s.empty?
  end

  def no_names
  	'No name on record'
  end

  def got_orgs?
    organisations && !organisations.empty?
  end

  def first_org
    organisations.first
  end

  def no_org_name
    EmptyOrganisation.new.name
  end

  def no_org_street
    EmptyOrganisation.new.street
  end

  def no_org_city
    EmptyOrganisation.new.city
  end

  def no_org_state
    EmptyOrganisation.new.state
  end

  def no_org_postcode
    EmptyOrganisation.new.postcode
  end

  def no_organisations
  	[EmptyOrganisation.new]
  end
end