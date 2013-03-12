class Profile < ActiveRecord::Base
  attr_accessible :hourly_rate, :avatar, :experience, :first_name,
                  :last_name, :url, :user_id

  belongs_to :user
  has_many   :profile_organisations
  has_many   :organisations, through: :profile_organisations

  def name
  	return combined_names if both_names?
  	return first_name     if first_name
  	return last_name      if last_name
  	no_names
  end

  def orgs
  	organisations? ? organisations : [EmptyOrganisation.new]
  end

  private

  def combined_names
  	"#{first_name} #{last_name}"
  end

  def no_names
  	'No name on record'
  end

  # def organisations_names
  # 	names = ''
  # 	organisations.each { |org| names << "#{org.name.titleize}, " }
  # 	names.sub(/, $/, '')
  # end

  # def no_organisations_names
  # 	'No gym listed'
  # end

  def both_names?
  	first_name && last_name
  end

  def organisations?
  	self.organisations.count > 0
  end
end