require_relative "../spec_helper_lite"
require_relative '../../app/helpers/tags_helper'

describe 'TagsHelper' do
  let(:helper)   { Object.new.extend TagsHelper }

  describe "#link_to_single_param_tags" do
    let(:result) { helper.link_to_single_param_tags "abs" }
    before { mock(helper).link_to("ABS", "#", anything) { "SINGLE TAG" } }

    it "renders the tag" do
      result.should eq "SINGLE TAG"
    end
  end

  describe '#link_to_muscle_tag' do
    let(:muscle)   { 'chest' }

    context 'without a workout' do
      let(:result) { helper.link_to_muscle_tag(muscle) }
      before { mock(helper).link_to('CHEST', '/exercises?muscle=chest') { 'EXERCISES URL' } }

      it 'generates an /exercises url' do
        result.should eq 'EXERCISES URL'
      end
    end

    context 'with a workout passed in' do
      let(:workout) { OpenStruct.new id: 1 }
      let(:result)  { helper.link_to_muscle_tag(muscle, workout) }
      before { mock(helper).link_to('CHEST', '/new_workout_exercises?muscle=chest&workout_id=1') { 'NEW WORKOUT EXERCISE URL' } }

      it 'generates a /new_workout_exercise url' do
        result.should eq 'NEW WORKOUT EXERCISE URL'
      end
    end
  end
end