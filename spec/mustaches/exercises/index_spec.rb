require 'spec_helper'

describe Exercises::Index do
  let(:exercise) { build :exercise }
  let(:view)     { Object.new }
  let(:index)    { Exercises::Index.new }

  describe "render_json" do
    let(:result) { index.render_json exercise, view }

    before do
      mock(view).edit_exercise_path(exercise) { "EDIT URL" }
      mock(view).exercise_path(exercise)      { "URL" }
    end
    it "sets the exercise" do
      result
      index.exercise.should eq exercise
    end

    it "creates an url with the view context" do
      result.should match(/\"edit_url\":\"EDIT URL\"/) # json equivalent to { url: 'URL' }
      result.should match(/\"url\":\"URL\"/)
    end
  end
end