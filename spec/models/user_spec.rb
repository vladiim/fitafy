require_relative '../spec_helper'

describe User do
  subject { build_stubbed :user }

  describe "#associations" do
    it { should have_many :workouts }
    it { should have_many :favorite_workouts }
    it { should belong_to :facebook_user }
  end

  describe "validations" do
    subject { build :user }

    it { should validate_presence_of :username }

    context "facebook_user" do
      before { mock(subject).facebook_user? true }
      it { should_not validate_uniqueness_of :username }
    end

    context "not facebook_user" do
      before { mock(subject).facebook_user? false }
      it { should validate_uniqueness_of :username }
    end
  end

  describe "#create_account" do
    let(:result)        { trainer.create_account }
    let(:trainer)       { build :trainer }
    let(:welcome_email) { Object.new }

    context "saves successfully" do
      before do
        mock(UserMailer).sign_up_welcome(trainer) { welcome_email }
        mock(welcome_email).deliver { welcome_email }
      end

      it "saves the user and sends them an email" do
        result.should be
        User.last.should eq trainer
      end
    end

    context "doesn't save successfully" do
      before { mock(trainer).save { false } }

      it "returns false" do
        result.should eq false
      end
    end
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
    let(:user) { build :user }

    it "should save the user as a trainer" do
      user.save!
      user.should be_trainer
    end

    context "user is a trainer" do
      before { mock(user).role { "trainer" } }

      it "should be true" do
        user.trainer?.should be
      end
    end

    context "user is not a trainer" do
      before { mock(user).role { "client" } }

      it "should be false" do
        user.trainer?.should be_false
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
    let(:user)    { build :trainer }

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

  describe "#my_workouts" do
    context "no tags" do
      let(:workout) { Object.new }
      before        { mock(subject).workouts { [workout] } }

      it "should return all the user's workouts" do
        subject.my_workouts.should eq [workout]
      end      
    end

    context "with favorite tags" do
      let(:params)            { OpenStruct.new tags: "favorite" }
      let(:favorite_workouts) { Object.new }

      before do
        mock(subject).favorite_workouts { favorite_workouts }
        mock(subject).workouts_from_favorites(favorite_workouts) { favorite_workouts }
      end

       it "returns the favorite workouts" do
         subject.my_workouts(params).should eq favorite_workouts
       end
    end
  end

  describe "#workouts_from_favorites" do
    let(:workout)           { Object.new }
    let(:favorite_workout)  { OpenStruct.new workout_id: 1 }
    let(:favorite_workouts) { [favorite_workout]}

    before do
      mock(Workout).find(1) { workout }
    end

    it "returns an array of workouts from an array of favorites" do
      subject.workouts_from_favorites(favorite_workouts).should eq [workout]
    end
  end

  describe "abilities" do
  	subject    { Ability.new(user) }
    let(:user) { build_stubbed :user }

    context "admin" do

      before do
      	mock(user).trainer? { false }
      	mock(user).admin?   { true }
      end

	    it { should be_able_to(:manage, (build :workout, user: user)) }
      it { should be_able_to(:manage, Exercise.new) }
      it { should be_able_to(:manage, (build :favorite_workout, user: user)) }
    end

    context "trainer" do
      let(:user) { create :user }
      before     { mock(user).trainer? { true } }

      it { should be_able_to(:manage, (build :workout, user: user)) }
      it { should_not be_able_to(:manage, Exercise.new) }
      it { should be_able_to(:manage, (build :favorite_workout, user: user)) }
    end

    context "client" do
      let(:user) { User.new }
      before do
      	mock(user).trainer? { false }
      	mock(user).admin?	{ false }
      end

      it { should be_able_to(:read, :all) }
      it { should_not be_able_to(:manage, Workout.new) }
      it { should_not be_able_to(:manage, Exercise.new) }
      it { should_not be_able_to(:manage, FavoriteWorkout.new) }
    end
  end

  describe "#count_favorite_workouts" do
    it "counts the user's favorite workouts" do
      mock(subject.favorite_workouts).count { 3 }
      subject.count_favorite_workouts.should eq 3
    end
  end

  describe "#has_favorite_workouts?" do
    context "no favorite workouts" do
      before { mock(subject).favorite_workouts { [] } }

      it "returns false" do
        subject.has_favorite_workouts?.should eq false
      end
    end

    context "with favorite workouts" do
      let(:workout) { Object.new }
      before { mock(subject).favorite_workouts { [workout] } }

      it "returns false" do
        subject.has_favorite_workouts?.should eq true
      end
    end
  end

  describe "#build_favorite_workout" do
    let(:user)        { build :user }
    let(:workout_id)  { 1 }
    let(:workout)     { Object.new }
    before            { user.save! }

    it "builds a new favorite workout" do
      favorite_workout = user.build_favorite_workout workout_id
      favorite_workout.user_id.should eq user.id
      favorite_workout.workout_id.should eq 1
    end
  end

  describe "#workout_in_favorites?" do
    let(:workout) { OpenStruct.new id: 1 }

    context "workout is in favorites" do
      let(:favorite_workout) { OpenStruct.new user_id: subject.id, workout_id: workout.id }
      before { mock(subject).favorite_workouts { [favorite_workout] } }
  
      it "returns true" do
        subject.workout_in_favorites?(workout).should eq true
      end
    end

    context "workout is not in favorites" do
      let(:favorite_workout) { OpenStruct.new user_id: subject.id, workout_id: 2 }
      before { mock(subject).favorite_workouts { [favorite_workout] } }
  
      it "returns false" do
        subject.workout_in_favorites?(workout).should eq false
      end
    end
  end

  describe "#find_favorite_workout" do
    let(:workout_id)       { 1 }
    let(:favorite_workout) { OpenStruct.new workout_id: workout_id }

    context "user has favorited workout" do
      before { mock(subject).favorite_workouts { [favorite_workout] } }
  
      it "returns the workout" do
        subject.find_favorite_workout(workout_id).should eq favorite_workout
      end      
    end

    context "user hasn't favorited workout" do
      # before { mock(subject).favorite_workouts { [] } }

      it "raises an error" do
        # subject.find_favorite_workout(workout_id).should raise_error(RuntimeError, "#{subject.username} hasn't favorited that workout")
      end
    end
  end

  describe "#facebook_user?" do
    let(:result) { subject.facebook_user? }

    context "user is facebook_user" do
      before { mock(FacebookUser).find_by_user_id(subject.id) { true } }

      it "returns true" do
        result.should eq true
      end
    end

    context "user is not facebook_user" do
      before { mock(FacebookUser).find_by_user_id(subject.id) { nil } }

      it "returns true" do
        result.should eq false
      end
    end
  end
end