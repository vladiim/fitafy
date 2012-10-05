require 'spec_helper'

describe "ApplicationHelper" do
  let(:controller) { ApplicationController.new }

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