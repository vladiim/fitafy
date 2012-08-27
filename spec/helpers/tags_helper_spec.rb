require_relative "../spec_helper_lite"
require_relative '../../app/helpers/tags_helper'

describe "TagsHelper" do
  let(:helper) { Object.new.extend TagsHelper }

  describe "#link_to_tag" do
  	let(:result) { helper.link_to_tag "abs" }

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
end