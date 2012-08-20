require_relative '../spec_helper'

describe Exercise do
  subject             { Exercise.new }
  let(:valid_subject) { FactoryGirl.create :exercise }

  describe "#exercise_type" do
    it "should have an array of exercise types" do
      Exercise::EXERCISE_TYPES.should eq %w(abs back biceps chest forearms legs shoulders tricep)
    end
  end

  describe "#alphabetical_order" do
    before do
      @b = FactoryGirl.create :exercise, name: "BBBB"
      @c = FactoryGirl.create :exercise, name: "CCCC"
      @a = FactoryGirl.create :exercise, name: "AAAA"
    end
    it "should return an exercise list in alphabetical order" do
      Exercise.alphabetical_order.should eq [@a, @b, @c]
    end
  end

  describe "#tags" do
    before do
      @tags = "mef"
      valid_subject.tag_list = @tags
      valid_subject.save!
    end

    it "should be able to set and find tags" do
      valid_subject.tags.each do |tag|
        tag.name.should eq @tags
      end
    end
  end

  describe "#equipment_list" do
    before do
      @equipment = "swordstyle"
      valid_subject.equipment_list = @equipment_list
      valid_subject.save!
    end
    it "should be able to set and find equipment_list" do
      valid_subject.equipment_list.each do |tag|
        tag.name.should eq @equipment
      end
    end
  end

  # describe "#category_list" do
  #   it "should be able to set and find category tags" do
  #     list = %w{i came to bring the pain hardcore to the brain}
  #     subject.categories_list = "i came to bring the pain hardcore to the brain"
  #     subject.categories_list.should eq list
  #     subject.tags.should eq list
  #   end
  # end

  describe "#by_category" do
    let(:ab_exercises) { Object.new }
    before { mock(Exercise).where("categories ILIKE ?", "%abs%") { ab_exercises } }

    it "should return a list of exercises by category" do
      Exercise.by_category("abs").should eq ab_exercises
    end
  end

  describe "#by_alphabetical_category" do
    let(:alphabetical_abs) { Object.new }
    before do
      mock(Exercise).by_category("abs") { alphabetical_abs }
      mock(alphabetical_abs).alphabetical_order { alphabetical_abs }
    end

    it "should return the exercises by alphabetical category" do
      Exercise.by_alphabetical_category("abs").should eq alphabetical_abs
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