class Profile < ActiveRecord::Base
  attr_accessible :hourly_rate, :avatar, :experience, :first_name,
                  :last_name, :url, :user_id

  belongs_to :user

  def name
  	return combined_names if both_names?
  	return first_name     if first_name
  	return last_name      if last_name
  	no_names
  end

  def org_name
  	organisation.name
  end

  private

  def combined_names
  	"#{first_name} #{last_name}"
  end

  def no_names
  	'No name on record'
  end

  def both_names?
  	first_name && last_name
  end
end