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
    context "with valid attributes" do
      it "should be valid" do
        valid_subject.should be_valid
      end
    end

    context "with same name as another exercise" do
      it     { valid_subject.should validate_uniqueness_of :name }
    end

    context "without name" do
       it "shouldn't be valid" do
         valid_subject.name = nil
         valid_subject.should_not be_valid
       end
     end

     context "without description" do
       it "shouldn't be valid" do
         valid_subject.description = nil
         valid_subject.should_not be_valid
       end
     end
  end

  describe "#exercise_type" do
    it "should have an array of exercise types" do
      Exercise::MUSCLES.should eq %w(abs back biceps chest forearms legs shoulders tricep)
    end
  end

  describe "#tags" do
    # describe "#equipment_list" do
    #   before do
    #     valid_subject.equipment_list = "swordstyle"
    #     valid_subject.save!
    #   end
  
    #   it "should be able to set and find equipment_list tags" do
    #     valid_subject.equipment_list.each do |tag|
    #       tag.should eq "swordstyle"
    #     end
    #   end
    # end
  
    describe "#muscle_list" do
      before do
        valid_subject.muscle_list = "golden_arms"
        valid_subject.save!
      end
  
      it "should be able to set and find muscle_list tags" do
        valid_subject.muscles.each do |muscle|
          muscle.name.should eq "golden_arms"
        end
      end
    end
  end

  describe "#with_tags" do
    context "with categories variable" do
      before do
        valid_subject.muscle_list = "tag"
        valid_subject.save!
      end

      it "should return the exercise with the variable" do
        Exercise.with_tags("tag").should eq [valid_subject]
      end
    end

    context "without categories variable" do
      it "should return all exercises" do
        Exercise.with_tags.should eq Exercise.all
      end
    end
  end

  describe "#by_alphabetical_tags" do
    before do
      ["bbb", "ccc", "aaa"].each do |name|
        FactoryGirl.create :exercise, name: name
      end
    end

    it "should return the exercises by alphabetical category" do
      ["aaa", "bbb", "ccc"].each_with_index do |name, index|
        Exercise.by_alphabetical_tags[index].name.should eq name
      end
    end
  end

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

    before { mock(Equipment).scoped { equipment } }

    it "lists all the equipment" do
      subject.equipment_list.should eq "EQUIPMENT LIST"
    end
  end
end