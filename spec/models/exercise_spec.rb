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
    # before { @exercise = create_valid_exercise }
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