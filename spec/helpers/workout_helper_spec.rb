require_relative '../spec_helper_lite'
require_relative '../../app/helpers/workout_helper'

describe "WorkoutHelper" do
  let(:helper)       { Object.new.extend WorkoutHelper }
  let(:workout)      { OpenStruct.new id: 1 }
  let(:current_user) { Object.new }

  describe "#link_to_baby_form" do
    let(:form_attribute) { :name }
    let(:result) { helper.link_to_baby_form(current_user, workout, form_attribute, anything) }

    context "current_user's workout" do
      before do
        mock(helper).can?(:manage, workout) { true }
        mock(helper).render(partial: "shared/baby_form", 
                            locals: { 
                              form_element: anything,
                              form_attribute: form_attribute}) { "RENDER PARTIAL" }
      end

      it "renders the baby_form partial" do
        result.should eq "RENDER PARTIAL"
      end
    end
  end

  describe "#link_to_edit_form" do
    let(:form_attribute) { "name" }
    let(:result) { helper.link_to_edit_form(workout, form_attribute)}

    context "current_user's workout" do
      before do
        mock(helper).can?(:manage, workout) { true }
        mock(helper).link_to("Edit name", anything, anything) { "EDIT NAME LINK" }
      end

      it "returns the edit name link" do
        result.should eq "EDIT NAME LINK"
      end
    end

    context "not current_user's workout" do
      before { mock(helper).can?(:manage, workout) { false } }

      it "returns nothing" do
        result.should eq nil
      end
    end
  end

  describe "#link_to_add_exercise" do
    let(:result) { helper.link_to_add_exercise(workout) }

    context "current_user's workout" do
      before do
        mock(helper).can?(:manage, workout) { true }
        mock(helper).link_to("ADD EXERCISE", anything, anything) { "ADD EXERCISE LINK" }
      end

      it "renders the exercise link" do
        result.should eq "ADD EXERCISE LINK"
      end
    end

    context "not current_user's workout" do
      before { mock(helper).can?(:manage, workout) { false } }

      it "renders nothing" do
        result.should eq nil
      end
    end
  end

  describe "#link_to_create_copy" do
    let(:result)    { helper.link_to_create_copy(workout) }
    let(:copy_link) { "COPY LINK" }

    context "not current_user's workout" do
      before do
        mock(helper).can?(:manage, workout) { false }
        mock(helper).copy_workouts_path({id: 1})
        mock(helper).link_to("CREATE COPY", anything, anything) { copy_link }
      end

      it "creates a link to copy the workout" do
        result.should eq "COPY LINK"
      end
    end

    context "current_user's workout" do
      before { mock(helper).can?(:manage, workout) { true } }

      it "creates a link to copy the workout" do
        result.should eq nil
      end
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
    let(:snapz_message) { Object.new }
    let(:result)        { helper.link_to_delete_workout(workout, snapz_message) }

    context "current_user's workout" do
      before do
        mock(helper).can?(:manage, workout) { true }
        mock(helper).user_workout_path(anything, anything)
        mock(helper).current_user { Object.new }
        mock(helper).link_to("DELETE WORKOUT", anything, anything) { "DESTROY WORKOUT" }
      end

      it "links to destroy the workout" do
        result.should eq "DESTROY WORKOUT"
      end
    end

    context "not current_user's workout" do
      before { mock(helper).can?(:manage, workout) { false } }

      it "renders nothing" do
        result.should eq nil
      end
    end
  end

  describe "#new_workout" do
    let(:current_user) { Object.new }
    let(:result) { helper.new_workout }
    before do
      mock(helper).current_user.times(2) { current_user }
      mock(current_user).build_workout { "NEW WORKOUT" }
    end

    it "creates a new workout through the user" do
      result.should eq [current_user, "NEW WORKOUT"]
    end
  end
end