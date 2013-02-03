require 'spec_helper'

describe WorkoutPdf do
  let(:workout)  { build :workout }
  let(:pdf)      { WorkoutPdf.new(workout) }

  let(:workout_exercise) { OpenStruct.new( set_details: set_details, exercise_id: 1, order_number: 1) }
  let(:exercise)         { OpenStruct.new(name: 'EXERCISE NAME') }
  let(:set_details)      { { "1"=>"{:set=>1, :reps=>1, :weight=>10}", "2"=>"{:set=>2, :reps=>2, :weight=>20}" } }

  def render_pdf
  	pdf.generate_content
  	pdf.render
  end

  def mock_workout_exercises
  	mock(workout).workout_exercises { [workout_exercise] }
  	mock(Exercise).find(workout_exercise.exercise_id) { exercise }
  end

  describe '#render' do
  	let(:rendered_pdf) { PDF::Inspector::Text.analyze(render_pdf) }
    let(:text) { rendered_pdf.strings.to_s }

    describe '#workout_name' do
      it 'renders the workouts name' do
      	text.should =~ /#{workout.name.upcase}/
      end
    end

    describe '#user_name' do
      it 'renders the user name' do
        text.should =~ /#{workout.username.upcase}/
      end
    end

    describe '#workout_notes' do
      it 'renders the workout notes' do
      	text.should =~ /#{workout.notes}/
      end
    end

    describe '#exercise_list' do
      before { mock_workout_exercises }

      it 'renders the exercises names' do
        text.should =~ /#{exercise.name}/
      end
    end

    describe '#set_details' do
      # pdf-inspector doesn't seem to be able to find table text
      # so it's hard to test for the table

      # context "ruby data" do
      #   it 'renders the set details' do
      #     text.should =~ /Set: 1, Reps: 1, Weight: 10kg/
      #     text.should =~ /Set: 2, Reps: 2, Weight: 20kg/
      #   end
      # end

      # context "json data" do
      #   let(:set_details) { { "1"=>"{\"reps\"=>\"1\", \"weight\"=>\"10\"}", "2"=>"{\"reps\"=>\"2\", \"weight\"=>\"20\"}" } }

      #   it 'renders the set details' do
      #     text.should =~ /Set: 1, Reps: 1, Weight: 10kg/
      #     text.should =~ /Set: 2, Reps: 2, Weight: 20kg/
      #   end
      # end
    end
  end
end