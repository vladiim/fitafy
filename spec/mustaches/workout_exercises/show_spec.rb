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
  end

  context 'initialized' do
    before { renderer.workout_exercise = workout_exercise }

    describe '#order' do
      let(:result) { renderer.order }
      before { mock(workout_exercise).safe_order { 'WE ORDER' } }

      it 'returns the workout_exercises safe_order' do
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
            mock(view_context).link_to('Move Up', anything) { 'UP LINK' }
          end

          it 'returns an up link' do
          	result.should eq 'UP LINK'
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
            mock(view_context).link_to('Move Down', anything) { 'DOWN LINK' }
          end

          it 'returns a down link' do
          	result.should eq 'DOWN LINK'
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
        result.should eq 'EXERCISE NAME'
      end
    end

    describe '#instructions' do
      let(:result) { renderer.instructions }
      before { mock(workout_exercise).instructions { 'EXERCISE INSTUCTIONS' } }

      it 'returns the workout_exercises instructions' do
      	result.should eq 'EXERCISE INSTUCTIONS'
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
      	result.should eq 'EXERCISE MUSCLE'
      end
    end

    describe '#equipment_name' do
      let(:result) { renderer.equipment_name }
      before { mock(workout_exercise).equipment_name { 'EQUIPMENT NAME' } }

      it 'returns the workout_exercises equipment_name' do
      	result.should eq 'EQUIPMENT NAME'
      end
    end
  end
end