require 'spec_helper'

describe Exercises::Index do
  let(:exercise) { build :exercise }
  let(:workout)  { OpenStruct.new id: 1 }
  let(:view)     { Object.new }
  let(:user)     { OpenStruct.new admin?: true }
  let(:index)    { Exercises::Index.new }

  describe '#initialize' do
    context 'with no variables passed in' do
      it 'sets its view_context and user to nil' do
        index.should be
        index.view_context.should eq nil
        index.user.should eq nil
      end
    end

    context 'with variables passed in' do
      let(:index) { Exercises::Index.new(view, user)}

      it 'sets its view_context and user' do
        index.should be
        index.view_context.should eq view
        index.user.should eq user
      end
    end

  #   context 'on workout page' do
  #     let(:index) { Exercises::Index.new(view, user)}

  #     before do
  #       mock(view).current_page?(controller: 'workouts', action: 'show') { true }
  #       mock(view).params     { { :id => 1 } }
  #       mock(Workout).find(1) { workout }
  #     end

  #     it 'finds and sets the workout' do
  #       index.workout.should eq workout
  #     end
  #   end
  end

  describe "render_json" do
    let(:result) { index.render_json exercise }

    before do
      index.view_context = view
      index.user         = user
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

    it 'doesnt generate a new_workout_exercise_form' do
      result.fetch(:new_workout_exercise_form).should eq nil
    end

    # context 'on workout page' do
    #   let(:workout) { OpenStruct.new id: 1 }

    #   before do
    #     index.workout = workout
    #     mock(view).simple_form_for(anything, anything) { 'NEW WE URL' }
    #   end

    #   it 'generates a new_workout_exercise_form' do
    #     result.fetch(:new_workout_exercise_form).should eq 'NEW WE URL'
    #   end
    # end
  end
end