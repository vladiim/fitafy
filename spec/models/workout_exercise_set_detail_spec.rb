require 'spec_helper'

describe WorkoutExerciseSetDetail do
  let(:we)         { build :workout_exercise, set_details: data }
  let(:set_detail) { WorkoutExerciseSetDetail.new(we) }
  let(:data)       { good_data }
  let(:hash_data)  { { '1' => { reps: 13, weight: 80 }, '2'=> { reps: 10, weight: 100 } } }

  describe '#initialize' do
  	it 'stores the workout_exercise locally' do
  	  set_detail.workout_exercise.should eq we
  	end
  end

  describe '#update' do
    context 'correct params' do
      it "sets the set_details as the params" do
        mock(we).save { true }
        set_detail.update(params)
        we.set_details.should eq params
      end
    end
  end

  describe '#to_hash' do
    let(:result) { set_detail.to_hash }

    context "correct data" do
      let(:data) { good_data }

      it "returns the data as hash_data" do
        result.should eq hash_data
      end
    end

    context "weight is a float" do
      let(:data) { weight_float }

      it 'filters the data as a float' do
        result.should eq filtered_weight_float
      end
    end

    context "bad set" do
      let(:data) { bad_set }

      it 'returns the sets properly' do
        result.should eq hash_data
      end
    end

    context "bad weight" do
      let(:data) { bad_weight }

      it 'filters the bad weight' do
      	result.should eq filtered_weight
      end
    end
  end
end

def params
  {"1"=>{"reps"=>"12", "weight"=>"55"}}
end

def good_data
  {"1"=>"{:reps=>13, :weight=>80}", "2"=>"{:reps=>10, :weight=>100}"}
end

def filtered_weight_float
  
end

def weight_float
  {"1"=>"{:reps=>13, :weight=>80.5}"}
end

def bad_set
  {"a"=>"{:reps=>13, :weight=>80}", "2"=>"{:reps=>10, :weight=>100}"}
end

def filtered_weight
  { "1"=> {:reps=>13, :weight=>80}, "2"=> {:reps=>10} }
end

def bad_weight
  {"1"=>"{:reps=>13, :weight=>80}", "2"=>"{:reps=>10, :weight=>'SQLINJECT'}"}
end