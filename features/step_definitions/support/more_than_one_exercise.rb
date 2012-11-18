Given /^more than one exercise$/ do
  @push_up = create :exercise, name: "push up", muscle: "abs, biceps"
  @chin_up = create :exercise, name: "chin up", muscle: "abs, biceps"
  @dips    = create :exercise, name: "dips",    muscle: "biceps, shoulders"
end