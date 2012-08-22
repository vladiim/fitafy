require_relative '../spec_helper'

describe Exercise do
  subject             { Exercise.new }
  let(:valid_subject) { FactoryGirl.create :exercise }

  describe "#exercise_type" do
    it "should have an array of exercise types" do
      Exercise::MUSCLES.should eq %w(abs back biceps chest forearms legs shoulders tricep)
    end
  end

  describe "#tags" do
    describe "#equipment_list" do
      before do
        @equipment = "swordstyle"
        valid_subject.equipment_list = @equipment_list
        valid_subject.save!
      end
  
      it "should be able to set and find equipment_list tags" do
        valid_subject.equipment_list.each do |tag|
          tag.name.should eq @equipment
        end
      end
    end
  
    describe "#muscle_list" do
      before do
        @muscle = "golden_arms"
        valid_subject.muscle_list = @muscle
        valid_subject.save!
      end
  
      it "should be able to set and find muscle_list tags" do
        valid_subject.muscles.each do |muscle|
          muscle.name.should eq @muscle
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

  describe "#validations" do
    context "with valid attributes" do
      it "should be valid" do
        valid_subject.should be_valid
      end
    end

    context "with same name as another exercise" do
      before { valid_subject }
      it     { should validate_uniqueness_of :name }
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
end