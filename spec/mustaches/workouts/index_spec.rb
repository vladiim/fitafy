require 'spec_helper'

describe Workouts::Index do
  let(:workout) { build :workout }
  let(:view)    { Object.new }
  let(:index)   { Workouts::Index.new(view) }

  describe "render_json" do
    before do
      mock(view).users_workout_path(workout.username, workout) { "URL" }
      mock(index).regular_hard_red_icon_image_url { true }
      mock(index).regular_hard_grey_icon_image_url { true }
    end

    let(:result) { index.render_json workout, view }

    it "sets the workout" do
      index.render_json workout, view
      index.workout.should eq workout
    end

    it "creates an url with the view context" do
      result.fetch(:url).should eq "URL"
    end
  end
end