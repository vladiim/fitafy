require 'spec_helper'

describe WorkoutExerciseDestroyer do
  let(:workout_exercise) { OpenStruct.new order_number: 1 }
  let(:workout)          { OpenStruct.new }
  let(:destroyer)        { WorkoutExerciseDestroyer.new(workout_exercise, workout) }

  let(:workout_exercise2) { OpenStruct.new order_number: 2 }
  let(:workout_exercise3) { OpenStruct.new order_number: 3 }
  let(:workout_exercise4) { OpenStruct.new order_number: 4 }

  describe '#initialize' do
    it 'sets a workout_exercise, workout and order_number' do
      destroyer.workout_exercise.should eq workout_exercise
      destroyer.workout.should eq workout
      destroyer.order_number.should eq 1
    end
  end

  describe '#destroy_safely!' do

    context 'one workout_exercise' do
      before do
        mock(workout).exercises_count { 1 }
        mock(workout_exercise).destroy { true }
      end

      it 'destroys the workout_exercise' do
        destroyer.destroy_safely!.should be
      end
    end

    context 'three workout_exercises' do
      before do
        mock(workout).exercises_count { 3 }
        mock(workout).workout_exercises { [workout_exercise2, workout_exercise3, workout_exercise] }
        destroyer.destroy_safely!
      end

      context 'destroyer.workout_exercise == workout_exercise1' do

        it 'changes the order of the other workout_exercises and saves them' do
          workout_exercise2.order_number.should eq 1
          workout_exercise3.order_number.should eq 2
        end
      end

      context 'destroyer.workout_exercise == workout_exercise2' do
        let(:destroyer) { WorkoutExerciseDestroyer.new(workout_exercise2, workout) }

        it 'changes the order of the other workout_exercises and saves them' do
          workout_exercise.order_number.should eq 1
          workout_exercise3.order_number.should eq 2
        end
      end

      context 'destroyer.workout_exercise == workout_exercise3' do
        let(:destroyer) { WorkoutExerciseDestroyer.new(workout_exercise3, workout) }

        it 'changes the order of the other workout_exercises and saves them' do
          workout_exercise.order_number.should eq 1
          workout_exercise2.order_number.should eq 2
        end
      end
    end
  end
end