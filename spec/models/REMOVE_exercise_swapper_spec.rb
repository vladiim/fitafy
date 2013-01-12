# require_relative "../spec_helper"

# describe ExerciseSwapper do
#   let(:workout) { build :workout }
#   let(:w_e_1)   { build :workout_exercise, order_number: 1, workout: workout }
#   let(:w_e_2)   { build :workout_exercise, order_number: 2, workout: workout }
#   let(:params)  { {"order_number"=>"1"} }

#   let(:updater) { ExerciseSwapper.new(w_e_2, params) }

#   context "with old_workout_exercise" do
#     before { mock(workout).workout_exercises { [w_e_1, w_e_2] }}
#     describe ".initialize" do
#       it "sets the workout_exercise, params and other_workout as variables" do
#         updater.workout_exercise.should eq w_e_2
#         updater.order_number.should eq 1
#         updater.old_workout_exercise.should eq w_e_1
#       end
#     end

#     describe "#swap_positions" do
#       before { w_e_1.save! && w_e_2.save! && updater.swap_positions! }

#       context "with old_workout_exercise" do
#         it "should swap the order numbers" do
#           w_e_1.order_number.should eq 2
#           w_e_2.order_number.should eq 1
#         end
#       end
#     end
#   end

#   context "no old_workout_exercise" do
#     let(:updater) { ExerciseSwapper.new(w_e_1, params) }
#     before { updater.swap_positions! }

#     it "saves the original workout" do
#       w_e_1.order_number.should eq 1
#       w_e_2.order_number.should eq 2
#     end
#   end
# end