require 'spec_helper'

describe "ApplicationHelper" do
  let(:controller) { ApplicationController.new }

  describe "#create_nav_workout" do
    context "with current_user" do
      it "instantiates a new Workout" do
        user = build :trainer
        mock(controller).current_user.times(2) { user }
        controller.create_nav_workout.should be_kind_of Workout
      end
    end

    context "without current_user" do
      it "doesn't instantiate a new Workout" do
        mock(controller).current_user { false }
        controller.create_nav_workout.should_not be_kind_of Workout
      end
    end    
  end

  describe "#redirect_back" do
    context "with current user" do
      let(:request_referrer) { "REQUEST REFERRER" }
      let(:session)          { { redirect_to: request_referrer } }

      before do
      	mock(controller).current_user { true }
      	mock(controller).session.times(3) { session }
      	mock(controller).redirect_to(request_referrer)
      end

      it "redirects to request referrer" do
        controller.redirect_back
      end
    end

    context "without current user" do
      before { mock(controller).current_user { false } }

      context "with params" do
      	let(:params) { "PARAMS" }

        it "redirects to the params passed in" do
          mock(controller).redirect_to(params)
          controller.redirect_back(params)
        end
      end

      context "without params" do
        let(:root_path) { "ROOT PATH" }
        before { mock(controller).root_path { root_path } }

        it "redirects to the root path" do
          mock(controller).redirect_to(root_path)
          controller.redirect_back
        end
      end
    end
  end
end