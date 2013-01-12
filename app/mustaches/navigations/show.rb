module Navigations
  class Show < Mustache
    include Rails.application.routes.url_helpers
    self.template_path = "app/assets/javascripts/app/templates"

    attr_accessor :view_context, :user

    def initialize(view_context, user)
      @view_context = view_context
      user.nil? ? @user = OpenStruct.new(id: 0) : @user = user
    end

    def workouts_path
      @view_context.workouts_path
    end

    def new_workout_path
      @view_context.new_workout_path
    end

    def logged_in_trainer
      @user.id > 0 && trainer_or_admin?
    end

    def admin
      @user.admin?
    end

    def current_user_path
      @view_context.user_path(@user)
    end

    def edit_user_path
      @view_context.edit_user_path(@user)
    end

    def exercises_path
      @view_context.exercises_path
    end

    def new_exercise_path
      @view_context.new_exercise_path
    end

    def current_user_thumbnail_avatar
      @user.avatar_url(:thumbnail)
    end

    def user_name
      @user.username.upcase
    end

    def login_path
      @view_context.login_path
    end

    def sign_up_path
      @view_context.sign_up_path
    end

    def logout_path
      @view_context.logout_path
    end

    def render_json
      {
        workouts_path:                 workouts_path,
        new_workout_path:              new_workout_path,
        logged_in_trainer:             logged_in_trainer,
        admin:                         admin,
        current_user_path:             current_user_path,
        current_user_thumbnail_avatar: current_user_thumbnail_avatar,
        user_name:                     user_name,
        edit_user_path:                edit_user_path,
        exercises_path:                exercises_path,
        new_exercise_path:             new_exercise_path,
        login_path:                    login_path,
        sign_up_path:                  sign_up_path,
        logout_path:                   logout_path
      }
    end

    private

    def trainer_or_admin?
      @user.trainer? || @user.admin?
    end
  end
end