require_relative '../spec_helper'

describe User do
  subject { create_valid_user }

  def create_valid_user
    User.new(username:     			    "chef",
             email:        			    "lex@diamond.com",
             password: 				      "immobilarity",
             password_confirmation: "immobilarity"
    )
  end

  describe "#build_workout" do
    let(:params)  { OpenStruct.new user_id: subject.username }
    let(:workout) { Object.new }

    context "with params" do
      before do
        mock(params).merge(user_id: subject.id) { subject }
        mock(subject.workouts).build(params)    { workout }
      end

      it "should return a workout with the params and user_id" do
        subject.build_workout(params).should eq workout
      end
    end

    context "without params" do
      before { mock(subject.workouts).build(user_id: subject.id) { workout } }
      it "should return a workout" do
        subject.build_workout.should eq workout
      end
    end
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

  describe "admin?" do
    context "user is an admin" do
      before { mock(subject).role { "admin" } }

      it "should be true" do
        subject.admin?.should be
      end
    end

    context "user is not an admin" do
      it "should be false" do
        subject.admin?.should be_false
      end
    end
  end

  describe "#workouts_count" do
    before { mock(subject.workouts).count { 3 } }
    it "should count the number of workouts" do
      subject.workouts_count.should eq 3
    end
  end

  describe "#copy_workout" do
    let(:workout) { OpenStruct.new(name: "capadona", description: "the struggle")}
    let(:user)    { subject.dup }

    before do
      user.save!
      mock(workout).dup          { workout }
      mock(workout).save!        { workout }
      mock(workout).copy_workout_exercises(workout) { true }
    end

    it "should copy a workout to itself" do
      subject.copy_workout(workout).should be
    end
  end

  describe "#all_workouts" do
    let(:workout) { Object.new }
    before { mock(subject).workouts { [workout] } }
    it "should return all the user's workouts" do
      subject.all_workouts.should eq [workout]
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
      before     { mock(user).trainer? { true } }

      it 		 { should be_able_to(:manage, Workout.new) }
      it     { should_not be_able_to(:manage, Exercise.new) }
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