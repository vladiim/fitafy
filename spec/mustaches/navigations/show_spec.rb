require 'spec_helper'

describe Navigations::Show do
  let(:user)         { OpenStruct.new username: 'USER NAME', id: 1 }
  let(:view_context) { OpenStruct.new workouts_path: 'WORKOUTS PATH', 
                                      new_workout_path: 'NEW WORKOUT PATH',
                                      login_path: 'LOGIN',
                                      sign_up_path: 'SIGN UP',
                                      logout_path: 'LOGOUT PATH'}
  let(:nav)          { Navigations::Show.new view_context, user }

  describe "#initialize" do
    it "sets the variables" do
      nav.view_context.should eq view_context
      nav.user.should eq user
    end
  end

  describe "#render_json" do
    before do
      mock(view_context).user_path(user)      { 'USER PATH'}
      mock(view_context).edit_user_path(user) { 'EDIT USER PATH' }
      mock(user).trainer?                     { true }
      mock(user).avatar_url(:thumbnail)       { 'AVATAR' }
    end

    it "renders the required fields as a hash" do
      result_hash = {
        workouts_path:                 'WORKOUTS PATH',
        new_workout_path:              'NEW WORKOUT PATH',
        logged_in_trainer:             true,
        current_user_path:             'USER PATH',
        current_user_thumbnail_avatar: 'AVATAR',
        user_name:                     'USER NAME',
        edit_user_path:                'EDIT USER PATH',
        login_path:                    'LOGIN',
        sign_up_path:                  'SIGN UP',
        logout_path:                   'LOGOUT PATH'
      }
      nav.render_json.should eq result_hash
    end
  end
end