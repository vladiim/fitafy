require "spec_helper"

describe FavoriteWorkout do
  subject { create :favorite_workout }

  describe "#associations" do
    it { should belong_to :user }
    it { should belong_to :workout }
  end

  describe "#validations" do
    it { should validate_presence_of :user }
    it { should validate_presence_of :workout }
  end
end