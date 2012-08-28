require_relative "../spec_helper_lite"
require_relative '../../app/helpers/tags_helper'

describe "TagsHelper" do
  let(:helper) { Object.new.extend TagsHelper }
  let(:result) { helper.link_to_tag "abs" }

  describe "#link_to_tag" do

    context "without current_filter" do
      before { mock(helper).params { { sort: false } } }
      it "links to the current page" do
        mock(helper).link_to(anything, anything) { "CURRENT PAGE" }
        result.should eq "CURRENT PAGE"
      end
  
      it "appends the uppercase tag name to the current url" do
        mock(helper).link_to anything, sort: ["abs"]
        helper.link_to_tag "abs"
      end
  
      it "uses an uppercase tag name as the link text" do
        mock(helper).link_to "ABS", anything
        helper.link_to_tag "abs"
      end
    end

    context "with current_filter" do
      it "includes the current_filter" do
        mock(helper).link_to anything, sort: ["chest", "abs", "shoulders"]
        mock(helper).params.times(2) { { sort: ["abs", "shoulders"] } }
        helper.link_to_tag "chest"
      end
    end
  end

  describe "#link_to_remove_tag" do
    context "without current_filter" do
      it "creates a blank link" do
        mock(helper).link_to anything, sort: []
        mock(helper).params { { sort: nil } }
        helper.link_to_remove_tag "abs"
      end      
    end

    context "with tag in current_filter" do
      it "removes the tag from the filter" do
        mock(helper).link_to anything, sort: ["chest"]
        mock(helper).params.times(2) { { sort: ["chest", "abs"] } }
        helper.link_to_remove_tag "abs"
      end
    end
  end

  describe "#add_param_tags_to_filter" do
    it "creates an array of filter tags" do
      mock(helper).params { { sort: ['chest'] } } 
      helper.add_param_tags_to_filter([]).should eq ['chest']
    end
  end
end