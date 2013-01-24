require 'spec_helper'

describe WorkoutExerciseSetDetail do
  let(:we)         { build :workout_exercise, set_details: data }
  let(:data)       { {"1"=>"{:reps=>13, :weight=>80}", "2"=>"{:reps=>10, :weight=>100}"} }
  let(:set_detail) { WorkoutExerciseSetDetail.new(we) }

  let(:hash_data) { { '1' => { reps: 13, weight: 80 }, '2'=> { reps: 10, weight: 100 } } }

  describe '#initialize' do

  	it 'stores the workout_exercise locally' do
  	  set_detail.workout_exercise.should eq we
  	end
  end

  describe '#as_hash' do
    let(:result) { set_detail.as_hash }

    context "correct data" do
      it "returns the data as hash_data" do
        result.should eq hash_data
      end
    end

    context "bad data" do
      let(:data) { {"1"=>"{:reps=>13, :weight=>80}", "2"=>"{:reps=>10, :weight=>'SQLINJECT'}"} }

      it 'returns an error' do
      	->{ result }.should raise_error(Exceptions::WrongSetDetails)
      end
    end
  end
end