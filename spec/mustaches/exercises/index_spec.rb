require 'spec_helper'

describe Exercises::Index do
  let(:exercise) { build :exercise }
  let(:view)     { Object.new }
  let(:user)     { OpenStruct.new admin?: true }
  let(:index)    { Exercises::Index.new }

  describe "render_json" do
    let(:result) { index.render_json exercise, view }

    before do
      index.user = user
      mock(view).edit_exercise_path(exercise) { "EDIT URL" }
      mock(view).exercise_path(exercise)      { "URL" }
    end

    it "sets the exercise" do
      result
      index.exercise.should eq exercise
    end

    it "creates an url with the view context" do
      result.fetch(:edit_url).should eq "EDIT URL"
    end

    it 'creates an edit_url with the view context' do
      result.fetch(:url).should eq "URL"
    end
  end
end