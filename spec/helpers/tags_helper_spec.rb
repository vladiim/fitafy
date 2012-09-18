require_relative "../spec_helper_lite"
require_relative '../../app/helpers/tags_helper'

describe "TagsHelper" do
  let(:helper)   { Object.new.extend TagsHelper }
  let(:result)   { helper.link_to_tag "abs", :muscles }

  describe "#link_to_tag" do

    context "without current_filter" do
      before { mock(helper).params { { sort: false } } }

      it "links to the current page" do
        mock(helper).link_to(anything, anything, anything) { "CURRENT PAGE" }
        result.should eq "CURRENT PAGE"
      end
  
      it "appends the uppercase tag name to the current url" do
        mock(helper).link_to anything, { muscles: ["abs"] }, anything
        helper.link_to_tag "abs", :muscles
      end
  
      it "uses an uppercase tag name as the link text" do
        mock(helper).link_to "ABS", anything, anything
        helper.link_to_tag "abs", :muscles
      end

      context "with any tag/tag_type" do
        let(:result)   { helper.link_to_tag "dumbbells", :equipment }

        it "renders the correct link" do
          mock(helper).link_to "DUMBBELLS", { equipment: ["dumbbells"] }, anything
          helper.link_to_tag "dumbbells", :equipment
        end
      end
    end

    context "with current_filter" do

      it "includes the current_filter" do
        mock(helper).link_to anything, { muscles: ["chest", "abs", "shoulders"] }, anything
        mock(helper).params.times(2) { { muscles: ["abs", "shoulders"] } }
        helper.link_to_tag "chest", :muscles
      end
    end
  end

  describe "#link_to_remove_tag" do

    context "without current_filter" do
      it "creates a blank link" do
        mock(helper).link_to anything, muscles: []
        mock(helper).params { { muscles: nil } }
        helper.link_to_remove_tag "abs", :muscles
      end      
    end

    context "with tag in current_filter" do

      it "removes the tag from the filter" do
        mock(helper).link_to anything, muscles: ["chest"]
        mock(helper).params.times(2) { { muscles: ["chest", "abs"] } }
        helper.link_to_remove_tag "abs", :muscles
      end
    end
  end

  describe "#add_param_tags_to_filter" do

    it "creates an array of filter tags" do
      mock(helper).params { { muscles: ['chest'] } } 
      helper.add_param_tags_to_filter([], :muscles).should eq ['chest']
    end
  end
end