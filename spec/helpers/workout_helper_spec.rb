require_relative '../spec_helper_lite'
require_relative '../../app/helpers/workout_helper'

describe "WorkoutHelper" do
  let(:helper)  { Object.new.extend WorkoutHelper }
  let(:workout)   { OpenStruct.new id: 1 }

  describe "#link_to_edit_or_copy_workout" do

    context "current user can update workout" do
      before do
        mock(helper).can?(:update, workout) { true }
        mock(helper).link_to_edit_workout(workout) { "EDIT WORKOUT LINK" }
      end

      it "links to edit workout" do
        helper.link_to_edit_or_copy_workout(anything, workout).should eq "EDIT WORKOUT LINK"
      end
    end

    context "current user logged in" do
      let(:current_user) { true }

      before do
        mock(helper).can?(:update, workout) { false }
        mock(helper).link_to_create_copy(workout) { "CREATE COPY LINK" }
      end

      it "links to create copy" do
        helper.link_to_edit_or_copy_workout(current_user, workout).should eq "CREATE COPY LINK"
      end
    end

    context "current user not logged in" do
      let(:current_user) { nil }

      before do
        mock(helper).can?(:update, workout)       { false }
        mock(helper).link_to_create_copy(workout) { "REDIRECT LINK" }
      end

      it "redirects to sign up" do
        helper.link_to_edit_or_copy_workout(current_user, workout).should eq "REDIRECT LINK"
      end
    end
  end

  describe "#link_to_edit_workout" do
    let(:workout)   { OpenStruct.new user_id: 1 }
    let(:edit_workout_link) { "EDIT WORKOUT LINK" }

    before do
      mock(helper).edit_user_workout_path(1, workout)
      mock(helper).link_to("EDIT WORKOUT", anything, anything) { edit_workout_link }
    end

    it "creates an edit workout link" do
      helper.link_to_edit_workout(workout).should eq "EDIT WORKOUT LINK"
    end
  end

  describe "#link_to_create_copy" do
    let(:copy_link) { "COPY LINK" }

    before do
      mock(helper).copy_workouts_path({id: 1})
      mock(helper).link_to("CREATE COPY", anything, anything) { copy_link }
    end

    it "creates a link to copy the workout" do
      helper.link_to_create_copy(workout).should eq "COPY LINK"
    end
  end

  describe "#link_to_download_workout_pdf" do
    let(:workout)       { OpenStruct.new user_id: 1 }
    let(:download_link) { "DOWNLOAD LINK" }

    before do
      mock(helper).user_workout_path(1, workout, format: "pdf")
      mock(helper).link_to("DOWNLOAD AS PDF", anything, anything) { download_link }
    end

    it "creates a download pdf link" do
      helper.link_to_download_workout_pdf(workout).should eq "DOWNLOAD LINK"
    end
  end

  describe "#link_to_delete_workout" do
    let(:workout)       { Object.new }
    let(:user)          { Object.new }
    let(:snapz_message) { Object.new }

    context "with update cta" do
      it "links to destroy the workout" do
        mock(helper).current_user { user }
        mock(helper).user_workout_path(user, workout)
        mock(helper).link_to("DELETE WORKOUT", anything, anything) { "DESTROY WORKOUT" }
        helper.link_to_delete_workout(workout, snapz_message, "UPDATE WORKOUT").should eq "DESTROY WORKOUT"
      end
    end

    context "with no cta" do
      it "doesn't render anything" do
        helper.link_to_delete_workout(workout, snapz_message).should eq nil
      end
    end
  end
end