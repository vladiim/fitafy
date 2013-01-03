require 'spec_helper'

describe Workouts::Index do
  let(:workout) { build :workout }
  let(:view)    { Object.new }
  let(:index)   { Workouts::Index.new }

  describe "render_json" do
    before       { mock(view).users_workout_path(workout.username, workout) { "URL" } }
    let(:result) { index.render_json workout, view }

    it "sets the workout" do
      index.render_json workout, view
      index.workout.should eq workout
    end

    it "creates an url with the view context" do
      result.should match(/\"url\":\"URL\"/) # json equivalent to { url: 'URL' }
    end
  end
end