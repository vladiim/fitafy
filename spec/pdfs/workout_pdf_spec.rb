require 'spec_helper'

describe WorkoutPdf do
  let(:workout) { OpenStruct.new name: "8 diagrams" }
  let(:pdf)     { WorkoutPdf.new workout }

  describe "#workout_name" do

    it "sends the workout's name to prawn" do
      mock(pdf).text(workout.name.upcase, anything) { workout.name.upcase }
      pdf.workout_name.should eq "8 DIAGRAMS"
    end
  end

  describe "#exercise_table" do

    it "combines the header and rows" do
      mock(pdf).exercise_header { [["HEADER"]] }
      mock(pdf).exercise_rows   { [["ROWS"]] }
      pdf.exercise_table.should eq [["HEADER"], ["ROWS"]]
    end
  end

  describe "#exercise_header" do
    it "returns a 2D array of the workout header titles" do
      pdf.exercise_header.should eq [["EXERCISE", "SETS", "INSTRUCTIONS", "NOTES"]]
    end
  end

  describe "#exercise_rows" do
  	let(:exercise)         { OpenStruct.new name: "exercise name" }
  	let(:workout_exercise) { OpenStruct.new exercise_id: 1,
  											sets:        "sets",
  	                                        notes:       "notes"}

    before do
      mock(workout).workout_exercises { [workout_exercise] }
      mock(Exercise).find(1)          { exercise }
    end

    it "returns a 2D array of the workout_exercise details" do
      pdf.exercise_rows.should eq [["exercise name", "sets", "notes", ""]]
    end
  end

  describe "#render_details" do
  	it "creates a hash of details to render the file" do
  	  details = { filename: "workout_8_diagrams.pdf", type: "application/pdf", disposition: "inline" }
  	  pdf.render_details.should eq details
  	end
  end
end