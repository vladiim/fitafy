require 'spec_helper'

describe EquipmentProduct do
  let(:subject) { EquipmentProduct.new }

  it { should belong_to :equipment }
  it { should belong_to :product }
end