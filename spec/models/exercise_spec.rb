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

  # describe "#alphabetical_including_muscles" do
  #   before do
  #     ["bbb", "ccc", "aaa"].each do |name|
  #       FactoryGirl.create :exercise, name: name
  #     end
  #   end

  #   context "without muscles" do
  #     it "returns the exercises alphabetically" do
  #       ["aaa", "bbb", "ccc"].each_with_index do |name, index|
  #         Exercise.alphabetical_including_muscles[index].name.should eq name
  #       end
  #     end      
  #   end

  #   context "with muscles" do
  #     before do
  #       ex = Exercise.find_by_name("aaa")
  #       ex.muscle = "legs"
  #       ex.save
  #     end

  #     it "returns the exercises sorted by the muscle" do
  #       Exercise.alphabetical_including_muscles(["legs"]).each do |e|
  #         e.name.should eq "aaa"
  #       end
  #     end
  #   end
  # end

  describe "#equipment_name" do
    context "has equipment" do
      let(:equipment) { OpenStruct.new name: "EQUIPMENT NAME"}

      before { mock(subject).equipment.times(2) { equipment } }

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

  # describe "#muscle_names" do
  #   let(:result) { subject.muscle_names }

  #   it "returns the downcase muscle names" do
  #     result.should eq Exercise::MUSCLES[0].downcase
  #   end
  # end
end