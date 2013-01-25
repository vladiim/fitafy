require_relative '../spec_helper'

describe Exercise do
  subject             { build :exercise }
  let(:valid_subject) { create :exercise }

  describe "#associations" do
    it { should have_many :workout_exercises }
    it { should have_many :workouts }
    it { should belong_to :equipment }
  end

  describe "#validations" do
    it { should ensure_inclusion_of(:muscle).in_array(Exercise::MUSCLES) }
    it { should ensure_inclusion_of(:category).in_array(Exercise::CATEGORIES) }
    it { should validate_uniqueness_of :name }
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
  end

  describe '.filter_by_muscle' do
    context 'with muscle' do
      let(:result)   { Exercise.filter_by_muscle('chest') }

      it 'finds the exercise' do
        exercise = create :exercise, muscle: 'chest'
        result.should eq [exercise]
      end
    end

    context 'without muscle' do
      let(:result)   { Exercise.filter_by_muscle }

      it 'returns all the muscles' do
        result.should eq Exercise.scoped.limit(10)
      end
    end
  end

  describe '.index_title' do
    context 'no muscle' do
      let(:result) { Exercise.index_title }

      it 'returns All Exercises' do
        result.should eq 'All Exercises'
      end
    end

    context 'muscle provided' do
      let(:result) { Exercise.index_title('chest') }

      it 'returns Chest Exercises' do
        result.should eq 'Chest Exercises'
      end
    end
  end

  describe "#equipment_name" do
    context "has equipment" do
      let(:equipment) { OpenStruct.new name: "EQUIPMENT NAME"}

      before { mock(subject).equipment.times(3) { equipment } }

      it "returns the exercise's equipment name" do
        subject.equipment_name.should eq "EQUIPMENT NAME"
      end
    end

    context "doesn't have equipment" do
      before { mock(subject).equipment { nil } }

      it "returns a message" do
        subject.equipment_name.should eq "no equipment yo"
      end
    end
  end

  describe "#equipment_list" do
    let(:equipment) { "EQUIPMENT LIST" }

    before { mock(Equipment).all { equipment } }

    it "lists all the equipment" do
      subject.equipment_list.should eq "EQUIPMENT LIST"
    end
  end
end