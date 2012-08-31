require 'spec_helper'

describe WorkoutPdf do
    let(:workout) { OpenStruct.new name: "8 diagrams" }
    subject       { WorkoutPdf.new workout }

  describe "#workout_name" do

    it "sends the workout's name to prawn" do
      any_instance_of Prawn::Document.should_receive(:text).with(workout.name.titleize)
    end
  end
end