class ViewFeaturesController < ApplicationController

  before_filter :must_be_staff

  def index
  	feature = params[:feature]

    @viewer = ViewFeature.new(current_user, feature)

    if @viewer.update_features
      flash[:success] = SnapzSayz::ViewFeatureSpeak.updated(feature, current_user.features.keys)
      redirect_back
    else
      flash[:error] = SnapzSayz::ViewFeatureSpeak.error_with(feature_message)
      redirect_back
    end
  end

  private

  def must_be_staff
    redirect_back unless current_user.staff?
  end
end