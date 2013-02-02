require 'spec_helper'

describe WorkoutExerciseSetDetail do
  let(:we)         { build :workout_exercise, set_details: data }
  let(:helper)     { MustacheHelper.new }
  let(:set_detail) { WorkoutExerciseSetDetail.new(we, helper) }
  let(:data)       { good_data }

  let(:klass) { WorkoutExerciseSetDetail }

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

  describe '#to_array' do
    let(:result) { set_detail.to_array }

    context "correct data" do
      let(:data) { good_data }

      it "returns the data as hash_data" do
        result.should eq filtered_good_data
      end
    end

    # context "weight is a float" do
    #   let(:data) { weight_float }

    #   it 'filters the data as a float' do
    #     result.should eq filtered_weight_float
    #   end
    # end

    context "bad set" do
      let(:data) { bad_set }

      it 'returns the sets properly' do
        result.should eq filtered_good_data
      end
    end

    context "bad weight" do
      let(:data) { bad_data }

      it 'filters the bad weight' do
      	result.should eq filtered_bad_data
      end
    end

    context 'no set_details' do
      let(:data) { nil }

      it 'returns nil' do
        result.should eq nil
      end      
    end
  end

  describe '.to_object' do
    let(:result) { klass.to_object(set_details) }

    context 'keys are symbols' do
      context 'good set_details' do
        let(:set_details) { good_symbol_set_details }

        it 'returns an object with the set, reps & weight' do
          result.set.should eq 1
          result.reps.should eq 1
          result.weight.should eq 10
        end
      end
    end

    context 'keys are strings' do
      context 'good set_details' do
       let(:set_details) { good_string_set_details }

        it 'returns an object with the set, reps & weight' do
          result.set.should eq 1
          result.reps.should eq 1
          result.weight.should eq 10
        end
      end
    end

    context 'set_detail is json format' do
      context 'good set details' do
        let(:set_details) { good_json_set_details }

        it 'returns an object with the set, reps & weight' do
          result.set.should eq 1
          result.reps.should eq 1
          result.weight.should eq 10
        end
      end
    end
  end
end

def params
  {"1"=>{"reps"=>"12", "weight"=>"55"}}
end

def filtered_good_data
  [
    { set: 1, 
      reps: 13,
      weight: 80,
      own_workout: true,
      set_details_url: "URL",
    }, { set: 2,
      reps: 10,
      weight: 100,
      own_workout: true,
      set_details_url: "URL",
    }
  ]
end

def bad_data
  {"1"=>"{\"reps\"=>\"13\", \"weight\"=>\"80\"}", "2"=>"{\"reps\"=>\"10\", \"weight\"=>\"SQLITEINJECTION\"}"}
end

def good_symbol_set_details
  "{:set=>1, :reps=>1, :weight=>10}"
end

def good_string_set_details
  "{'set'=>'1', 'reps'=>'1', 'weight'=>'10'}"
end

def good_json_set_details
  "{\"set\"=>\"1\", \"reps\"=>\"1\", \"weight\"=>\"10\"}"
end

class MustacheHelper
  def set_details_url; 'URL'; end
  def own_workout; true; end
end

def good_data
  # {"1"=>"{:reps=>13, :weight=>80}", "2"=>"{:reps=>10, :weight=>100}"}
  {"1"=>"{\"reps\"=>\"13\", \"weight\"=>\"80\"}", "2"=>"{\"reps\"=>\"10\", \"weight\"=>\"100\"}"}
end

def bad_set
  {"a"=>"{:reps=>13, :weight=>80}", "2"=>"{:reps=>10, :weight=>100}"}
end

def filtered_bad_data
  [
    { set: 1, 
      reps: 13,
      weight: 80,
      own_workout: true,
      set_details_url: "URL",
    }, { set: 2,
      reps: 10,
      own_workout: true,
      set_details_url: "URL",
    }
  ]
end

# def filtered_weight_float
#   {"1"=>{:reps=>13, :weight=>80.5}}
# end

# def weight_float
#   {"1"=>"{:reps=>13, :weight=>80.5}"}
# end