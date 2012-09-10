require_relative '../spec_helper'

describe Equipment do
  let(:equipment) { build :equipment }

  describe "#all_names" do
  	let(:equipment_result) { OpenStruct.new name: "EQUIPMENT NAME"}

    before { mock(Equipment).scoped { [equipment_result] } }

    it "returns an array of all the equipment names" do
      Equipment.all_names.should eq ["EQUIPMENT NAME"]
    end
  end
end