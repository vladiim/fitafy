module Navigations
  class Show < Mustache
    include Rails.application.routes.url_helpers
    self.template_path = "app/assets/javascripts/app/templates"

    attr_accessor :view_context, :user

    delegate :workouts_path,      to: :@view_context
    delegate :new_workouts_path,  to: :@view_context
    delegate :user_path,          to: :@view_context
    delegate :exercise_path,      to: :@view_context
    delegate :new_exercise_path,  to: :@view_context
    delegate :logout_path,        to: :@view_context
    delegate :login_path,         to: :@view_context
    delegate :sign_up_path,       to: :@view_context

    delegate :avatar_url, to: :@user
    delegate :username,   to: :@user
    delegate :staff?,     to: :@user
    delegate :admin?,     to: :@user
    delegate :trainer?,   to: :@user

    def initialize(view_context, user)
      @view_context = view_context
      user.nil? ? @user = OpenStruct.new(id: 0) : @user = user
    end

    def logged_in_trainer
      @user.id > 0 && trainer_or_above?
    end

    def admin
      admin_or_staff?
    end

    def staff
      staff?
    end

    def new_feature
      return unless staff
      $rollout.instance_variable_get("@groups").each_key.inject({}) do |feature_hash, feature|
        feature_hash.merge(
          feature_path: "#{@view_context.user_view_features_path(@user.username)}?feature=#{feature}",
          feature_name: feature.upcase.gsub('_', ' ').split.last
        )
      end
    end

    def current_user_path
      user_path(@user)
    end

    def edit_user_path
      @view_context.edit_user_path(@user)
    end

    def current_user_thumbnail_avatar
      avatar_url(:thumbnail)
    end

    def user_name
      username.upcase
    end

    def render_json
      {
        workouts_path:                 workouts_path,
        new_workout_path:              new_workout_path,
        logged_in_trainer:             logged_in_trainer,
        admin:                         admin,
        staff:                         staff,
        current_user_thumbnail_avatar: current_user_thumbnail_avatar,
        user_name:                     user_name,
        new_feature:                   new_feature,
        current_user_path:             current_user_path,
        edit_user_path:                edit_user_path,
        exercises_path:                exercises_path,
        new_exercise_path:             new_exercise_path,
        login_path:                    login_path,
        sign_up_path:                  sign_up_path,
        logout_path:                   logout_path
      }
    end

    private

    def trainer_or_above?
      trainer? || admin_or_staff?
    end

    def admin_or_staff?
      admin? || staff?
    end
  end
end