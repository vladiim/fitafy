require_relative '../spec_helper'

describe User do
  subject { create_valid_user }

  def create_valid_user
    User.new(username:     			 "chef",
             email:        			 "lex@diamond.com",
             password: 				 "immobilarity",
             password_confirmation:   "immobilarity"
    )
  end

  describe "trainer?" do

    it "should save the user as a trainer" do
      subject.save!
      subject.should be_trainer
    end

    context "user is a trainer" do
      before { mock(subject).role { "trainer" } }

      it "should be true" do
        subject.trainer?.should be
      end
    end

    context "user is not a trainer" do
      it "should be false" do
        subject.trainer?.should be_false
      end
    end
  end

  describe "abilities" do
  	subject 	  { ability }
  	let(:ability) { Ability.new(user) }

    context "admin" do
      let(:user) { create_valid_user }
      before do
      	mock(user).trainer? { false }
      	mock(user).admin?   { true }
      end

	  it { should be_able_to(:manage, Workout.new) }
      it { should be_able_to(:manage, Exercise.new) }
    end

    context "trainer" do
      let(:user) { create_valid_user }
      before do
      	mock(user).trainer? { true }
      	mock(user).trainer? { false }
      end

      it 		 { should be_able_to(:manage, Workout.new) }
      it         { should_not be_able_to(:manage, Exercise.new) }
    end

    context "client" do
      let(:user) { User.new }
      before do
      	mock(user).trainer? { false }
      	mock(user).admin?	{ false }
      end

      it         { should be_able_to(:read, :all) }
      it         { should_not be_able_to(:manage, Workout.new) }
      it         { should_not be_able_to(:manage, Exercise.new) }
    end
  end
end