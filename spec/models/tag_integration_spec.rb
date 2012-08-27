require_relative "../spec_helper"

describe "tagging" do
  describe "querying for multiple tags" do
    let!(:push_up) { create :exercise, name: "push up", muscle_list: "foo, bar" }
    let!(:chin_up) { create :exercise, name: "chin up", muscle_list: "bar, baz" }
    let!(:dips)    { create :exercise, name: "dips", muscle_list: "bar, boo" }

    specify "filters by the given tags" do
      
    end
  end
end