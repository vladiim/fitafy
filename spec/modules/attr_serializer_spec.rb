require_relative '../spec_helper_lite'
require_relative '../../lib/modules/attr_serializer'

describe AttrSerializer do

  let(:constants) { [:i, :came, :to] }

  describe "#serialized_attr_accessor" do
    it "should iterate through constants and pass them to a getter and setter" do
      mock(subject).serialized_getter
      mock(subject).serialized_setter
      subject.serialized_attr_accessor(constants).should be
    end
  end
end