require_relative '../spec_helper'

describe Equipment do
  let(:equipment) { build :equipment }

  describe "#associations" do
    it { should have_many :exercises }
    it { should have_many :equipment_products }
    it { should have_many :products }
  end
end