class ViewFeature

  attr_accessor :user, :feature

  def initialize(user, feature)
    return unless user.staff?
  	@user, @feature = user, feature.downcase
  end

  def update_features
    feature_in_user_features ? delete_feature : add_feature
  end

  private

  def feature_in_user_features
  	@user.features.keys.include? @feature
  end

  def delete_feature
  	@user.destroy_key(:features, @feature)
    @user.save
  end

  def add_feature
  	@user.features[@feature] = 'true'
  	@user.save
  end
end