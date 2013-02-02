require 'spec_helper'

describe WorkoutExercises::Show do
  let(:user)             { OpenStruct.new id: 1 }
  let(:view_context)     { Object.new }
  let(:workout_exercise) { OpenStruct.new user_id: 1 }
  let(:renderer)         { WorkoutExercises::Show.new view_context, user }

  describe '#initialize' do

    it 'requires and sets a user' do
      renderer.user.should eq user
    end

    it 'requires and sets a view_context' do
      renderer.view_context.should eq view_context
    end

    it 'can set/get a workout exercise' do
      renderer.workout_exercise = workout_exercise
      renderer.workout_exercise.should eq workout_exercise
    end

    context 'user is nil' do
      let(:nil_user)     { nil }
      let(:renderer) { WorkoutExercises::Show.new view_context, nil_user }

      it 'should be an OpenStruct' do
        renderer.user.class.should eq OpenStruct
      end

      it 'should have an id of 0' do
        renderer.user.id.should eq 0
      end
    end
  end

  context 'initialized' do
    before { renderer.workout_exercise = workout_exercise }

    describe '#order' do
      let(:result) { renderer.order }
      before { mock(workout_exercise).order_number { 'WE ORDER' } }

      it 'returns the workout_exercises order_number' do
        result.should eq 'WE ORDER'
      end
    end

    context 'current_users workout_exercise' do
      describe 'up_link' do
      	let(:result) { renderer.up_link }

        context 'order = 1' do
          before { mock(renderer).order { 1 } }

          it 'returns nil' do
          	result.should eq nil
          end
        end

        context 'order > 1' do
          before do
            mock(renderer).order { 2 }
            mock(renderer).generate_up_icon { 'UP ICON' }
          end

          it 'returns an up link' do
          	result.should eq 'UP ICON'
          end
        end
      end

      describe 'down_link' do
      	let(:result)  { renderer.down_link }
        let(:workout) { Object.new }

        before do
          mock(renderer).order { 3 }
          mock(workout_exercise).workout { workout }
        end

        context 'last order' do

          before { mock(workout).exercises_count  { 3 } }

          it 'returns nil' do
          	result.should eq nil
          end
        end

        context 'order < total' do
          before do
            mock(workout).exercises_count  { 4 }
            mock(renderer).generate_down_icon { 'DOWN ICON' }
          end

          it 'returns a down link' do
          	result.should eq 'DOWN ICON'
          end
        end
      end
    end

    context "not the current_user's workout_exercise" do
      before { mock(workout_exercise).user_id { 2 } }

      describe 'up_link' do
      	let(:result) { renderer.up_link }

        it 'returns nil' do
          result.should eq nil
        end
      end

      describe 'down_link' do
      	let(:result) { renderer.down_link }

        it 'returns nil' do
          result.should eq nil
        end
      end
    end

    describe '#name' do
      let(:result) { renderer.name }
      before { mock(workout_exercise).name { 'EXERCISE NAME' } }

      it 'returns the exercise name' do
        result.should eq "Exercise Name"
      end
    end

    describe '#exercise_url' do
      let(:result)   { renderer.exercise_url }
      let(:exercise) { build :exercise, name: 'exercise-name' }

      before do
        mock(workout_exercise).exercise { exercise }
        mock(view_context).exercise_path(exercise) { '/exercises/exercise-name' }
      end

      it 'returns the exercise name' do
        result.should eq "/exercises/exercise-name"
      end
    end

    describe '#instructions' do
      let(:result) { renderer.instructions }
      before { mock(workout_exercise).instructions { 'EXERCISE INSTUCTIONS' } }

      it 'returns the workout_exercises instructions' do
      	result.should eq "Exercise instuctions"
      end
    end

    describe '#sets' do
      let(:result) { renderer.sets }
      before { mock(workout_exercise).sets { 'EXERCISE SETS' } }

      it 'returns the workout_exercises sets' do
      	result.should eq 'EXERCISE SETS'
      end
    end

    describe '#muscle' do
      let(:result) { renderer.muscle }
      before { mock(workout_exercise).muscle { 'EXERCISE MUSCLE' } }

      it 'returns the workout_exercises muscle' do
      	result.should eq "Exercise Muscle"
      end
    end

    describe '#equipment_name' do
      let(:result) { renderer.equipment_name }
      before { mock(workout_exercise).equipment_name.times(2) { 'EQUIPMENT NAME' } }

      it 'returns the workout_exercises equipment_name' do
      	result.should eq "Equipment Name"
      end
    end
  end

  describe '#render_json' do
  	let(:workout_exercise) { create :workout_exercise, instructions: 'blah' }
  	let(:user)             { workout_exercise.workout.user }
    let(:renderer)         { WorkoutExercises::Show.new view_context, user }
    let(:result)           { renderer.render_json workout_exercise }

    before do
      mock(renderer).url              { 'URL' }
      mock(renderer).exercise_url     { 'URL' }
      mock(renderer).json_set_details { 'SET DETAILS' }
      mock(renderer).set_details_url  { 'URL' }
    end

    it 'returns all details as a hash' do
      result_hash = {
        id:              workout_exercise.id,
        name:            workout_exercise.name.titleize,
        set_details:     'SET DETAILS',
        url:             'URL',
        set_details_url: 'URL',
        exercise_url:    'URL',
        instructions:    workout_exercise.instructions.humanize,
        sets:            workout_exercise.sets,
        muscle:          workout_exercise.muscle.titleize,
        equipment_name:  workout_exercise.equipment_name.titleize,
        order:           workout_exercise.order_number,
        up_link: nil,
        down_link: nil,
        own_workout:    true
      }
      result.should eq result_hash
    end
  end
end