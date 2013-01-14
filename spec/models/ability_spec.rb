require 'spec_helper'

describe Ability do
	subject    { Ability.new(user) }
  let(:user) { build_stubbed :user }

  context "staff" do

    before { mock(user).staff? { true } }

    it { should be_able_to(:manage, (build :workout, user: user)) }
    it { should be_able_to(:manage, Exercise.new) }
    it { should be_able_to(:manage, (build :favorite_workout, user: user)) }
  end

  context "admin" do

    before do
      mock(user).staff?   { false }
    	mock(user).trainer? { false }
    	mock(user).admin?   { true }
    end

    it { should be_able_to(:manage, (build :workout, user: user)) }
    it { should be_able_to(:manage, Exercise.new) }
    it { should be_able_to(:manage, (build :favorite_workout, user: user)) }
  end

  context "trainer" do
    let(:user) { create :user }
    before do
      mock(user).staff?   { false }
      mock(user).trainer? { true }
    end

    it { should be_able_to(:manage, (build :workout, user: user)) }
    it { should_not be_able_to(:manage, Exercise.new) }
    it { should be_able_to(:manage, (build :favorite_workout, user: user)) }
  end

  context "client" do
    let(:user) { User.new }
    before do
      mock(user).staff?   { false }
    	mock(user).trainer? { false }
    	mock(user).admin?	  { false }
    end

    it { should be_able_to(:read, :all) }
    it { should_not be_able_to(:manage, Workout.new) }
    it { should_not be_able_to(:manage, Exercise.new) }
    it { should_not be_able_to(:manage, FavoriteWorkout.new) }
  end
end