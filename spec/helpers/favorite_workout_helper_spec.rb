require_relative '../spec_helper_lite'
require_relative '../../app/helpers/favorite_workout_helper'

describe "FavoriteWorkoutHelper" do
  let(:helper)  { Object.new.extend FavoriteWorkoutHelper }
  let(:workout) { OpenStruct.new id: 1 }

  describe "#link_to_favorite_workout" do

    context "workout is alread favorte" do
      let(:trainer)          { Object.new }
      let(:favorite_workout) { Object.new }
      let(:unfavorite_link)  { "UNFAVORITE LINK" }

      before do
        mock(trainer).workout_in_favorites?(workout) { true }
        mock(trainer).find_favorite_workout(workout.id) { favorite_workout }
        mock(helper).link_to_unfavorite_workout(favorite_workout) { unfavorite_link }
      end

      it "creates unfavorite link" do
        helper.link_to_favorite_workout(trainer, workout).should eq "UNFAVORITE LINK"
      end
    end

    context "trainer logged in" do
      let(:trainer) { true }

      before do
        mock(trainer).workout_in_favorites?(workout) { false }
        mock(helper).create_favorite_workout_link(workout) { "FAVORITE WORKOUT LINK" }
      end

      it "creates a link to create a favorte workout" do
        helper.link_to_favorite_workout(trainer, workout).should eq "FAVORITE WORKOUT LINK"
      end
    end

    context "not trainer" do
      let(:trainer) { nil }
      before { mock(helper).redirect_to_sign_up_link { "REDIRECT LINK" } }

      it "creates link to redirect the user to sign up" do
        helper.link_to_favorite_workout(trainer, workout).should eq "REDIRECT LINK"
      end
    end
  end

  describe "#create_favorite_workout_link" do
    before do
      mock(helper).favorite_workouts_path({workout_id: workout.id})
      mock(helper).link_to(anything, anything, anything) { "FAVORITE LINK"}
    end

    it "creates a create favorite workout link with the workout's id" do
      helper.create_favorite_workout_link(workout).should eq "FAVORITE LINK"
    end
  end

  describe "#redirect_to_sign_up_link" do
  	before do
  	  mock(helper).favorite_workouts_redirect_path
  	  mock(helper).link_to(anything, anything, anything) { "REDIRECT LINK" }
  	end

    it "redirects through favorite workouts controller" do
      helper.redirect_to_sign_up_link.should eq "REDIRECT LINK"
    end
  end

  describe "#link_to_unfavorite_workout" do
    let(:unfavorite_link) { "UNFAVORITE LINK" }

    before do
      mock(helper).favorite_workout_path({id: 1})
      mock(helper).link_to("REMOVE FROM FAVORITES", anything, anything) { unfavorite_link }
    end

    it "creates a link to remove the workout from favorites" do
      helper.link_to_unfavorite_workout(workout).should eq "UNFAVORITE LINK"
    end
  end

  describe "#title" do
    it "returns add to favorites" do
      helper.title.should eq "ADD TO FAVORITES"
    end
  end

  describe "#class" do
    it "returns the bootstrap class" do
      helper.bootstrap_class.should eq "btn btn-inverse button_space"
    end
  end
end